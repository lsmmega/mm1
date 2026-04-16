_load_cwu_01p_wily_machine_1:
@flash:
	LDA z:zpalette_update_flag
	BEQ @next_1
	JSR _sprites
	JSR _nmi_wait
	JMP @flash

@next_1:
	LDA z:zcurrent_stage
	CMP #$09
	BEQ @is_wily_machine_1

@common:
	JSR _boss_hp_filled_regular
	LDA #$3F
	STA z:zboss_move_timer
	LDA #$05
	STA z:zboss_ai_pointer
	LDA #$00
	STA z:zjoy1_pressed
	RTS

@is_wily_machine_1:
	LDA #$03
	STA z:ztiles_bankswitch
	LDA #$B8
	LDX #$19
	LDY #$38
	JSR _tiles_update
	DEC z:ztiles_bankswitch
	LDA #$BB
	LDX #$12
	LDY #$10
	JSR _tiles_update
	bankswitchz $05
	LDX #$07
	LDA #$0F

@loop_1:
	STA abackground_palette_original + 4, X
	DEX
	BPL @loop_1
	JSR _update_background_palette
	LDA #$0C
	STA z:ztiles_address
	LDX #$00

@loop_3:
	LDY $8EA1, X
	STY z:zobject_tiles_update_size
	INY
	INY
	STY z:z0C
	INX
	LDY #$00

@loop_2:
	LDA $8EA1, X
	STA aobject_ppu_address, Y
	INX
	INY
	CPY z:z0C
	BNE @loop_2
	STX z:zobject_pointer
	JSR _sprites
	JSR _nmi_wait
	LDX z:zobject_pointer
	DEC z:ztiles_address
	BNE @loop_3
	LDA #$00
	STA z:zobject_ram_index
	LDX #$10

@loop_4:
	JSR _generate_object_common
	TXA
	AND #%00001111
	TAY
	LDA @wily_machine_1_move_object_id_table, Y
	STA aobject_pointer, X
	LDA #$08
	STA aobject_xcoord, X
	LDA @wily_machine_1_move_object_ycoord_table, Y
	STA aobject_ycoord, X
	LDY #$94
	JSR _object_speed_init
	INX
	CPX #$12
	BNE @loop_4

@loop_5:
	JSR $98EA
	LDA aobject_xcoord + 16
	CMP #$AB
	BCS @next_2
	JSR _sprites
	JSR _nmi_wait
	JMP @loop_5

@next_2:
	LDX #$10

@loop_6:
	LDA #$AC
	STA aobject_xcoord, X
	LDA #$02
	STA aobject_flag, X
	LDY #$08
	JSR _object_speed_init
	INX
	CPX #$12
	BNE @loop_6
	LDY #$00
	STA z:zobject_ram_index
	LDX #$12

@loop_7:
	STY z:z0C
	JSR _generate_object_common
	LDY #$08
	JSR _object_speed_init
	LDY z:z0C
	LDA @wily_machine_1_show_object_id_table, Y
	STA aobject_pointer, X
	LDA @wily_machine_1_show_object_xcoord_table, Y
	STA aobject_xcoord, X
	LDA @wily_machine_1_show_object_ycoord_table, Y
	STA aobject_ycoord, X
	LDA #can_collide_megaman
	STA aobject_flag, X
	INY
	INX
	CPX #$16
	BNE @loop_7
	INC aobject_frozen_timer + 17
	LDA #$7F
	STA z:ztimer

@loop_9:
	LDA z:ztimer
	AND #%00011111
	BNE @skip
	LDA z:ztimer
	LSR
	LSR
	TAX
	LDY #$00

@loop_8:
	LDA @show_wily_machine_1_palette_table, X
	STA abackground_palette_original + 4, Y
	INY
	INX
	CPY #$08
	BNE @loop_8
	JSR _update_background_palette
	LDA z:ztimer
	CMP #$60
	BNE @skip
	LDX #$01
	JSR _generate_object_common
	LDA #$7E
	STA aobject_pointer + 1
	LDA #$00
	STA aboss_hp
	LDA #can_collide_megaman | can_collide_megaman_bullet
	STA aobject_flag + 1
	LDA #$84
	STA aobject_xcoord + 1
	LDA #$87
	STA aobject_ycoord + 1
	LDY #$08
	JSR _object_speed_init

@skip:
	JSR _sprites
	JSR _nmi_wait
	DEC z:ztimer
	BPL @loop_9
	LDA #$F8
	STA aobject_ycoord + 17
	JMP @common

@wily_machine_1_move_object_id_table:
	.BYTE $74, $75

@wily_machine_1_move_object_ycoord_table:
	.BYTE $46, $55

@show_wily_machine_1_palette_table:
;4
	.BYTE black, light_red,   white_red,    black
	.BYTE black, dark_orange, pale_orange,  light_orange

;3
	.BYTE black, dark_red,    light_red,    black
	.BYTE black, dark_orange, white_orange, dark_orange

;2
	.BYTE black, black,       dark_red,     black
	.BYTE black, black,       light_orange, black

;1
	.BYTE black, black,       black,        black
	.BYTE black, black,       dark_orange,  black

@wily_machine_1_show_object_id_table:
	.BYTE $80, $81, $82, $7F

@wily_machine_1_show_object_xcoord_table:
	.BYTE $AC, $B4, $C4, $D8

@wily_machine_1_show_object_ycoord_table:
	.BYTE $7B, $63, $93, $77
