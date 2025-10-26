stage_select_character:
	.WORD @cutman
	.WORD @iceman
	.WORD @bombman
	.WORD @fireman
	.WORD @elecman
	.WORD @gutsman
	.WORD @dr_wily
	.WORD @press
	.WORD @start
	.WORD @clear_points

.INCLUDE "constants/lowerbits_charmap.asm"

@cutman:
	.BYTE "CUTMAN "

@iceman:
	.BYTE "ICEMAN "

@bombman:
	.BYTE "BOMBMAN"

@fireman:
	.BYTE "FIREMAN"

@elecman:
	.BYTE "ELECMAN"

@gutsman:
	.BYTE "GUTSMAN"

@dr_wily:
	.BYTE "D", $1B, "WILY "

@clear_points:
	.BYTE "CLEAR POINTS"

@select_stage:
	leftscreencoord 13, 12
	.BYTE "SELECT"

	leftscreencoord 13, 13
	.BYTE "STAGE "

@press:
	leftscreencoord 13, 15
	.BYTE "PRESS "

@start:
	leftscreencoord 13, 16
	.BYTE "START "
