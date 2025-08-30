;background tile 16x16 id
	;     topleft, bottomleft, topright, bottomright
	.BYTE $10, $01, $10, $01
	.BYTE $01, $01, $01, $01
	.BYTE $14, $14, $2B, $2B
	.BYTE $14, $14, $14, $14
	.BYTE $28, $2E, $2E, $2E
	.BYTE $28, $28, $2E, $2E
	.BYTE $10, $10, $2D, $2D
	.BYTE $06, $06, $08, $10

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00

;attribute
	;     topleft | topright | bottomleft | bottomright
	.BYTE 0 << 0 | 0 << 2 | 3 << 4 | 3 << 6
	.BYTE 3 << 0 | 3 << 2 | 3 << 4 | 3 << 6
	.BYTE 0 << 0 | 2 << 2 | 0 << 4 | 2 << 6
	.BYTE 0 << 0 | 0 << 2 | 0 << 4 | 0 << 6
	.BYTE 0 << 0 | 2 << 2 | 2 << 4 | 2 << 6
	.BYTE 0 << 0 | 2 << 2 | 0 << 4 | 2 << 6
	.BYTE 0 << 0 | 3 << 2 | 0 << 4 | 3 << 6

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00

;doorset
	.BYTE (bombman_wily3_door_1_end - bombman_wily3_door_1) / 2

bombman_wily3_door_1:
	screencoord 14, 16, 0
	screencoord 14, 16, 1
	screencoord 14, 12, 0
	screencoord 14, 12, 1
bombman_wily3_door_1_end:

	.BYTE (bombman_wily3_door_2_end - bombman_wily3_door_2) / 2

bombman_wily3_door_2:
	screencoord 6, 0, 2
	screencoord 6, 0, 3
	screencoord 8, 0, 2
	screencoord 8, 0, 3
bombman_wily3_door_2_end:

	.BYTE (bombman_wily3_door_3_end - bombman_wily3_door_3) / 2

bombman_wily3_door_3:
	screencoord 0, 20, 4
	screencoord 0, 20, 5
bombman_wily3_door_3_end:

;duplicate iceman wily2 door

	screencoord 0, 16, 5
	screencoord 0, 16, 6
	
	.BYTE (duplicate_iceman_wily2_door_1_end - duplicate_iceman_wily2_door_1) / 2

duplicate_iceman_wily2_door_1:
	screencoord 2, 0, 7
duplicate_iceman_wily2_door_1_end:

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
