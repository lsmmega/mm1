_load_yellow_devil:
	LDA z:zpalette_update_flag
	BEQ @no_palette_update
	JSR _nmi_wait
	JMP _load_yellow_devil

@no_palette_update:
	LDA #<.BANK (yellow_devil_tiles)
	STA z:ztiles_bankswitch
	LDA #>yellow_devil_tiles
	LDX #$18
	LDY #$40
	JSR _tiles_update
	JSR _boss_hp_filled_regular
	LDA #$05
	STA z:zboss_ai_pointer
	LDA #objects_right
	STA aobject_flag + 1
	STA z:zboss_move_stage
	LDA #$00
	STA z:zjoy1_pressed
	RTS
