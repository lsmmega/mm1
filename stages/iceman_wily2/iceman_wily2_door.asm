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
iceman_wily2_door_0:
	.BYTE (iceman_wily2_door_0_end - iceman_wily2_door_0_start) / 2

iceman_wily2_door_0_start:
	mapdoorcoord 14, 16, 0
	mapdoorcoord 14, 16, 1
	mapdoorcoord 14, 12, 0
	mapdoorcoord 14, 12, 1
iceman_wily2_door_0_end:

iceman_wily2_door_1:
	.BYTE (iceman_wily2_door_1_end - iceman_wily2_door_1_start) / 2

iceman_wily2_door_1_start:
	mapdoorcoord 14, 16, 2
	mapdoorcoord 14, 16, 1
	mapdoorcoord 14, 12, 3
	mapdoorcoord 14, 12, 4
iceman_wily2_door_1_end:

iceman_wily2_door_2:
	.BYTE (iceman_wily2_door_2_end - iceman_wily2_door_2_start) / 2

iceman_wily2_door_2_start:
	mapdoorcoord 0, 12, 5
	mapdoorcoord 0, 12, 6
	mapdoorcoord 0, 16, 5
	mapdoorcoord 0, 16, 6
iceman_wily2_door_2_end:

iceman_wily2_door_3:
	.BYTE (iceman_wily2_door_3_end - iceman_wily2_door_3_start) / 2

iceman_wily2_door_3_start:
	mapdoorcoord 2, 0, 7
iceman_wily2_door_3_end:

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
