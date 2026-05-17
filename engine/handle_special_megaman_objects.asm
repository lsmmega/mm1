_handle_special_megaman_objects:
	CPY aobject_pointer
	BEQ @had_set
	STY aobject_pointer
	CPY #$14
	BNE @not_teleport_1
	track_queue track_teleport

@not_teleport_1:
	CPY #$12
	BNE @not_got_hit
	LDX #$16
	JSR _check_object
	BCS @exist
	LDY #$08
	JSR _object_speed_init
	LDA #$00
	STA z:zobject_ram_index
	JSR _generate_object_common
	LDA #$19
	STA aobject_pointer, X
	INC aobject_frameset_timer, X
	LDA #$08
	STA aobject_flag, X
	STA aobject_ycoord_speed_fraction, X
	JSR _write_special_object_xcoord_speed

@exist:
	track_queue track_megaman_hit

@not_got_hit:
	LDA #$01
	STA aobject_frameset_timer
	LDA #$00
	STA aobject_timer
	BEQ @continue

@had_set:
	CPY #$13
	BNE @run_short_frozen
	LDA aobject_frameset_timer
	AND #%00011111
	CMP #$01
	BNE @run_short_frozen

@continue:
	CPY #$14
	BEQ @run_short_frozen
	CPY #$6E
	BEQ @run_short_frozen
	LDA z:z00
	STA aobject_ycoord_speed_fraction
	LDA z:z01
	STA aobject_ycoord_speed

@run_short_frozen:
	CPY #$14
	BNE @not_teleport_2
	JSR _short_frozen

@not_teleport_2:
	RTS
