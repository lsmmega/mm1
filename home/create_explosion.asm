_create_explosion_object:
	.FEATURE FORCE_RANGE
	LDA aobject_ycoord, Y
	STA aobject_ycoord, X
	LDA aobject_xcoord, Y
	STA aobject_xcoord, X
	LDA aobject_screen, Y
	STA aobject_screen, X
	LDA z:z0D
	STA aobject_pointer, X
	LDY z:z0C
	LDA explosion_object_xcoord_speed_fraction, Y
	STA aobject_xcoord_speed_fraction, X
	LDA explosion_object_xcoord_speed, Y
	STA aobject_xcoord_speed, X
	LDA explosion_object_ycoord_speed_fraction, Y
	STA aobject_ycoord_speed_fraction, X
	LDA explosion_object_ycoord_speed, Y
	STA aobject_ycoord_speed, X
	LDA explosion_object_flag, Y
	ORA z:z0E
	STA aobject_flag, X
	LDA #$10
	STA aobject_frameset_timer, X
	LDA #$00
	STA aobject_frozen_timer, X
	STA aobject_timer, X
	DEC z:z0C
	RTS

explosion_object_xcoord_speed_fraction:
	.BYTE $00
	.BYTE $00
	.BYTE $00
	.BYTE $00
	.BYTE $60
	.BYTE $60
	.BYTE $60
	.BYTE $60
	.BYTE $00
	.BYTE $C0
	.BYTE $00
	.BYTE $E0

explosion_object_xcoord_speed:
	.BYTE +0
	.BYTE +2
	.BYTE +0
	.BYTE +2
	.BYTE +1
	.BYTE +1
	.BYTE +1
	.BYTE +1
	.BYTE +0
	.BYTE +0
	.BYTE +0
	.BYTE +0

explosion_object_ycoord_speed_fraction:
	.BYTE $00
	.BYTE $00
	.BYTE $00
	.BYTE $00
	.BYTE $60
	.BYTE $A0
	.BYTE $A0
	.BYTE $60
	.BYTE $C0
	.BYTE $00
	.BYTE $40
	.BYTE $00

explosion_object_ycoord_speed:
	.BYTE +2
	.BYTE +0
	.BYTE -2
	.BYTE +0
	.BYTE +1
	.BYTE -2
	.BYTE -2
	.BYTE +1
	.BYTE +0
	.BYTE +0
	.BYTE -1
	.BYTE +0

explosion_object_flag:
	.BYTE objects_left
	.BYTE objects_right
	.BYTE objects_left
	.BYTE objects_left
	.BYTE objects_right
	.BYTE objects_right
	.BYTE objects_left
	.BYTE objects_left
	.BYTE objects_left
	.BYTE objects_right
	.BYTE objects_left
	.BYTE objects_left
