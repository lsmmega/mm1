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

;attributes
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_2
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2
	.BYTE topleft_palette_0 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_3
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00

;doorset
	.BYTE (elecman_door_1_end - elecman_door_1) / 2

elecman_door_1:
	mapdoorcoord 14, 16, 0
	mapdoorcoord 14, 16, 1
	mapdoorcoord 14, 12, 0
	mapdoorcoord 14, 12, 1
elecman_door_1_end:

	.BYTE (elecman_door_2_end - elecman_door_2) / 2

elecman_door_2:
	mapdoorcoord 6, 24, 2
	mapdoorcoord 6, 24, 3
	mapdoorcoord 8, 24, 2
	mapdoorcoord 8, 24, 3
elecman_door_2_end:

	.BYTE (elecman_door_3_end - elecman_door_3) / 2

elecman_door_3:
	mapdoorcoord 14, 20, 5
	mapdoorcoord 14, 20, 6
	mapdoorcoord 14, 16, 5
	mapdoorcoord 14, 16, 7
elecman_door_3_end:

	.BYTE (elecman_door_4_end - elecman_door_4) / 2

elecman_door_4:
	mapdoorcoord 0, 20, 4
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
