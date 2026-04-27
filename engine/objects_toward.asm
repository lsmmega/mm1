_objects_rightward:
	LDX z:zobject_ram_index
	CLC
	LDA aobject_xcoord_fraction, X
	ADC aobject_xcoord_speed_fraction, X
	STA z:zobject_in_process_xcoord_speed
	LDA aobject_xcoord, X
	ADC aobject_xcoord_speed, X
	TAY
	LDA aobject_screen, X
	ADC #$00
	LDX z:zobject_ram_index
	BEQ @is_megaman
	STA z:zobject_in_process_screen
	STY z:zobject_in_process_xcoord
	LDA aobject_flag, X
	AND #can_collide_map
	BNE @can_collide
	RTS

@is_megaman:
	CMP z:zscreen_end_of_right
	BEQ @on_right
	BCS @rightmost
	BNE @not_rightmost

@on_right:
	CPY #$EF
	BCC @not_rightmost

@rightmost:
	LDA z:zscreen_end_of_right
	LDY #$EF
	LDX #$02
	STX z:zscroll_end_direction
	LDX #$00

@not_rightmost:
	STA z:zobject_in_process_screen
	STY z:zobject_in_process_xcoord

@can_collide:
	LDY aobject_pointer, X
	CPY #$FF
	BNE @not_enemies
	LDY aobject_id, X
	LDA enemies_collision_xcoord, Y
	BNE @continue

@not_enemies:
	LDA non_enemies_collision_xcoord, Y

@continue:
	STA z:z10
	CLC
	LDA z:zobject_in_process_xcoord
	ADC z:z10
	STA z:z00
	LDA z:zobject_in_process_screen
	ADC #$00
	STA z:z01
	LDA aobject_ycoord, X
	STA z:z03
	JSR _check_object_ycoord_collision_with_background
	BEQ @is_background
	LDA z:z00
	AND #%11110000
	LDX z:zobject_ram_index
	SEC
	SBC z:z10
	STA z:zobject_in_process_xcoord
	LDA z:z01
	SBC #$00
	STA z:zobject_in_process_screen

@is_background:
	RTS

_objects_leftward:
	LDX z:zobject_ram_index
	SEC
	LDA aobject_xcoord_fraction, X
	SBC aobject_xcoord_speed_fraction, X
	STA z:zobject_in_process_xcoord_speed
	LDA aobject_xcoord, X
	SBC aobject_xcoord_speed, X
	TAY
	LDA aobject_screen, X
	SBC #$00
	LDX z:zobject_ram_index
	BEQ @is_megaman
	STA z:zobject_in_process_screen
	STY z:zobject_in_process_xcoord
	LDA aobject_flag, X
	AND #can_collide_map
	BNE @can_collide
	RTS

@is_megaman:
	CMP z:zscreen_end_of_left
	BMI @leftmost
	BEQ @on_left
	BCC @leftmost
	BNE @not_leftmost

@on_left:
	CPY #$10
	BCS @not_leftmost

@leftmost:
	LDA z:zscreen_end_of_left
	LDY #$10
	LDX #$04
	STX z:zscroll_end_direction
	LDX #$00

@not_leftmost:
	STA z:zobject_in_process_screen
	STY z:zobject_in_process_xcoord

@can_collide:
	LDY aobject_pointer, X
	CPY #$FF
	BNE @not_enemies
	LDY aobject_id, X
	LDA enemies_collision_xcoord, Y
	BNE @continue

@not_enemies:
	LDA non_enemies_collision_xcoord, Y

@continue:
	STA z:z10
	SEC
	LDA z:zobject_in_process_xcoord
	SBC z:z10
	STA z:z00
	LDA z:zobject_in_process_screen
	SBC #$00
	STA z:z01
	LDA aobject_ycoord, X
	STA z:z03
	JSR _check_object_ycoord_collision_with_background
	BEQ @is_background
	CLC
	LDX z:zobject_ram_index
	LDY aobject_pointer, X
	LDA z:z10
	ADC #$10
	STA z:z0F
	LDA z:z00
	AND #%11110000
	CLC
	ADC z:z0F
	STA z:zobject_in_process_xcoord
	LDA z:z01
	ADC #$00
	STA z:zobject_in_process_screen

@is_background:
	RTS
