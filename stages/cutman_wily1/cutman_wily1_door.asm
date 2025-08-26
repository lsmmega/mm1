;background tile 16x16 id
	;     topleft, bottomleft, topright, bottomright
	.BYTE $10, $01, $10, $01
	.BYTE $01, $01, $01, $01
	.BYTE $2C, $2C, $10, $2C
	.BYTE $2C, $2C, $2C, $2C
	.BYTE $2B, $2C, $10, $2C
	.BYTE $2B, $2C, $2B, $2C
	.BYTE $10, $2C, $2C, $2C
	.BYTE $10, $10, $2C, $2C
	.BYTE $06, $00, $00, $00
	.BYTE $06, $06, $00, $00

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00

;attribute
	;     topleft | topright | bottomleft | bottomright
	.BYTE 0 << 0 | 0 << 2 | 1 << 4 | 1 << 6
	.BYTE 1 << 0 | 1 << 2 | 1 << 4 | 1 << 6
	.BYTE 2 << 0 | 0 << 2 | 2 << 4 | 2 << 6
	.BYTE 2 << 0 | 2 << 2 | 2 << 4 | 2 << 6
	.BYTE 2 << 0 | 0 << 2 | 2 << 4 | 2 << 6
	.BYTE 2 << 0 | 2 << 2 | 2 << 4 | 2 << 6
	.BYTE 0 << 0 | 2 << 2 | 2 << 4 | 2 << 6
	.BYTE 0 << 0 | 2 << 2 | 0 << 4 | 2 << 6
	.BYTE 0 << 0 | 1 << 2 | 0 << 4 | 1 << 6
	.BYTE 0 << 0 | 1 << 2 | 0 << 4 | 1 << 6

;end
	.BYTE $00, $00, $00, $00, $00, $00

;doorset
	.BYTE (cutman_wily1_door_1_end - cutman_wily1_door_1) / 2

cutman_wily1_door_1:
	screencoord 14, 16, 0
	screencoord 14, 16, 1
	screencoord 14, 12, 0
	screencoord 14, 12, 1
cutman_wily1_door_1_end:

	.BYTE (cutman_wily1_door_2_end - cutman_wily1_door_2) / 2

cutman_wily1_door_2:
	screencoord 14, 16, 2
	screencoord 14, 16, 3
	screencoord 14, 12, 4
	screencoord 14, 12, 5
cutman_wily1_door_2_end:

	.BYTE (cutman_wily1_door_3_end - cutman_wily1_door_3) / 2

cutman_wily1_door_3:
	screencoord 0, 12, 6
	screencoord 0, 12, 7
	screencoord 0, 16, 6
	screencoord 0, 16, 7
cutman_wily1_door_3_end:

	.BYTE (cutman_wily1_door_4_end - cutman_wily1_door_4) / 2
cutman_wily1_door_4:
	screencoord 0, 4, 8
	screencoord 0, 4, 9
	screencoord 0, 8, 8
	screencoord 0, 8, 9
	screencoord 0, 12, 8
	screencoord 0, 12, 9
	screencoord 0, 16, 8
	screencoord 0, 16, 9
cutman_wily1_door_4_end:

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
	.BYTE $00, $00, $00, $00
