	.BYTE $01 ;unknown

;game over screen set
	leftscreencoord 12, 9

	.BYTE game_over_GAME_OVER_string_end - game_over_GAME_OVER_string

game_over_GAME_OVER_string:
	.BYTE "GAME OVER"
game_over_GAME_OVER_string_end:

	leftscreencoord 12, 16

	.BYTE game_over_CONTINUE_string_end - game_over_CONTINUE_string

game_over_CONTINUE_string:
	.BYTE "CONTINUE"
game_over_CONTINUE_string_end:

	leftscreencoord 12, 18

	.BYTE game_over_STAGE_SELECT_string_end - game_over_STAGE_SELECT_string

game_over_STAGE_SELECT_string:
	.BYTE "STAGE SELECT"
game_over_STAGE_SELECT_string_end:
