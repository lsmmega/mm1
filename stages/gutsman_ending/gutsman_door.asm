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

;attributes
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_0
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0
	.BYTE topleft_palette_0 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_0
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_0

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00

gutsman_door:
	.BYTE (@end_1 - @start_1) / 2

@start_1:
	mapdoorcoord 14, 16, 0
	mapdoorcoord 14, 16, 1
	mapdoorcoord 14, 12, 0
	mapdoorcoord 14, 12, 1
@end_1:

	.BYTE (@end_2 - @start_2) / 2

@start_2:
	mapdoorcoord 14, 16, 2
	mapdoorcoord 14, 16, 3
	mapdoorcoord 14, 12, 2
	mapdoorcoord 14, 12, 3
@end_2:

	.BYTE (@end_3 - @start_3) / 2

@start_3:
	mapdoorcoord 0, 12, 4
	mapdoorcoord 0, 12, 5
	mapdoorcoord 0, 16, 4
	mapdoorcoord 0, 16, 5
@end_3:

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
