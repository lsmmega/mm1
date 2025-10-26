	.BYTE $01 ;unknown

;game over screen set
game_over_string_1:
	leftscreencoord 12, 9

	.BYTE @end - @start

@start:
	.BYTE "GAME OVER"
@end:

game_over_string_2:
	leftscreencoord 12, 16

	.BYTE @end - @start

@start:
	.BYTE "CONTINUE"
@end:

game_over_string_3:
	leftscreencoord 12, 18

	.BYTE @end - @start

@start:
	.BYTE "STAGE SELECT"
@end:
