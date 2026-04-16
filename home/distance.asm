_update_distance_speed:
	LDA z:z0C
	STA z:z02
	LDY z:zobject_ram_index
	SEC
	LDA aobject_ycoord, Y
	SBC aobject_ycoord
	STA z:z03
	JSR _bosses_shoot_object_with_255fraction_speed
	RTS
