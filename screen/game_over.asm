	.BYTE $01 ;unknown

;game over screen set
game_over_GAME_OVER_string:
	leftscreencoord 12, 9

	.BYTE @end - @start

@start:
	.BYTE "GAME OVER"
@end:

game_over_CONTINUE_string:
	leftscreencoord 12, 16

	.BYTE @end - @start

@start:
	.BYTE "CONTINUE"
@end:

game_over_STAGE_SELECT_string:
	leftscreencoord 12, 18

	.BYTE @end - @start

@start:
	.BYTE "STAGE SELECT"
@end:
