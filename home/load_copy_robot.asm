_load_copy_robot:
	LDA aobject_pointer
	BEQ @flash
	RTS

@flash:
	LDA z:zpalette_update_flag
	BEQ @move_megaman
	JSR _nmi_wait
	JMP @flash

@move_megaman:
	LDA #objects_right
	STA aobject_flag
	CLC
	LDA aobject_xcoord
	ADC #$01
	STA aobject_xcoord
	CMP #$50
	BEQ @next
	JSR _sprites
	JSR _nmi_wait
	JMP @move_megaman

@telebeam_xcoord_table:
	.BYTE $50, $B0

@next:
	LDA #$80
	JSR _sprites_timer
	LDX #$00
	STX z:zobject_ram_index
	INX
	STX z:z0C
	LDX #$10

@loop_1:
	LDA #$00
	JSR _generate_object_common
	LDY #$08
	JSR _object_speed_init
	LDA #$00
	STA aobject_flag, X
	LDY z:z0C
	LDA @telebeam_xcoord_table, Y
	STA aobject_xcoord, X
	LDA #$79
	STA aobject_pointer, X
	LDA #$08
	STA aobject_ycoord, X
	INX
	DEC z:z0C
	BPL @loop_1

@loop_3:
	LDX #$10

@loop_2:
	CLC
	LDA aobject_ycoord, X
	ADC #$01
	STA aobject_ycoord, X
	INX
	CPX #$12
	BNE @loop_2
	JSR _sprites
	JSR _nmi_wait
	LDA aobject_ycoord + 16
	CMP #$98
	BNE @loop_3
	LDA #$30
	JSR _sprites_timer
	LDA #$00
	STA z:zobject_ram_index
	LDA #$01
	STA z:z0C
	LDX #$12

@loop_4:
	LDA #$00
	JSR _generate_object_common
	LDA #$77
	STA aobject_pointer, X
	LDY z:z0C
	LDA @telebeam_xcoord_table, Y
	STA aobject_xcoord, X
	LDA #$B0
	STA aobject_ycoord, X
	LDY #$08
	JSR _object_speed_init
	INX
	DEC z:z0C
	BPL @loop_4
	LDA #$00
	STA aobject_timer + 20
	LDA #$80
	JSR @timer
	JSR _bosses_ai_run_regular
	LDA #$80
	JSR @timer
	LDA #$F8
	STA aobject_ycoord + 18
	STA aobject_ycoord + 19
	JSR _boss_hp_filled_regular

@loop_6:
	LDX #$10

@loop_5:
	SEC
	LDA aobject_ycoord, X
	SBC #$01
	STA aobject_ycoord, X
	INX
	CPX #$12
	BNE @loop_5
	JSR _sprites
	JSR _nmi_wait
	LDA aobject_ycoord + 16
	CMP #$08
	BNE @loop_6
	LDX #$02

@loop_7:
	LDA #$F8
	STA aobject_ycoord, X
	INX
	CPX #$20
	BNE @loop_7
	LDX #$02

@loop_8:
	LDA @palette_table, X
	STA aobject_palette + 13, X
	DEX
	BPL @loop_8
	JSR _update_object_palette
	LDA #$10
	JSR _sprites_timer
	LDA #$00
	STA z:zjoy1_pressed
	STA z:zjoy1_pressed_frame
	LDA #$05
	STA z:zboss_ai_pointer
	RTS

@palette_table:
	.BYTE pale_gray, dark_gray, black

@timer:
	STA z:ztimer

@loop_9:
	LDX #$14
	STX z:zobject_ram_index
	JSR $F3BD
	JSR _sprites
	JSR _nmi_wait
	DEC z:ztimer
	BNE @loop_9
	RTS
