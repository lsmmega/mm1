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

;tileset start on screencoord
	hiscreencoord 4, 13
	hiscreencoord 5, 12
	hiscreencoord 6, 11
	hiscreencoord 7, 10
	hiscreencoord 8,  9
	hiscreencoord 9,  8
	hiscreencoord 10, 7

	loscreencoord 4, 13
	loscreencoord 5, 12
	loscreencoord 6, 11
	loscreencoord 7, 10
	loscreencoord 8,  9
	loscreencoord 9,  8
	loscreencoord 10, 7
	
;length with increase by 1, start at 0
	.BYTE $18
	.BYTE $16
	.BYTE $14
	.BYTE $12
	.BYTE $10
	.BYTE $0E
	.BYTE $0C

;special title screen tileset
	screencoord 11, 17

	.BYTE special_title_screen_tileset_1_end - special_title_screen_tileset_1

special_title_screen_tileset_1:
	.BYTE "PRESS START"
special_title_screen_tileset_1_end:

	screencoord 1, 22

	.BYTE special_title_screen_tileset_2_end - special_title_screen_tileset_2

special_title_screen_tileset_2:
	.BYTE "TM AND "
	.BYTE $C8, $AA, $AB, $AC, $AD ;©️1987
	.BYTE " CAPCOM U.S.A.,INC."
special_title_screen_tileset_2_end:

	screencoord 11, 24

	.BYTE special_title_screen_tileset_3_end - special_title_screen_tileset_3

special_title_screen_tileset_3:
	.BYTE "LICENSED BY"
special_title_screen_tileset_3_end:

	screencoord 4, 26

	.BYTE special_title_screen_tileset_4_end - special_title_screen_tileset_4

special_title_screen_tileset_4:
	.BYTE "NINTENDO OF AMERICA INC."
special_title_screen_tileset_4_end:

	.BYTE special_title_screen_tileset_5_end - special_title_screen_tileset_5

special_title_screen_tileset_5:
	.BYTE "TM"
special_title_screen_tileset_5_end:
