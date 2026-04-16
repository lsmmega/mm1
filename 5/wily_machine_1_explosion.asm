_wily_machine_1_explosion:
	LDA #$0B
	STA z:z0C
	LDA #$FF
	STA z:z0D
	LDA #$02
	STA z:z0E
	BNE @continue

@loop:
	LDX #$10
	JSR _check_object
	BCS @exist

@continue:
	LDY z:zobject_ram_index
	JSR _create_explosion_object
	LDA #$28
	STA aobject_id, X
	LDA z:z0C
	BPL @loop

@exist:
	track_queue track_explosion
	RTS
