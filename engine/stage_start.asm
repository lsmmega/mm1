_stage_start:
	LDX z:zcurrent_stage
	CPX #$06
	BCC @not_wily
	LDA wily_stage_thousands_clear_points_table - 6, X
	STA z:zclear_points

@not_wily:
	LDA #$00
	STA z:zscore_ball
	STA z:zcheckpoint_pointer
	JSR _tiles_init
