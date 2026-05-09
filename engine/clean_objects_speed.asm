_clean_objects_speed:
	LDA #$00
	STA aobject_ycoord_speed_fraction, X
	STA aobject_ycoord_speed, X
	STA aobject_xcoord_speed_fraction, X
	STA aobject_xcoord_speed, X
	RTS
