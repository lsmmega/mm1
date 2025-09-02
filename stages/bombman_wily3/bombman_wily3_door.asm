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

;attributes
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2
	.BYTE topleft_palette_0 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_3

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00

;doorset
	.BYTE (bombman_wily3_door_1_end - bombman_wily3_door_1) / 2

bombman_wily3_door_1:
	mapdoorcoord 14, 16, 0
	mapdoorcoord 14, 16, 1
	mapdoorcoord 14, 12, 0
	mapdoorcoord 14, 12, 1
bombman_wily3_door_1_end:

	.BYTE (bombman_wily3_door_2_end - bombman_wily3_door_2) / 2

bombman_wily3_door_2:
	mapdoorcoord 6, 0, 2
	mapdoorcoord 6, 0, 3
	mapdoorcoord 8, 0, 2
	mapdoorcoord 8, 0, 3
bombman_wily3_door_2_end:

	.BYTE (bombman_wily3_door_3_end - bombman_wily3_door_3) / 2

bombman_wily3_door_3:
	mapdoorcoord 0, 20, 4
	mapdoorcoord 0, 20, 5
bombman_wily3_door_3_end:

;duplicate iceman wily2 door

	mapdoorcoord 0, 16, 5
	mapdoorcoord 0, 16, 6
	
	.BYTE (duplicate_iceman_wily2_door_1_end - duplicate_iceman_wily2_door_1) / 2

duplicate_iceman_wily2_door_1:
	mapdoorcoord 2, 0, 7
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
