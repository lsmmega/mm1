stage_select_character:
	.WORD stage_select_character_cutman
	.WORD stage_select_character_iceman
	.WORD stage_select_character_bombman
	.WORD stage_select_character_fireman
	.WORD stage_select_character_elecman
	.WORD stage_select_character_gutsman
	.WORD stage_select_character_dr_wily
	.WORD stage_select_character_press
	.WORD stage_select_character_start
	.WORD stage_select_character_clear_points

.INCLUDE "constants/lowerbits_charmap.asm"

stage_select_character_table:
stage_select_character_cutman:
	.BYTE "CUTMAN "

stage_select_character_iceman:
	.BYTE "ICEMAN "

stage_select_character_bombman:
	.BYTE "BOMBMAN"

stage_select_character_fireman:
	.BYTE "FIREMAN"

stage_select_character_elecman:
	.BYTE "ELECMAN"

stage_select_character_gutsman:
	.BYTE "GUTSMAN"

stage_select_character_dr_wily:
	.BYTE "D", $1B, "WILY "

stage_select_character_clear_points:
	.BYTE "CLEAR POINTS"

stage_select_select_stage_character_table:
	leftscreencoord 13, 12
	.BYTE "SELECT"

	leftscreencoord 13, 13
	.BYTE "STAGE "

stage_select_character_press:
	leftscreencoord 13, 15
	.BYTE "PRESS "

stage_select_character_start:
	leftscreencoord 13, 16
	.BYTE "START "
