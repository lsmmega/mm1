_ladder_tsa:
	LDA aobject_flag
	ORA #%00010000
	EOR #objects_right
	STA aobject_flag
	LDA #$00
	STA aobject_frameset_timer
	STA aobject_timer
	LDA z:zladder_upper_xcoord
	CLC
	ADC #$08
	STA z:zobject_in_process_xcoord
	LDA aobject_screen
	STA z:zobject_in_process_screen
	JSR _objects_screen_moving

_climbing_ladder:
	LDA #$15
	STA aobject_pointer
	LDA z:zjoy1_pressed_bits
	AND #b_button
	BNE @fire
	LDA z:zjoy1_pressed
	AND #a_button | up_button | down_button
	BEQ @not_climbing
	AND #up_button | down_button
	BEQ @jump_on_ladder
	AND #up_button
	BEQ @climb_down
	LDY #$00
	LDX #$C0
	LDA z:zladder_flag
	AND #%00001100
	BNE @megaman_not_on_ladder_bottom
	LDA aobject_ycoord
	AND #%11110000
	SEC
	SBC #$0C
	STA aobject_ycoord
	JMP @jump_on_ladder

@megaman_not_on_ladder_bottom:
	AND #%00001000
	BNE @climbing
	LDA #$17
	STA aobject_pointer
	BNE @climbing

@climb_down:
	LDA z:zladder_flag
	CMP #$01
	BNE @megaman_not_on_ladder_top
	LDA aobject_ycoord
	CLC
	ADC #$0C
	STA aobject_ycoord

@megaman_not_on_ladder_top:
	LDY #$FF
	LDX #$40
	LDA z:zladder_flag
	AND #%00001100
	BNE @climbing
	LDA #$17
	STA aobject_pointer

@climbing:
	LDA aobject_timer
	BEQ @not_firing
	LDX #$00
	LDY #$00

@not_firing:
	STY aobject_ycoord_speed
	STX aobject_ycoord_speed_fraction
	JSR _check_tsa_collision
	LDA z:zladder_flag
	BEQ @jump_on_ladder
	JSR _objects_vertical_moving
	BCS @jump_on_ladder
	RTS

@fire:
	LDA z:zjoy1_pressed
	AND #left_button | right_button
	BEQ @not_pressed
	JSR _change_direction

@not_pressed:
	LDA #$1F
	STA aobject_timer
	JSR _use_weapons

@not_climbing:
	LDA aobject_frameset_timer
	AND #%11110000
	STA aobject_frameset_timer
	RTS

@jump_on_ladder:
	LDA #$40
	STA aobject_ycoord_speed_fraction
	LDA #$FF
	STA aobject_ycoord_speed
	JMP _handle_megaman_heavily_objects_unforced
