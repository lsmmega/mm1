;background tile 16x16 id
	;     topleft, bottomleft, topright, bottomright
	.BYTE $10, $00, $10, $00
	.BYTE $00, $00, $00, $00
	.BYTE $28, $28, $10, $28
	.BYTE $28, $28, $28, $28
	.BYTE $29, $28, $10, $28
	.BYTE $29, $28, $29, $28
	.BYTE $10, $28, $28, $28
	.BYTE $10, $10, $28, $28
	.BYTE $06, $17, $06, $17
	.BYTE $17, $17, $17, $17

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00

;attribute
	;     topleft | topright | bottomleft | bottomright
	.BYTE 0 << 0 | 0 << 2 | 0 << 4 | 0 << 6
	.BYTE 0 << 0 | 0 << 2 | 0 << 4 | 0 << 6
	.BYTE 1 << 0 | 0 << 2 | 1 << 4 | 1 << 6
	.BYTE 1 << 0 | 1 << 2 | 1 << 4 | 1 << 6
	.BYTE 1 << 0 | 0 << 2 | 1 << 4 | 1 << 6
	.BYTE 1 << 0 | 1 << 2 | 1 << 4 | 1 << 6
	.BYTE 0 << 0 | 1 << 2 | 1 << 4 | 1 << 6
	.BYTE 0 << 0 | 1 << 2 | 0 << 4 | 1 << 6
	.BYTE 0 << 0 | 0 << 2 | 2 << 4 | 2 << 6
	.BYTE 2 << 0 | 2 << 2 | 2 << 4 | 2 << 6

;end
	.BYTE $00, $00, $00, $00, $00, $00

;doorset
	.BYTE (fireman_wily4_door_1_end - fireman_wily4_door_1) / 2

fireman_wily4_door_1:
	mapdoorcoord 14, 16, 0
	mapdoorcoord 14, 16, 1
	mapdoorcoord 14, 12, 0
	mapdoorcoord 14, 12, 1
fireman_wily4_door_1_end:

	.BYTE (fireman_wily4_door_2_end - fireman_wily4_door_2) / 2

fireman_wily4_door_2:
	mapdoorcoord 14, 16, 2
	mapdoorcoord 14, 16, 3
	mapdoorcoord 14, 12, 4
	mapdoorcoord 14, 12, 5
fireman_wily4_door_2_end:

	.BYTE (fireman_wily4_door_3_end - fireman_wily4_door_3) / 2

fireman_wily4_door_3:
	mapdoorcoord 0, 12, 6
	mapdoorcoord 0, 12, 7
	mapdoorcoord 0, 16, 6
	mapdoorcoord 0, 16, 7
fireman_wily4_door_3_end:

	.BYTE (fireman_wily4_door_4_end - fireman_wily4_door_4) / 2

fireman_wily4_door_4:
	mapdoorcoord 14, 20, 8
	mapdoorcoord 14, 20, 9
	mapdoorcoord 14, 16, 8
	mapdoorcoord 14, 16, 9
fireman_wily4_door_4_end:

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
	.BYTE $00, $00, $00, $00
