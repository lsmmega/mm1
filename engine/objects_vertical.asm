_objects_vertical_moving:
	LDX z:zobject_ram_index
	JSR @run_ycoord
	BCC @not_hidden
	LDX z:zobject_ram_index
	BNE @not_megaman_1
	LDA aobject_flag
	AND #objects_temporary
	BEQ @not_temporary_1
	CLC
	RTS

@not_megaman_1:
	LDA #$FF
	STA z:ztsa_blockset_pointers + 1
	RTS

@not_hidden:
	CPX #$00
	BEQ @is_megaman_1
	LDA aobject_flag, X
	AND #can_collide_map
	BEQ @is_background

@not_temporary_1:
@is_megaman_1:
	LDY aobject_pointer, X
	CPY #$FF
	BNE @not_enemies
	LDY aobject_id, X
	LDA enemies_collision_ycoord, Y
	BNE @continue

@not_enemies:
	LDA non_enemies_collision_ycoord, Y

@continue:
	STA z:z10
	LDA aobject_ycoord_speed, X
	BMI @jump
	LDA z:z10
	EOR #%11111111
	CLC
	ADC #$01
	JSR @check_collision_with_coord
	BEQ @is_background
	LDX z:zobject_ram_index
	CMP #$20
	BEQ @done
	LDA z:z03
	AND #%11110000
	CLC
	ADC #$10
	CLC
	ADC z:z10
	STA aobject_ycoord, X
	LDA #$00
	STA aobject_ycoord_fraction, X
	LDA #$FF
	STA aobject_ycoord_speed, X
	LDA #$40
	STA aobject_ycoord_speed_fraction, X
	BNE @done

@jump:
	LDA z:z10
	JSR @check_collision_with_coord
	BEQ @is_background
	LDX z:zobject_ram_index
	CMP #$20
	BEQ @done
	LDA z:z03
	AND #%11110000
	SEC
	SBC z:z10
	STA aobject_ycoord, X
	LDA #$00
	STA aobject_ycoord_fraction, X

@done:
	LDA #$FF
	STA aobject_ycoord_speed, X
	LDA #$40
	STA aobject_ycoord_speed_fraction, X
	SEC
	RTS

@is_background:
	SEC
	LDX z:zobject_ram_index
	BEQ @is_megaman_2
	LDA aobject_flag, X
	AND #objects_temporary
	BEQ @not_temporary_2

@is_megaman_2:
	LDA aobject_ycoord_speed_fraction, X
	SBC #$40
	STA aobject_ycoord_speed_fraction, X
	LDA aobject_ycoord_speed, X
	SBC #$00
	BPL @normal_ycoord_speed
	CMP #$F4
	BCS @normal_ycoord_speed
	LDA #$00
	STA aobject_ycoord_speed_fraction, X
	LDA #$F4

@normal_ycoord_speed:
	STA aobject_ycoord_speed, X

@not_temporary_2:
	LDA z:zobject_in_process_ycoord
	STA aobject_ycoord, X
	LDA z:zobject_in_process_ycoord_speed
	STA aobject_ycoord_fraction, X
	CLC
	RTS

@check_collision_with_coord:
	CLC
	ADC z:zobject_in_process_ycoord
	STA z:z03
	LDA aobject_screen, X
	STA z:z01
	LDA aobject_xcoord, X
	STA z:z00
	JSR _check_object_xcoord_collision_with_background
	RTS

@run_ycoord:
	SEC
	LDA aobject_ycoord_fraction, X
	SBC aobject_ycoord_speed_fraction, X
	STA z:zobject_in_process_ycoord_speed
	LDA aobject_ycoord, X
	SBC aobject_ycoord_speed, X
	STA z:zobject_in_process_ycoord
	CMP #$E8
	BCC @check_upper
	CMP #$F8
	BCS @edge
	LDA #$03
	BNE @downward

@check_upper:
	CMP #$04
	BCC @upward
	BCS @appeared

@edge:
	CMP #$FC
	BCS @appeared
	CPX #$00
	BNE @upward
	LDA aobject_ycoord_speed
	BMI @upward
	LDA aobject_ycoord_fraction
	STA z:zobject_in_process_ycoord_speed
	LDA aobject_ycoord
	STA z:zobject_in_process_ycoord

@upward:
	LDA #$01

@downward:
	CPX #$00
	BNE @not_megaman_2
	STA z:zscroll_end_direction

@not_megaman_2:
	SEC
	RTS

@appeared:
	CLC
	RTS
