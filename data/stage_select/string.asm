stage_select_string:
	.WORD stage_select_string_cutman
	.WORD stage_select_string_iceman
	.WORD stage_select_string_bombman
	.WORD stage_select_string_fireman
	.WORD stage_select_string_elecman
	.WORD stage_select_string_gutsman
	.WORD stage_select_string_dr_wily
	.WORD stage_select_string_press
	.WORD stage_select_string_start
	.WORD stage_select_string_clear_points

.INCLUDE "constants/lowerbits_charmap.asm"

stage_select_string_table:
stage_select_string_cutman:
	.BYTE "CUTMAN "

stage_select_string_iceman:
	.BYTE "ICEMAN "

stage_select_string_bombman:
	.BYTE "BOMBMAN"

stage_select_string_fireman:
	.BYTE "FIREMAN"

stage_select_string_elecman:
	.BYTE "ELECMAN"

stage_select_string_gutsman:
	.BYTE "GUTSMAN"

stage_select_string_dr_wily:
	.BYTE "D", $1B, "WILY "

stage_select_string_clear_points:
	.BYTE "CLEAR POINTS"

stage_select_select_stage_string_table:
	leftscreencoord 13, 12
	.BYTE "SELECT"

	leftscreencoord 13, 13
	.BYTE "STAGE "

stage_select_string_press:
	leftscreencoord 13, 15
	.BYTE "PRESS "

stage_select_string_start:
	leftscreencoord 13, 16
	.BYTE "START "
