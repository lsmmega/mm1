_explosion:
	LDA #$0C
	STA z:ztimer

@loop_1:
	LDA z:ztimer
	AND #%00000011
	BNE @skip
	LDA z:ztiles_address
	STA z:zobject_ram_index
	LDX #$02
	JSR _check_object
	BCS @skip
	JSR _generate_object_common
	LDA z:zobject_pointer
	STA aobject_pointer, X
	LDA #$08
	STA aobject_flag, X
	LDA #$10
	STA aobject_frameset_timer, X
	LDA z:ztimer
	LSR
	LSR
	TAY
	LDA aobject_xcoord, X
	ADC explosion_before_xcoord_table - 1, Y
	STA aobject_xcoord, X
	LDA aobject_screen, X
	ADC explosion_before_screen_table - 1, Y
	STA aobject_screen, X
	CLC
	LDA aobject_ycoord, X
	ADC explosion_before_ycoord_table - 1, Y
	STA aobject_ycoord, X
	LDY #$08
	JSR _object_speed_init

@skip:
	JSR _explosion_timer
	BNE @loop_1
	LDA #$0B
	STA z:z0C
	LDA z:zobject_pointer
	STA z:z0D
	LDA #$00
	STA z:z0E

@loop_2:
	LDY z:ztiles_address
	LDX #$02
	JSR _check_object
	BCS @done
	JSR _create_explosion_object
	BPL @loop_2

@done:
	track_queue track_explosion
	RTS
