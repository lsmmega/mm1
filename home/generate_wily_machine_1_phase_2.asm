_generate_wily_machine_1_phase_2:
	JSR _boss_hp_filled_regular
	LDA #$07
	STA z:ztiles_address
	LDX #$00

@loop_2:
	LDY @tiles_table, X
	STY z:zobject_tiles_update_size
	INY
	INY
	STY z:z0C
	INX
	LDY #$00

@loop_1:
	LDA @tiles_table, X
	STA aobject_ppu_address, Y
	INX
	INY
	DEC z:z0C
	BNE @loop_1
	STX z:zobject_pointer
	LDX #$16
	JSR _check_object
	BCS @skip
	LDA #$01
	STA z:zobject_ram_index
	JSR _generate_object_common
	LDA #$84
	STA aobject_pointer, X
	LDY z:ztiles_address
	CLC
	LDA aobject_xcoord, X
	ADC @xcoord_table, Y
	STA aobject_xcoord, X
	SEC
	LDA aobject_ycoord, X
	SBC @ycoord_table, Y
	STA aobject_ycoord, X
	LDA @init_speed_table, Y
	TAY
	JSR _object_speed_init
	LDA #objects_temporary | objects_right
	STA aobject_flag, X

@skip:
	JSR _run_enemies_ai
	JSR _sprites
	JSR _nmi_wait
	LDX z:zobject_pointer
	DEC z:ztiles_address
	BNE @loop_2
	LDX #$02

@loop_3:
	LDA @palettes_table, X
	STA abackground_palette_original + 5, X
	DEX
	BPL @loop_3
	JSR _update_background_palette
	INC z:zcurrent_boss
	CLC
	LDA aobject_xcoord + 1
	ADC #$04
	STA aobject_xcoord + 1
	ADC #$1C
	STA aobject_xcoord + 17
	SEC
	LDA aobject_ycoord + 1
	SBC #$10
	STA aobject_ycoord + 1
	SBC #$04
	STA aobject_ycoord + 17
	LDA #$85
	STA aobject_pointer + 1
	LDA #$00
	STA aobject_flag + 17
	STA aobject_frameset_timer + 17
	LDA #$83
	STA aobject_pointer + 17
	LDX #$11
	LDY #$08
	JSR _object_speed_init
	LDA #$80
	STA z:zboss_move_counter
	LDA #$05
	STA z:zboss_ai_pointer
	stack_pointers $FF
	JMP _stage_loop

@tiles_table:
	.BYTE @end_1 - @start_1
	rightscreencoord 17, 11

@start_1:
	.BYTE $00, $00, $E0, $E1, $E2
@end_1:

	.BYTE @end_2 - @start_2
	rightscreencoord 16, 12

@start_2:
	.BYTE $00, $00, $00, $E3, $00, $E4
@end_2:

	.BYTE @end_3 - @start_3
	rightscreencoord 15, 13

@start_3:
	.BYTE $00, $00, $E5, $E6, $00, $00, $00
@end_3:

	.BYTE @end_4 - @start_4
	rightscreencoord 15, 14

@start_4:
	.BYTE $00, $E7, $E8, $E9, $00, $00, $00
@end_4:

	.BYTE @end_5 - @start_5
	rightscreencoord 15, 15

@start_5:
	.BYTE $EA, $EB, $EC, $ED, $EE, $EF, $DA
@end_5:

	.BYTE @end_6 - @start_6
	rightscreencoord 15, 16

@start_6:
	.BYTE $DB, $DC, $DD
@end_6:

	.BYTE @end_7 - @start_7
	rightscreencoord 15, 17

@start_7:
	.BYTE $DE, $DF, $F6
@end_7:

@xcoord_table:
	.BYTE $00, $20, $10, $00, $20, $14, $08

@ycoord_table:
	.BYTE $00, $14, $14, $14, $24, $24, $24

@init_speed_table:
	.BYTE $D4, $78, $D8, $D4, $28, $D4, $34

@palettes_table:
	.BYTE dark_orange, pale_orange, light_orange
