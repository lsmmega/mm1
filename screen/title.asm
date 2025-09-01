;title screen set
;attribute
	;     topleft | topright | bottomleft | bottomright
	.BYTE 2 << 0 | 2 << 2 | 2 << 4 | 2 << 6 ;y0
	.BYTE 2 << 0 | 2 << 2 | 2 << 4 | 2 << 6 ;y1
	.BYTE 2 << 0 | 2 << 2 | 2 << 4 | 2 << 6 ;y2
	.BYTE 3 << 0 | 3 << 2 | 2 << 4 | 2 << 6 ;y3
	.BYTE 0 << 0 | 0 << 2 | 0 << 4 | 0 << 6 ;y4
	.BYTE 0 << 0 | 0 << 2 | 0 << 4 | 0 << 6 ;y5
	.BYTE 1 << 0 | 1 << 2 | 1 << 4 | 1 << 6 ;y6
	.BYTE 0 << 0 | 0 << 2 | 0 << 4 | 0 << 6 ;y7

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
