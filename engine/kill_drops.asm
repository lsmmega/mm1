_weapon_hitting_enemies:
	LDA aenemies_hitting_thread - $10, X
	BEQ @not_hitting
	RTS

@not_hitting:
	LDA z:zcurrent_weapon
	ASL
	TAY
	LDA weapon_damage_table_pointers, Y
	STA z:z04
	LDA weapon_damage_table_pointers + 1, Y
	STA z:z05
	LDY aobject_id, X
	SEC
	LDA aobject_hp, X
	SBC (z04), Y
	BCC _enemies_killed
	BEQ _enemies_killed
	STA aobject_hp, X
	LDA #$01
	RTS

_enemies_killed:
	LDA aobject_id, X
	PHA
	TAY
	LDA #$1B
	STA aobject_id, X
	LDA #$FF
	STA z:zenemies_screen_thread - $10, X
	JSR _clean_objects_speed
	STA aobject_frameset_timer, X
	STA aobject_timer, X
	STA aobject_flag, X
	STA aobject_frozen_timer, X
	LDA score_table, Y
	STA z:z05
	JSR _score_addition
	PLA
	CMP #objects_cwu_01p
	BEQ @skip
	LDA #100
	JSR _random_integer
	LDY #$3B
	LDX #$05

@loop:
	CMP item_drops_probability_table, X
	BCC @done
	INY
	DEX
	BPL @loop

@done:
	CPY #$3B
	BEQ @skip
	TYA
	JSR _generate_object
	BCS @skip
	LDA #can_collide_map | can_collide_megaman | objects_temporary
	STA aobject_flag, X
	LDY #$1C
	JSR _object_speed_init

@skip:
	LDX z:zobject_ram_index
	LDA #$00
	RTS

item_drops_probability_table:
;100 - real probability
	.BYTE 100 - 1  ;1up
	.BYTE 100 - 3  ;large life capsule
	.BYTE 100 - 5  ;large weapon capsule
	.BYTE 100 - 20 ;small life capsule
	.BYTE 100 - 35 ;small weapon capsule
	.BYTE 100 - 88 ;score ball

weapon_damage_table_pointers:
	.WORD mega_buster_damage_table
	.WORD rolling_cutter_damage_table
	.WORD ice_slasher_damage_table
	.WORD hyper_bomb_damage_table
	.WORD fire_storm_damage_table
	.WORD thunder_beam_damage_table
	.WORD super_arm_damage_table
