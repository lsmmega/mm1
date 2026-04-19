_menu:
	CLC
	LDA z:zscreen_xcoord
	ADC #$80
	STA z:zmenu_screen_xcoord
	LDA z:zscreen
	ADC #$00
	STA z:zmenu_screen
	STA z:z05
	LDA z:zmenu_screen_xcoord
	AND #%11100000
	ORA #%00000100
	STA z:zmenu_screen_xcoord
	STA z:z04
	LDA z:znmi_frame
	PHA
	LDA z:zgutsman_stomp_timer
	PHA
	LDA z:zforce_screen_flag
	PHA
	LDA z:zrunning_type
	PHA
	LDA z:zwater_delay
	PHA
	LDA z:zundo_running_type
	PHA
	LDY #$04
	LDX #$3F
	JSR _init_sprites
	LDA #$F8
	STA aobject_ycoord + 5
	LDA #$00
	JSR @get_weapon_palette
	track_queue track_pause
	JSR _nmi_wait
	LDA #$0E
	STA aobject_ppu_address
	LDA #$00
	STA aobject_ppu_address + 1
	STA z:zgutsman_stomp_timer
	STA z:ztiles_update_20size
	STA z:ztimer
	STA z:zforce_screen_flag
	STA z:zrunning_type
	STA z:zwater_delay
	STA z:zundo_running_type
	LDA z:zgot_weapon_flag
	STA z:zobject_pointer

@loop_2:
	LDX #$00

@loop_1:
	STX z:ztiles_address
	LDA #$00
	STA z:z0D
	JSR _xycoord_to_ppu_address
	LDX #$12
	JSR _attributes_to_ppu_address
	LDY z:zcurrent_stage
	LDA @draw_menu_attributes_stage_table, Y
	STA ascreen_ppu_address, X
	LDA #$01
	STA z:zscreen_update_flag
	JSR @draw_menu
	JSR _nmi_wait
	LDA aobject_ppu_address + 1
	CLC
	ADC #$10
	STA aobject_ppu_address + 1
	LDX z:ztiles_address
	INX
	CPX #$03
	BEQ @done_1
	CLC
	LDA z:z04
	ADC #$20
	STA z:z04
	LDA z:z05
	ADC #$00
	STA z:z05
	JMP @loop_1

@done_1:
	INC z:ztimer
	LDA z:ztimer
	CMP #$05
	BEQ @done_2
	ASL
	ASL
	CLC
	ADC z:zmenu_screen_xcoord
	STA z:z04
	LDA z:zmenu_screen
	STA z:z05
	JMP @loop_2

@done_2:
	LDA #$20
	STA z:z0F
	LDX #$01
	STX z:z0C

@loop_3:
	LDA z:zscreen_xcoord
	AND #%00011111
	STA z:z0D
	LDA #$9B
	SEC
	SBC z:z0D
	STA z:z0D
	LDY @menu_to_current_weapon_table, X
	LDA z:zgot_weapon_flag
	AND @draw_menu_oam_anded_table, X
	BEQ @skip_1
	TXA
	ASL
	TAX
	LDA @draw_menu_oam_table, X
	STA z:z0E
	LDA zmegaman_hp, Y
	PHA
	LSR
	LSR
	STA z:z10
	PLA
	AND #%00000011
	STA z:z11
	SEC
	LDA #$EC
	SBC z:z11
	STA z:z11
	LDX #$00

@loop_4:
	CPX z:z10
	BCS @0_bar
	LDA #$E8
	BNE @draw_bar_tiles

@0_bar:
	BNE @draw_0_bar
	LDA z:z11
	BNE @draw_bar_tiles

@draw_0_bar:
	LDA #$EC

@draw_bar_tiles:
	LDY z:z0F
	STA aoam_tiles, Y
	LDA z:z0E
	STA aoam_y, Y
	LDA #oam_palette_1
	STA aoam_attributes, Y
	LDA z:z0D
	STA aoam_x, Y
	INY
	INY
	INY
	INY
	STY z:z0F
	CLC
	ADC #$08
	STA z:z0D
	INX
	CPX #$07
	BNE @loop_4

@skip_1:
	INC z:z0C
	LDX z:z0C
	CPX #$08
	BNE @loop_3
	LDA z:zscreen_xcoord
	AND #%00011111
	STA z:z0C
	SEC
	LDA #$A8
	SBC z:z0C
	STA z:z0C
	LDX #$17

@loop_5:
	LDA @draw_menu_1up_counter, X
	STA aoam_y + $E4, X
	TXA
	AND #%00000011
	CMP #$03
	BNE @skip_2
	CLC
	LDA z:z0C
	ADC aoam_y + $E4, X
	STA aoam_y + $E4, X

@skip_2:
	DEX
	BPL @loop_5
	LDX z:z1up
	LDY #$00
	LDA #$0A
	JSR _255fraction_div_to_constants
	LDA z:z05
	PHA
	ORA #$F0
	STA aoam_tiles + $F4
	PLA
	ASL
	STA z:z05
	ASL
	ASL
	ADC z:z05
	STA z:z05
	SEC
	LDA z:z1up
	SBC z:z05
	ORA #$F0
	STA aoam_tiles + $F8
	LDY z:zcurrent_weapon
	LDA @current_weapon_to_menu_table, Y
	STA z:zcurrent_weapon

@change_oam_attributes:
	LDX #$1C
	LDA #$00

@loop_6:
	STA aoam_attributes, X
	DEX
	DEX
	DEX
	DEX
	BPL @loop_6
	LDA z:zcurrent_weapon
	SEC
	SBC #$01
	AND #%00000111
	ASL
	ASL
	TAX
	LDA #oam_palette_1
	STA aoam_attributes, X

@not_pressed:
	LDA z:znmi_frame
	AND #%00000111
	BNE @8_frames
	LDA z:znmi_frame
	AND #%00001000
	JSR @flash

@8_frames:
	JSR _nmi_wait
	LDA z:zjoy1_pressed_bits
	AND #start_button | up_button | down_button
	BEQ @not_pressed
	PHA
	LDA #$01
	JSR @flash
	PLA
	AND #up_button | down_button
	BEQ @start_pressed
	AND #up_button
	BEQ @down_pressed

@up_pressed:
	DEC z:zcurrent_weapon
	LDA z:zcurrent_weapon
	AND #%00000111
	STA z:zcurrent_weapon
	BEQ @confirmed
	TAY
	LDA z:zgot_weapon_flag
	AND @draw_menu_oam_anded_table, Y
	BEQ @up_pressed
	BNE @confirmed

@down_pressed:
	INC z:zcurrent_weapon
	LDA z:zcurrent_weapon
	AND #%00000111
	STA z:zcurrent_weapon
	BEQ @confirmed
	TAY
	LDA z:zgot_weapon_flag
	AND @draw_menu_oam_anded_table, Y
	BEQ @down_pressed

@confirmed:
	track_queue track_select
	JMP @change_oam_attributes

@start_pressed:
	LDX z:zcurrent_weapon
	LDA @menu_to_current_weapon_table, X
	STA z:zcurrent_weapon
	LDY #$04
	LDX #$3F
	JSR _init_sprites
	LDA #$00
	STA z:zobject_ram_index
	LDX z:zcurrent_weapon
	CPX #$06
	BNE @not_super_arm
	LDX z:zcurrent_stage
	LDA @super_arm_block_tiles_address_table, X
	LDY @super_arm_block_tiles_bank_table, X
	BNE @continue

@super_arm_block_tiles_address_table:
	.BYTE $96 ;cutman
	.BYTE $96 ;iceman
	.BYTE $96 ;bombman
	.BYTE $96 ;fireman
	.BYTE $B6 ;elecman
	.BYTE $BE ;gutsman
	.BYTE $9E ;wily1
	.BYTE $96 ;wily2
	.BYTE $96 ;wily3
	.BYTE $9E ;wily4
	.BYTE $96 ;unknown

@super_arm_block_tiles_bank_table:
	.BYTE $01 ;cutman
	.BYTE $01 ;iceman
	.BYTE $01 ;bombman
	.BYTE $01 ;fireman
	.BYTE $01 ;elecman
	.BYTE $01 ;gutsman
	.BYTE $03 ;wily1
	.BYTE $01 ;wily2
	.BYTE $01 ;wily3
	.BYTE $03 ;wily4
	.BYTE $01 ;unknown

@not_super_arm:
	LDY #$02
	LDA @weapon_tiles_address_table, X

@continue:
	STA z:zobject_pointer
	STY z:ztiles_update_20size
	LDA z:zmenu_screen_xcoord
	STA z:z04
	LDA z:zmenu_screen
	STA z:z05
	LDA #$0E
	STA aobject_ppu_address
	LDA #$00
	STA aobject_ppu_address + 1
	STA z:ztimer

@loop_8:
	LDX #$00

@loop_7:
	STX z:ztiles_address
	LDA #$00
	STA z:z0D
	STA z:zscreen_update_flag
	JSR _update_menu_screen
	LDA z:zobject_pointer
	STA z:z07
	LDA #$00
	STA z:z06
	LDA z:ztiles_update_20size
	LDY aobject_ppu_address + 1
	JSR _object_tiles_prewrite
	LDA #$10
	STA z:zobject_tiles_update_size
	JSR _nmi_wait
	LDA aobject_ppu_address + 1
	CLC
	ADC #$10
	STA aobject_ppu_address + 1
	CLC
	LDA z:z04
	ADC #$20
	STA z:z04
	LDA z:z05
	ADC #$00
	STA z:z05
	LDX z:ztiles_address
	INX
	CPX #$03
	BNE @loop_7
	INC z:ztimer
	LDA z:ztimer
	ASL
	ASL
	CLC
	ADC z:zmenu_screen_xcoord
	STA z:z04
	LDA z:zmenu_screen
	STA z:z05
	LDA z:ztimer
	CMP #$05
	BNE @loop_8
	LDA z:zobject_pointer
	STA z:z07
	LDA #$00
	STA z:z06
	LDA z:ztiles_update_20size
	LDY aobject_ppu_address + 1
	JSR _object_tiles_prewrite
	LDA #$10
	STA z:zobject_tiles_update_size
	LDA z:zcurrent_weapon
	JSR @get_weapon_palette
	JSR _nmi_wait
	LDA #$FF
	STA z:zsuper_arm_block_index
	PLA
	STA z:zundo_running_type
	PLA
	STA z:zwater_delay
	PLA
	STA z:zrunning_type
	PLA
	STA z:zforce_screen_flag
	PLA
	STA z:zgutsman_stomp_timer
	PLA
	STA z:znmi_frame
	JMP _close_menu

@weapon_tiles_address_table:
	.BYTE $91 ;mega buster
	.BYTE $91 ;rolling cutter
	.BYTE $91 ;ice slasher
	.BYTE $92 ;hyper bomb
	.BYTE $90 ;fire storm
	.BYTE $94 ;thunder beam
	.BYTE $95 ;super arm
	.BYTE $91 ;magnet beam

@flash:
	PHP
	LDA z:zcurrent_weapon
	TAX
	SEC
	SBC #$01
	AND #%00000111
	ASL
	ASL
	TAY
	LDA #$F8
	PLP
	BEQ @hidden
	LDA @character_ycoord_table, X

@hidden:
	STA aoam_y, Y
	RTS

@get_weapon_palette:
	ASL
	TAX
	LDA weapon_palette, X
	STA aobject_palette + 1
	LDA weapon_palette + 1, X
	STA aobject_palette + 2
	JSR _update_object_palette
	RTS

@draw_menu:
	LDX #$00

@multi:
	LDY z:ztiles_update_20size
	LDA @draw_menu_tiles_vertical_index_table, Y
	ASL
	ASL
	ASL
	TAY

@16x32_size:
	LDA @draw_menu_tiles_16x32_vertical_table, Y
	STA ascreen_ppu_data, X
	INY
	INX
	TXA
	AND #%00000111
	BNE @16x32_size
	INC z:ztiles_update_20size
	LDA z:ztiles_update_20size
	AND #%00000001
	BNE @multi
	LDA #$00
	STA z:z06
	LDA #$AC
	STA z:z07
	LDA #$02
	LDX #$00
	LDY aobject_ppu_address + 1
	JSR _object_tiles_prewrite
	LDA #$10
	STA z:zobject_tiles_update_size
	LDA #$01
	STA z:z0C
	LDA z:ztimer
	ASL
	STA z:z0D

@loop_9:
	LDA z:z0D
	TAX
	LDA z:zgot_weapon_flag
	ORA #%00000001
	AND @draw_menu_oam_anded_table, X
	BEQ @skip_3
	LDA z:z0D
	ASL
	TAY
	LDA @draw_menu_oam_index_table, X
	TAX
	LDA @draw_menu_oam_table, Y
	STA aoam_y, X
	LDA @draw_menu_oam_table + 1, Y
	STA aoam_tiles, X
	LDA #oam_priority_background
	STA aoam_attributes, X
	LDA z:zscreen_xcoord
	AND #%00011111
	STA aoam_x, X
	LDA #$8E
	SEC
	SBC aoam_x, X
	STA aoam_x, X

@skip_3:
	INC z:z0D
	DEC z:z0C
	BPL @loop_9
	LDX #$12
	RTS

@draw_menu_tiles_16x32_vertical_table:
	.BYTE $60, $60, $60, $60, $60, $61, $61, $61 ;00
	.BYTE $60, $61, $62, $63, $60, $61, $64, $65 ;01
	.BYTE $60, $61, $61, $61, $60, $61, $61, $61 ;02
	.BYTE $60, $61, $61, $61, $60, $60, $60, $60 ;03
	.BYTE $60, $60, $60, $60, $61, $61, $61, $61 ;04
	.BYTE $61, $61, $61, $61, $61, $61, $61, $61 ;05
	.BYTE $61, $61, $61, $61, $60, $60, $60, $60 ;06
	.BYTE $60, $60, $60, $60, $61, $61, $61, $60 ;07
	.BYTE $62, $63, $61, $60, $64, $65, $61, $60 ;08
	.BYTE $61, $61, $61, $60, $61, $61, $61, $60 ;09
	.BYTE $61, $61, $61, $60, $61, $6E, $61, $60 ;0A
	.BYTE $61, $61, $61, $60, $60, $60, $60, $60 ;0B
	.BYTE $62, $63, $61, $61, $64, $65, $61, $61 ;0C
	.BYTE $61, $61, $62, $63, $61, $61, $64, $65 ;0D
	.BYTE $62, $63, $62, $63, $64, $65, $64, $65 ;0E

@draw_menu_tiles_vertical_index_table:
	.BYTE $00, $02, $02, $02, $02, $03
	.BYTE $04, $05, $05, $05, $05, $06
	.BYTE $04, $05, $05, $05, $05, $06
	.BYTE $04, $05, $05, $05, $05, $06
	.BYTE $07, $09, $09, $0A, $09, $0B

@draw_menu_attributes_stage_table:
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;cutman
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;iceman
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;bombman
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;fireman
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;elecman
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;gutsman
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;wily1
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;wily2
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;wily3
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;wily4
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;unknown

@draw_menu_oam_table:
	.BYTE $F8, $E0 ;hidden
	.BYTE $33, $E0 ;hyper bomb
	.BYTE $43, $E1 ;thunder beam
	.BYTE $53, $E2 ;super arm
	.BYTE $63, $E3 ;ice slasher
	.BYTE $73, $E4 ;rolling cutter
	.BYTE $83, $E5 ;fire storm
	.BYTE $93, $E6 ;magnet beam
	.BYTE $A3, $E7 ;mega buster
	.BYTE $A3, $E7 ;open

@draw_menu_oam_index_table:
	.BYTE $00 ;hidden
	.BYTE $00 ;hyper bomb
	.BYTE $04 ;thunder beam
	.BYTE $08 ;super arm
	.BYTE $0C ;ice slasher
	.BYTE $10 ;rolling cutter
	.BYTE $14 ;fire storm
	.BYTE $18 ;magnet beam
	.BYTE $1C ;mega buster
	.BYTE $1C ;open

@current_weapon_to_menu_table:
	.BYTE $00 ;mega buster
	.BYTE $05 ;rolling cutter
	.BYTE $04 ;ice slasher
	.BYTE $01 ;hyper bomb
	.BYTE $06 ;fire storm
	.BYTE $02 ;thunder beam
	.BYTE $03 ;super arm
	.BYTE $07 ;magnet beam

@draw_menu_oam_anded_table:
	.BYTE %11111111 ;hidden
	.BYTE %00000010 ;hyper bomb
	.BYTE %00000100 ;thunder beam
	.BYTE %00001000 ;super arm
	.BYTE %00010000 ;ice slasher
	.BYTE %00100000 ;rolling cutter
	.BYTE %01000000 ;fire storm
	.BYTE %10000000 ;magnet beam
	.BYTE %11111111 ;mega buster
	.BYTE %11111111 ;open

@menu_to_current_weapon_table:
	.BYTE $00 ;mega buster
	.BYTE $03 ;hyper bomb
	.BYTE $05 ;thunder beam
	.BYTE $06 ;super arm
	.BYTE $02 ;ice slasher
	.BYTE $01 ;rolling cutter
	.BYTE $04 ;fire storm
	.BYTE $07 ;magnet beam

@character_ycoord_table:
	.BYTE $A3 ;mega buster
	.BYTE $33 ;hyper bomb
	.BYTE $43 ;thunder beam
	.BYTE $53 ;super arm
	.BYTE $63 ;ice slasher
	.BYTE $73 ;rolling cutter
	.BYTE $83 ;fire storm
	.BYTE $93 ;magnet beam

@draw_menu_1up_counter:
	.BYTE $A0, $ED, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $00
	.BYTE $A0, $ED, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip, $08
	.BYTE $A8, $EE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $00
	.BYTE $A8, $EE, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip, $08
	.BYTE $A8, $F0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $1C
	.BYTE $A8, $F0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $24
