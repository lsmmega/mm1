_check_collision:
	LDX z:zobject_ram_index
	LDA aobject_flag, X
	AND #objects_invisible
	BEQ @visible

@invisible:
	CLC
	RTS

@visible:
	LDY aobject_pointer, X
	LDA non_enemies_collision_xcoord, Y
	STA z:z01
	LDA non_enemies_collision_ycoord, Y
	STA z:z02
	LDA aobject_ycoord, X
	CMP #$F8
	BEQ @invisible
	SEC
	SBC z:z02
	STA z:z03
	ASL z:z02
	CLC
	ADC z:z02
	STA z:z02
	SEC
	LDA aobject_xcoord, X
	SBC z:zscreen_xcoord
	SEC
	SBC z:z01
	STA z:z00
	ASL z:z01
	CLC
	ADC z:z01
	STA z:z01
	LDA z:zboss_ai_pointer
	CMP #$05
	BCC @not_boss_collide_megaman_bullet
	LDA z:zboss_invincibility_time
	BNE @not_boss_collide_megaman_bullet
	LDX #$01
	JSR _check_collide_megaman_bullet
	BCC @boss_cant_collide_megaman_bullet
	STX z:z0C
	LDA z:zcurrent_boss
	ASL
	ASL
	ASL
	CLC
	ADC z:zcurrent_weapon
	TAX
	SEC
	LDA aobject_hp + 1
	SBC boss_damage_table, X
	BEQ @death
	BCS @not_death

@death:
	LDA #$00
	STA aobject_hp + 1
	JMP _boss_death

@not_boss_collide_megaman_bullet:
@boss_cant_collide_megaman_bullet:
	JMP @cant_collide_megaman_bullet

@not_death:
	STA aobject_hp + 1
	LDA z:zcurrent_stage
	CMP #stage_wily1
	BEQ @skip_invincibility_upper_object
	CMP #stage_wily4
	BEQ @skip_invincibility_upper_object
	LDX #$16
	JSR _check_object
	BCS @skip_invincibility_upper_object
	LDA z:zobject_ram_index
	PHA
	LDA #$01
	STA z:zobject_ram_index
	JSR _generate_object_common
	LDA #$19
	STA aobject_pointer, X
	INC aobject_frameset_timer, X
	LDY #$08
	JSR _object_speed_init
	LDA #$08
	STA aobject_flag, X
	STA aobject_ycoord_speed_fraction, X
	LDA aobject_ycoord, X
	LDY z:zcurrent_stage
	SEC
	SBC @invincibility_upper_object_ycoord, Y
	STA aobject_ycoord, X
	PLA
	STA z:zobject_ram_index

@skip_invincibility_upper_object:
	LDY z:zcurrent_boss
	LDA @boss_invincibility_time_table, Y
	STA z:zboss_invincibility_time
	JMP @invincibility_done

@cant_collide_megaman_bullet:
	LDA z:znmi_frame
	AND #%00000001
	CLC
	ADC #$10
	TAX

@loop_1:
	LDA aobject_flag, X
	AND #%10000000
	BNE @skip_check_1
	JSR _check_collide_megaman_bullet
	BCS @can_collide_megaman_bullet

@skip_check_1:
	INX
	INX
	CPX z:zsprites_pointer
	BCC @loop_1
	CLC
	RTS

@invincibility_upper_object_ycoord:
	.BYTE $04 ;cutman
	.BYTE $00 ;iceman
	.BYTE $00 ;bombman
	.BYTE $08 ;fireman
	.BYTE $00 ;elecman
	.BYTE $04 ;gutsman
	.BYTE $00 ;yellow devil
	.BYTE $00 ;copy robot
	.BYTE $00 ;cwu01p
	.BYTE $00 ;wily machine 1 phase 1
	.BYTE $00 ;wily machine 1 phase 2

@boss_invincibility_time_table:
	.BYTE $3F ;cutman
	.BYTE $1E ;iceman
	.BYTE $1E ;bombman
	.BYTE $1E ;fireman
	.BYTE $3F ;elecman
	.BYTE $1E ;gutsman
	.BYTE $09 ;yellow devil
	.BYTE $3F ;copy robot
	.BYTE $1E ;cwu01p
	.BYTE $09 ;wily machine 1 phase 1
	.BYTE $09 ;wily machine 1 phase 2

@can_collide_megaman_bullet:
	STX z:z0C
	LDA aobject_flag, X
	ORA #%10000000
	STA aobject_flag, X

@invincibility_done:
	track_queue track_enemy_hit
	LDX z:zobject_ram_index
	LDA aobject_flag, X
	AND #can_collide_megaman_bullet
	BNE @yes
	LDA #$F8
	STA aobject_ycoord, X

@yes:
	SEC
	RTS

_check_collide_megaman:
	LDA #can_collide_megaman
	BNE _check_collide_megaman_continue

_check_collide_megaman_bullet:
	LDA #can_collide_megaman_bullet

_check_collide_megaman_continue:
	AND aobject_flag, X
	BNE @yes
	CLC
	RTS

@yes:
	LDA aobject_ycoord, X
	CMP #$F8
	BEQ @not_collision
	LDY aobject_pointer, X
	CPY #$FF
	BNE @not_enemies
	LDY aobject_id, X
	LDA enemies_collision_xcoord, Y
	STA z:z0E
	LDA enemies_collision_ycoord, Y
	BNE @continue

@not_enemies:
	LDA non_enemies_collision_xcoord, Y
	STA z:z0E
	LDA non_enemies_collision_ycoord, Y

@continue:
	STA z:z0D
	SEC
	LDA aobject_ycoord, X
	SBC z:z0D
	CMP z:z02
	BCS @not_collision
	CLC
	LDA aobject_ycoord, X
	ADC z:z0D
	CMP z:z03
	BCC @not_collision
	SEC
	LDA aobject_xcoord, X
	SBC z:zscreen_xcoord
	STA z:z0C
	LDA aobject_screen, X
	SBC z:zscreen
	BNE @not_collision
	LDA z:z0C
	SEC
	SBC z:z0E
	BCC @not_collision
	CMP z:z01
	BEQ @collision
	BCS @not_collision
	CLC
	LDA z:z0C
	ADC z:z0E
	CMP z:z00
	BCC @not_collision

@collision:
	SEC
	RTS

@not_collision:
	CLC
	RTS
