_game_over:
	LDA z:zcurrent_stage
	STA z:zcurrent_boss
	LDA #$0A
	STA z:zcurrent_stage
	JSR _tiles_init
	JSR _init_stage_palette_special_blockset
	JSR _title_game_over_screen
	LDA #$00
	LDX #$07

@loop:
	STA z:zscore, X
	DEX
	BPL @loop
	LDA #$02
	STA z:z1up
	LDA z:zcurrent_boss
	STA z:zcurrent_stage
