;background tile 16x16 id
	;     topleft, bottomleft, topright, bottomright
	.BYTE $10, $2D, $10, $2D
	.BYTE $2D, $2D, $2D, $2D
	.BYTE $2D, $2D, $10, $2D
	.BYTE $2C, $2D, $10, $2D
	.BYTE $2C, $2D, $2C, $2D
	.BYTE $10, $2D, $2D, $2D
	.BYTE $10, $10, $2D, $2D
	.BYTE $06, $06, $08, $10

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00

;attribute
	;     topleft | topright | bottomleft | bottomright
	.BYTE 0 << 0 | 0 << 2 | 3 << 4 | 3 << 6
	.BYTE 3 << 0 | 3 << 2 | 3 << 4 | 3 << 6
	.BYTE 3 << 0 | 0 << 2 | 3 << 4 | 3 << 6
	.BYTE 3 << 0 | 0 << 2 | 3 << 4 | 3 << 6
	.BYTE 3 << 0 | 3 << 2 | 3 << 4 | 3 << 6
	.BYTE 0 << 0 | 3 << 2 | 3 << 4 | 3 << 6
	.BYTE 0 << 0 | 3 << 2 | 0 << 4 | 3 << 6

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00

;doorset
	.BYTE (iceman_wily2_door_1_end - iceman_wily2_door_1) / 2

iceman_wily2_door_1:
	mapdoorcoord 14, 16, 0
	mapdoorcoord 14, 16, 1
	mapdoorcoord 14, 12, 0
	mapdoorcoord 14, 12, 1
iceman_wily2_door_1_end:

	.BYTE (iceman_wily2_door_2_end - iceman_wily2_door_2) / 2

iceman_wily2_door_2:
	mapdoorcoord 14, 16, 2
	mapdoorcoord 14, 16, 1
	mapdoorcoord 14, 12, 3
	mapdoorcoord 14, 12, 4
iceman_wily2_door_2_end:

	.BYTE (iceman_wily2_door_3_end - iceman_wily2_door_3) / 2

iceman_wily2_door_3:
	mapdoorcoord 0, 12, 5
	mapdoorcoord 0, 12, 6
	mapdoorcoord 0, 16, 5
	mapdoorcoord 0, 16, 6
iceman_wily2_door_3_end:

	.BYTE (iceman_wily2_door_4_end - iceman_wily2_door_4) / 2
iceman_wily2_door_4:
	mapdoorcoord 2, 0, 7
iceman_wily2_door_4_end:

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00
