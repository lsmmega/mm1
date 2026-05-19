_run_megaman_on_stage:
	LDA z:zrunning_type
	BEQ @not_on_water
	LDA z:znmi_frame
	AND #%00000011
	BNE @not_on_water
	LDA #$01
	STA z:zwater_delay
	INC aobject_frozen_timer
	RTS

@not_on_water:
	LDA #$00
	STA z:zwater_delay
	STA z:zrunning_type
	LDA z:zjoy1_pressed
	AND #left_button | right_button
	BEQ @not_change_direction
	LDA z:zjoy1_pressed_frame
	AND #left_button | right_button
	BNE @change_first
	LDA #$03
	STA aobject_pointer
	LDA #$00
	STA aobject_frameset_timer
	STA aobject_timer

@change_first:
	JSR _change_direction
	ORA #%10000000
	STA aobject_flag

@not_change_direction:
	JSR _ice_tsa_move
	LDA z:zentire_toward
	AND #objects_right
	BEQ @left
	JSR _objects_rightward
	JMP @continue_1

@left:
	JSR _objects_leftward

@continue_1:
	JSR _objects_screen_moving
	JSR _check_tsa_collision
	LDA z:zjoy1_pressed_bits
	AND #b_button
	BEQ @not_used
	JSR _use_weapons
	BNE @not_used

@not_used:
	LDA aobject_ycoord_speed
	BMI @start_landing
	JSR _objects_vertical_moving
	BCS @hit_wall_up
	LDA z:zjoy1_pressed
	AND #a_button
	BEQ @start_jump_down
	JMP @jump_up

@hit_wall_up:
	JMP @skip

@start_jump_down:
	LDA aobject_ycoord_speed
	BMI @jumping_down
	CMP #$01
	BCC @jumping_down
	BEQ @jumping_down
	LDA #$01
	STA aobject_ycoord_speed
	LDA #$00
	STA aobject_ycoord_speed_fraction

@jumping_down:
	JMP @jump_up

@start_landing:
	JSR _no_damage_collision
	PHA
	JSR _objects_vertical_moving
	BCS @hit_wall_down
	PLA
	BEQ @no_objects_collided
	STA aobject_ycoord
	BNE @continue_2

@no_objects_collided:
	JMP @jump_up

@hit_wall_down:
	PLA

@continue_2:
	LDA aobject_pointer
	CMP #$09
	BEQ @landing_from_jump
	CMP #$6F
	BNE @not_use_heavily
	LDA #$09
	STA aobject_pointer

@landing_from_jump:
	track_queue track_landing

@not_use_heavily:
	LDA z:zlast_ycoord
	CMP aobject_ycoord
	BCS @bottom
	LDA z:zjoy2_pressed
	AND #$00
	BEQ @bottom
	LDA aobject_flag
	AND #objects_right
	ORA #$02
	STA aobject_flag
	LDA aobject_ycoord
	STA z:zlast_ycoord
	RTS

@bottom:
	LDA aobject_ycoord
	STA z:zlast_ycoord
	LDA z:zjoy1_pressed_bits
	AND #a_button
	BNE @start_jump_up
	LDA aobject_flag
	AND #%10000000
	BNE @running
	LDA z:zjoy1_pressed_frame
	AND #left_button | right_button
	BNE @released
	LDA aobject_pointer
	CMP #$09
	BNE @not_jump
	LDA #$00
	STA z:zice_xcoord_speed_fraction
	STA z:zice_xcoord_speed
	LDA #$0F
	BNE @continue_3

@released:
	LDA aobject_pointer
	CMP #$06
	BNE @not_run_with_jump
	LDA #$0C

@continue_3:
	STA aobject_pointer
	LDA #$01
	STA aobject_frameset_timer

@not_jump:
	LDA aobject_frameset_timer
	BNE @skip

@not_run_with_jump:
	LDA #$00
	STA aobject_pointer
	STA aobject_frameset_timer
	BEQ @skip

@running:
	LDA aobject_pointer
	CMP #$09
	BEQ @run_with_jump
	CMP #$03
	BNE @skip
	LDA aobject_frameset_timer
	CMP #$22
	BNE @skip

@run_with_jump:
	LDA #$06
	STA aobject_pointer
	LDA #$00
	STA aobject_frameset_timer
	RTS

@start_jump_up:
	LDA #$04
	STA aobject_ycoord_speed
	LDA #$DF
	STA aobject_ycoord_speed_fraction
	RTS

@jump_up:
	LDA #$09
	STA aobject_pointer
	LDA #$00
	STA aobject_frameset_timer

@skip:
	RTS
