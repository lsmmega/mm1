;title screen set
;attributes
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;y0
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;y1
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;y2
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_2 | bottomright_palette_2 ;y3
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;y4
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;y5
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;y6
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;y7

;tileset start on leftscreencoord
	hileftscreencoord 4, 13
	hileftscreencoord 5, 12
	hileftscreencoord 6, 11
	hileftscreencoord 7, 10
	hileftscreencoord 8,  9
	hileftscreencoord 9,  8
	hileftscreencoord 10, 7

	loleftscreencoord 4, 13
	loleftscreencoord 5, 12
	loleftscreencoord 6, 11
	loleftscreencoord 7, 10
	loleftscreencoord 8,  9
	loleftscreencoord 9,  8
	loleftscreencoord 10, 7
	
;length with increase by 1, start at 0
	.BYTE $18
	.BYTE $16
	.BYTE $14
	.BYTE $12
	.BYTE $10
	.BYTE $0E
	.BYTE $0C

;special title screen tileset
	leftscreencoord 11, 17

	.BYTE special_title_screen_tileset_1_end - special_title_screen_tileset_1

special_title_screen_tileset_1:
	.BYTE "PRESS START"
special_title_screen_tileset_1_end:

	leftscreencoord 1, 22

	.BYTE special_title_screen_tileset_2_end - special_title_screen_tileset_2

special_title_screen_tileset_2:
	.BYTE "TM AND "
	.BYTE $C8, $AA, $AB, $AC, $AD ;©️1987
	.BYTE " CAPCOM U.S.A.,INC."
special_title_screen_tileset_2_end:

	leftscreencoord 11, 24

	.BYTE special_title_screen_tileset_3_end - special_title_screen_tileset_3

special_title_screen_tileset_3:
	.BYTE "LICENSED BY"
special_title_screen_tileset_3_end:

	leftscreencoord 4, 26

	.BYTE special_title_screen_tileset_4_end - special_title_screen_tileset_4

special_title_screen_tileset_4:
	.BYTE "NINTENDO OF AMERICA INC."
special_title_screen_tileset_4_end:

	.BYTE special_title_screen_tileset_5_end - special_title_screen_tileset_5

special_title_screen_tileset_5:
	.BYTE "TM"
special_title_screen_tileset_5_end:
