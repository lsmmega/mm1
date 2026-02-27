;background tile 16x16 id
	;     topleft, bottomleft, topright, bottomright
	.BYTE $10, $00, $10, $00
	.BYTE $00, $00, $00, $00
	.BYTE $28, $28, $10, $28
	.BYTE $28, $28, $28, $28
	.BYTE $29, $28, $10, $28
	.BYTE $29, $28, $29, $28
	.BYTE $10, $28, $28, $28
	.BYTE $10, $10, $28, $28
	.BYTE $06, $17, $06, $17
	.BYTE $17, $17, $17, $17

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00

;attributes
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_1
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_1
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1
	.BYTE topleft_palette_0 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1
	.BYTE topleft_palette_0 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_1
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_2
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2

;end
	.BYTE $00, $00, $00, $00, $00, $00

fireman_wily4_door:
fireman_wily4_door_0:
	.BYTE (fireman_wily4_door_0_end - fireman_wily4_door_0_start) / 2

fireman_wily4_door_0_start:
	mapdoorcoord 14, 16, 0
	mapdoorcoord 14, 16, 1
	mapdoorcoord 14, 12, 0
	mapdoorcoord 14, 12, 1
fireman_wily4_door_0_end:

fireman_wily4_door_1:
	.BYTE (fireman_wily4_door_1_end - fireman_wily4_door_1_start) / 2

fireman_wily4_door_1_start:
	mapdoorcoord 14, 16, 2
	mapdoorcoord 14, 16, 3
	mapdoorcoord 14, 12, 4
	mapdoorcoord 14, 12, 5
fireman_wily4_door_1_end:

fireman_wily4_door_2:
	.BYTE (fireman_wily4_door_2_end - fireman_wily4_door_2_start) / 2

fireman_wily4_door_2_start:
	mapdoorcoord 0, 12, 6
	mapdoorcoord 0, 12, 7
	mapdoorcoord 0, 16, 6
	mapdoorcoord 0, 16, 7
fireman_wily4_door_2_end:

fireman_wily4_door_3:
	.BYTE (fireman_wily4_door_3_end - fireman_wily4_door_3_start) / 2

fireman_wily4_door_3_start:
	mapdoorcoord 14, 20, 8
	mapdoorcoord 14, 20, 9
	mapdoorcoord 14, 16, 8
	mapdoorcoord 14, 16, 9
fireman_wily4_door_3_end:

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
	.BYTE $00, $00, $00, $00
