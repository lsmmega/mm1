;background tile 16x16 id
	;     topleft, bottomleft, topright, bottomright
	.BYTE $10, $01, $10, $01
	.BYTE $01, $01, $01, $01
	.BYTE $14, $14, $2F, $2F
	.BYTE $14, $14, $14, $14
	.BYTE $00, $00, $00, $00
	.BYTE $17, $09, $17, $0B
	.BYTE $08, $09, $0A, $0B
	.BYTE $10, $09, $11, $0B

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00

;attribute
	;     topleft | topright | bottomleft | bottomright
	.BYTE 0 << 0 | 0 << 2 | 2 << 4 | 2 << 6
	.BYTE 2 << 0 | 2 << 2 | 2 << 4 | 2 << 6
	.BYTE 0 << 0 | 3 << 2 | 0 << 4 | 3 << 6
	.BYTE 0 << 0 | 0 << 2 | 0 << 4 | 0 << 6
	.BYTE 0 << 0 | 0 << 2 | 0 << 4 | 0 << 6
	.BYTE 2 << 0 | 2 << 2 | 3 << 4 | 3 << 6
	.BYTE 3 << 0 | 3 << 2 | 3 << 4 | 3 << 6
	.BYTE 3 << 0 | 3 << 2 | 3 << 4 | 3 << 6

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00

;doorset
	.BYTE (elecman_door_1_end - elecman_door_1) / 2

elecman_door_1:
	mapcoord 14, 16, 0
	mapcoord 14, 16, 1
	mapcoord 14, 12, 0
	mapcoord 14, 12, 1
elecman_door_1_end:

	.BYTE (elecman_door_2_end - elecman_door_2) / 2

elecman_door_2:
	mapcoord 6, 24, 2
	mapcoord 6, 24, 3
	mapcoord 8, 24, 2
	mapcoord 8, 24, 3
elecman_door_2_end:

	.BYTE (elecman_door_3_end - elecman_door_3) / 2

elecman_door_3:
	mapcoord 14, 20, 5
	mapcoord 14, 20, 6
	mapcoord 14, 16, 5
	mapcoord 14, 16, 7
elecman_door_3_end:

	.BYTE (elecman_door_4_end - elecman_door_4) / 2

elecman_door_4:
	mapcoord 0, 20, 4
elecman_door_4_end:

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
