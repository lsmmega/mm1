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

;attributes
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_0 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_0 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_3

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00

iceman_wily2_door:
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
	mapdoorcoord 14, 16, 1
	mapdoorcoord 14, 12, 3
	mapdoorcoord 14, 12, 4
@end_2:

	.BYTE (@end_3 - @start_3) / 2

@start_3:
	mapdoorcoord 0, 12, 5
	mapdoorcoord 0, 12, 6
	mapdoorcoord 0, 16, 5
	mapdoorcoord 0, 16, 6
@end_3:

	.BYTE (@end_4 - @start_4) / 2
@start_4:
	mapdoorcoord 2, 0, 7
@end_4:

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
