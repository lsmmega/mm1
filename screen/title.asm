title_screen_attributes:
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;y0
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;y1
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;y2
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_2 | bottomright_palette_2 ;y3
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;y4
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;y5
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;y6
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;y7

title_screen_hileftscreencoord:
	hileftscreencoord 4, 13
	hileftscreencoord 5, 12
	hileftscreencoord 6, 11
	hileftscreencoord 7, 10
	hileftscreencoord 8,  9
	hileftscreencoord 9,  8
	hileftscreencoord 10, 7

title_screen_loleftscreencoord:
	loleftscreencoord 4, 13
	loleftscreencoord 5, 12
	loleftscreencoord 6, 11
	loleftscreencoord 7, 10
	loleftscreencoord 8,  9
	loleftscreencoord 9,  8
	loleftscreencoord 10, 7
	
title_screen_tileset_length_table:
	.BYTE $18
	.BYTE $16
	.BYTE $14
	.BYTE $12
	.BYTE $10
	.BYTE $0E
	.BYTE $0C

;special title screen tileset
special_title_screen_tileset:
	leftscreencoord 11, 17

	.BYTE @end_1 - @start_1

@start_1:
	.BYTE "PRESS START"
@end_1:

	leftscreencoord 1, 22

	.BYTE @end_2 - @start_2

@start_2:
	.BYTE "TM AND "
	.BYTE $C8, $AA, $AB, $AC, $AD ;©️1987
	.BYTE " CAPCOM U.S.A.,INC."
@end_2:

	leftscreencoord 11, 24

	.BYTE @end_3 - @start_3

@start_3:
	.BYTE "LICENSED BY"
@end_3:

	leftscreencoord 4, 26

	.BYTE @end_4 - @start_4

@start_4:
	.BYTE "NINTENDO OF AMERICA INC."
@end_4:

	.BYTE @end_5 - @start_5

@start_5:
	.BYTE "TM"
@end_5:
