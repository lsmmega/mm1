_change_direction:
	LDA aobject_flag
	AND #~objects_right
	STA aobject_flag
	LDA z:zjoy1_pressed
	AND #right_button
	LSR
	ORA aobject_flag
	STA aobject_flag
	RTS
