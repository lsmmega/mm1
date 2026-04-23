draw_regular_frame_tiles_table:
	.BYTE $22, $24, $24, $24, $24, $26
	.BYTE $23, $21, $21, $21, $21, $27
	.BYTE $23, $21, $21, $21, $21, $27
	.BYTE $23, $21, $21, $21, $21, $27
	.BYTE $23, $21, $21, $21, $21, $27
	.BYTE $28, $25, $25, $25, $25, $29

draw_gutsman_frame_tiles_table:
	.BYTE $22, $24, $24, $24, $24, $26
	.BYTE $23, $30, $32, $34, $36, $27
	.BYTE $23, $31, $33, $35, $37, $27
	.BYTE $23, $38, $3A, $3C, $3E, $27
	.BYTE $23, $39, $3B, $3D, $3F, $27
	.BYTE $28, $25, $25, $25, $25, $29

draw_dr_wily_frame_tiles_table:
	.BYTE $22, $24, $24, $24, $24, $26
	.BYTE $23, $21, $21, $21, $21, $27
	.BYTE $23, $41, $43, $45, $47, $27
	.BYTE $23, $21, $4A, $4C, $4E, $27
	.BYTE $23, $49, $4B, $4D, $4F, $27
	.BYTE $28, $25, $25, $25, $25, $29

draw_stage_select_frame_coord_table:
	wleftscreencoord 9, 3
	wleftscreencoord 21, 11
	wleftscreencoord 17, 19
	wleftscreencoord 9, 19
	wleftscreencoord 5, 11
	wleftscreencoord 17, 3
	wleftscreencoord 13, 11

stage_select_regular_lo_attributes_table:
	.BYTE $C2
	.BYTE $D5
	.BYTE $E4
	.BYTE $E2
	.BYTE $D1
	.BYTE $C4
	.BYTE $D3

stage_select_regular_attributes_table:
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_0
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_0
	.BYTE topleft_palette_0 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_0
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3

;dr wily
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3

stage_select_dr_wily_lo_attributes_table:
	.BYTE $DB, $DC, $E3, $E4

stage_select_regular_lo_add_attributes_table:
	.BYTE $00, $01, $08, $09, $10, $11

stage_select_left_right_pressed_stage_table:
;right, left, not all regular stages clear
	.BYTE stage_gutsman, stage_elecman ;cutman
	.BYTE stage_bombman, stage_gutsman ;iceman
	.BYTE stage_fireman, stage_iceman  ;bombman
	.BYTE stage_elecman, stage_bombman ;fireman
	.BYTE stage_cutman,  stage_fireman ;elecman
	.BYTE stage_iceman,  stage_cutman  ;gutsman

;right, left, all regular stages clear
	.BYTE stage_gutsman, stage_wily1   ;cutman
	.BYTE stage_bombman, stage_gutsman ;iceman
	.BYTE stage_fireman, stage_iceman  ;bombman
	.BYTE stage_elecman, stage_bombman ;fireman
	.BYTE stage_wily1,   stage_fireman ;elecman
	.BYTE stage_iceman,  stage_cutman  ;gutsman
	.BYTE stage_cutman,  stage_elecman ;wily
