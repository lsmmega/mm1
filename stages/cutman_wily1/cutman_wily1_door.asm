mapdoorset_16x16_tiles_table:
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

mapdoorset_attributes_table:
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_1
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_2
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_2
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2
	.BYTE topleft_palette_0 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_1
	.BYTE topleft_palette_0 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_1

;end
	.BYTE $00, $00, $00, $00, $00, $00

mapdoorset_table:
cutman_wily1_door:
cutman_wily1_door_0:
	.BYTE (cutman_wily1_door_0_end - cutman_wily1_door_0_start) / 2

cutman_wily1_door_0_start:
	mapdoorcoord 14, 16, 0
	mapdoorcoord 14, 16, 1
	mapdoorcoord 14, 12, 0
	mapdoorcoord 14, 12, 1
cutman_wily1_door_0_end:

cutman_wily1_door_1:
	.BYTE (cutman_wily1_door_1_end - cutman_wily1_door_1_start) / 2

cutman_wily1_door_1_start:
	mapdoorcoord 14, 16, 2
	mapdoorcoord 14, 16, 3
	mapdoorcoord 14, 12, 4
	mapdoorcoord 14, 12, 5
cutman_wily1_door_1_end:

cutman_wily1_door_2:
	.BYTE (cutman_wily1_door_2_end - cutman_wily1_door_2_start) / 2

cutman_wily1_door_2_start:
	mapdoorcoord 0, 12, 6
	mapdoorcoord 0, 12, 7
	mapdoorcoord 0, 16, 6
	mapdoorcoord 0, 16, 7
cutman_wily1_door_2_end:

cutman_wily1_door_3:
	.BYTE (cutman_wily1_door_3_end - cutman_wily1_door_3_start) / 2

cutman_wily1_door_3_start:
	mapdoorcoord 0, 4, 8
	mapdoorcoord 0, 4, 9
	mapdoorcoord 0, 8, 8
	mapdoorcoord 0, 8, 9
	mapdoorcoord 0, 12, 8
	mapdoorcoord 0, 12, 9
	mapdoorcoord 0, 16, 8
	mapdoorcoord 0, 16, 9
cutman_wily1_door_3_end:

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
