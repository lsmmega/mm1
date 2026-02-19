clear_points_object_xcoord:
	.BYTE $80, $A0, $80, $88, $A0

clear_points_object_ycoord:
	.BYTE $40, $58, $68, $80, $80

clear_points_object_pointer:
	.BYTE $87, $89, $88, $8A, $89

_clear_points_object:
@loop:
	JSR _generate_object_common
	LDA clear_points_object_xcoord - 1, X
	STA aobject_xcoord, X
	LDA clear_points_object_ycoord - 1, X
	STA aobject_ycoord, X
	LDA clear_points_object_pointer - 1, X
	STA aobject_pointer, X
	LDA #$00
	STA aobject_flag, X
	DEX
	BNE @loop
	RTS
