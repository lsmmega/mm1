_generate_object:
	PHA
	CMP #objects_enemies_bullet_palette_2
	BEQ @is_enemies_bullet
	CMP #objects_enemies_bullet_palette_3
	BNE @not_enemies_bullet

@is_enemies_bullet:
	track_queue track_enemy_bullet

@not_enemies_bullet:
	PLA
	PHA
	LDX #$10
	JSR _check_object
	BCS _generate_object_is_exist
	PLA

_generate_object_common:
	STA aobject_id, X
	LDA #$FF
	STA aobject_pointer, X
	LDY z:zobject_ram_index
	LDA aobject_ycoord, Y
	STA aobject_ycoord, X
	LDA aobject_xcoord, Y
	STA aobject_xcoord, X
	LDA aobject_screen, Y
	STA aobject_screen, X
	LDA aobject_flag, Y
	AND #objects_right
	ORA #can_collide_megaman
	STA aobject_flag, X
	LDA #$14
	STA aobject_hp, X
	LDA #$00
	STA aobject_frameset_timer, X
	STA aobject_timer, X
	STA aobject_frozen_timer, X
	CPX #$10
	BCC @not_enemies
	STA atrack_queue, X

@not_enemies:
	CLC
	RTS

_generate_object_is_exist:
	PLA
	RTS
