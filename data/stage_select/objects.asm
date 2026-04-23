stage_select_objects_table:
	.FEATURE FORCE_RANGE
;object id, ycoord, xcoord, right/left
	.BYTE $22, $34, $60, objects_right ;cutman 
	.BYTE $37, $74, $C0, objects_left  ;iceman 
	.BYTE $30, $B4, $A0, objects_left  ;bombman 
	.BYTE $3E, $B4, $60, objects_right ;fireman 
	.BYTE $47, $74, $40, objects_right ;elecman 
	.BYTE $4F, $2F, $A0, objects_left  ;gutsman 
	.BYTE $9A, $74, $80, objects_left  ;wily

boss_show_objects_speed_table:
;ycoord speed, fraction, xcoord speed, fraction
	.BYTE $02, $F0, $00, $00 ;cutman 
	.BYTE $03, $F0, $FE, $80 ;iceman 
	.BYTE $04, $F0, $FF, $00 ;bombman
	.BYTE $04, $F0, $00, $00 ;fireman
	.BYTE $03, $F0, $00, $80 ;elecman
	.BYTE $02, $44, $FE, $DC ;gutsman
	.BYTE $03, $F0, $FF, $80 ;wily

boss_show_objects_id_table:
	.BYTE $28 ;cutman 
	.BYTE $5C ;iceman 
	.BYTE $35 ;bombman
	.BYTE $5D ;fireman
	.BYTE $4C ;elecman
	.BYTE $55 ;gutsman
	.BYTE $9A ;wily

boss_show_landing_objects_id_table:
	.BYTE $24 ;cutman 
	.BYTE $38 ;iceman 
	.BYTE $31 ;bombman
	.BYTE $40 ;fireman
	.BYTE $49 ;elecman
	.BYTE $55 ;gutsman
	.BYTE $9A ;wily

boss_show_objects_tiles_add_table:
	.BYTE $80 ;cutman 
	.BYTE $A0 ;iceman 
	.BYTE $C0 ;bombman
	.BYTE $E0 ;fireman
	.BYTE $00 ;elecman
	.BYTE $30 ;gutsman
	.BYTE $60 ;wily

boss_show_oam_palette_table:
	.BYTE oam_palette_2 ;cutman 
	.BYTE oam_palette_0 ;iceman 
	.BYTE oam_palette_3 ;bombman
	.BYTE oam_palette_2 ;fireman
	.BYTE oam_palette_3 ;elecman
	.BYTE oam_palette_3 ;gutsman
	.BYTE oam_palette_2 ;wily

stage_select_animation:
	.WORD @cutman
	.WORD @iceman
	.WORD @bombman
	.WORD @fireman
	.WORD @elecman
	.WORD @gutsman
	.WORD @dr_wily

;object id, frame(s)
@cutman:
	.BYTE $22, 8
	.BYTE $24, 8
	.BYTE -1 ;end

@iceman:
	.BYTE $37, 16
	.BYTE $38, 8
	.BYTE $39
	.BYTE -1 ;end

@bombman:
	.BYTE $31, 48
	.BYTE $30, 32
	.BYTE -1 ;end

@fireman:
	.BYTE $3E, 16
	.BYTE $40, 8
	.BYTE $78, 16
	.BYTE $41, 8
	.BYTE $78, 16
	.BYTE $41, 8
	.BYTE $78, 16
	.BYTE $41, 8
	.BYTE $78
	.BYTE -1 ;end

@elecman:
	.BYTE $47, 16
	.BYTE $48, 8
	.BYTE $49
	.BYTE -1 ;end

@gutsman:
	.BYTE $4F, 14
	.BYTE $50, 14
	.BYTE -1 ;end

@dr_wily:
	.BYTE $9A
	.BYTE -1 ;end
