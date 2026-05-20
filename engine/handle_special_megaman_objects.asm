_handle_megaman_heavily_objects:
	ASL
	TAX
	LDY megaman_heavily_objects_and_ycoord_speed_table - 2, X
	LDA megaman_heavily_objects_and_ycoord_speed_table - 1, X
	PHA
	AND #%11110000
	STA z:z00
	PLA
	AND #%00001111
	STA z:z01
	JSR _handle_special_megaman_objects
	LDA aobject_frameset_timer
	BEQ _handle_megaman_heavily_objects_unforced
	JSR _ice_tsa_move
	LDA z:zentire_toward
	LDX aobject_pointer
	CPX #$6E
	BEQ @use_weapons_heavily
	CPX #$14
	BNE @not_teleport
	LDX #$00
	STX aobject_xcoord_speed_fraction
	STX aobject_xcoord_speed

@use_weapons_heavily:
	EOR #objects_right

@not_teleport:
	AND #objects_right
	BNE @right
	JSR _objects_rightward
	JMP @continue

@right:
	JSR _objects_leftward

@continue:
	JSR _objects_screen_moving
	JSR _check_tsa_collision
	JSR _no_damage_collision
	PHA
	JSR _objects_vertical_moving
	PLA
	BEQ @not_landing
	STA aobject_ycoord

@not_landing:
	RTS

_handle_megaman_heavily_objects_unforced:
	LDA aobject_flag
	AND #objects_right
	STA aobject_flag
	LDA #$00
	STA aobject_pointer
	STA z:zjoy1_pressed_frame
	JMP _run_megaman_on_stage

megaman_heavily_objects_and_ycoord_speed_table:
;objects id, ycoord speed | ycoord speed fraction
	.BYTE $14, $00 | $00
	.BYTE $13, $00 | $E0
	.BYTE $12, $01 | $40
	.BYTE $6E, $00 | $00

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
