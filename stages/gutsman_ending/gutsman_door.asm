;background tile 16x16 id
	;     topleft, bottomleft, topright, bottomright
	.BYTE $10, $20, $10, $20
	.BYTE $20, $20, $20, $20
	.BYTE $35, $35, $10, $35
	.BYTE $35, $35, $35, $35
	.BYTE $10, $35, $35, $35
	.BYTE $10, $10, $35, $35

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00

;attribute
	;     topleft | topright | bottomleft | bottomright
	.BYTE 1 << 0 | 1 << 2 | 0 << 4 | 0 << 6
	.BYTE 0 << 0 | 0 << 2 | 0 << 4 | 0 << 6
	.BYTE 0 << 0 | 1 << 2 | 0 << 4 | 0 << 6
	.BYTE 0 << 0 | 0 << 2 | 0 << 4 | 0 << 6
	.BYTE 1 << 0 | 0 << 2 | 0 << 4 | 0 << 6
	.BYTE 1 << 0 | 0 << 2 | 1 << 4 | 0 << 6

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00

;doorset
	.BYTE (gutsman_door_1_end - gutsman_door_1) / 2

gutsman_door_1:
	mapcoord 14, 16, 0
	mapcoord 14, 16, 1
	mapcoord 14, 12, 0
	mapcoord 14, 12, 1
gutsman_door_1_end:

	.BYTE (gutsman_door_2_end - gutsman_door_2) / 2

gutsman_door_2:
	mapcoord 14, 16, 2
	mapcoord 14, 16, 3
	mapcoord 14, 12, 2
	mapcoord 14, 12, 3
gutsman_door_2_end:

	.BYTE (gutsman_door_3_end - gutsman_door_3) / 2

gutsman_door_3:
	mapcoord 0, 12, 4
	mapcoord 0, 12, 5
	mapcoord 0, 16, 4
	mapcoord 0, 16, 5
gutsman_door_3_end:

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
	.BYTE $00, $00, $00, $00, $00
