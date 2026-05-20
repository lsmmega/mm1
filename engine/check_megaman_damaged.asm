_check_megaman_damaged:
	SEC
	LDA aobject_xcoord
	SBC z:zscreen_xcoord
	SEC
	SBC #$07
	STA z:z00 ;left
	CLC
	ADC #$0E
	STA z:z01 ;right
	SEC
	LDA aobject_ycoord
	SBC #$0B
	STA z:z03 ;up
	CLC
	ADC #$16
	STA z:z02 ;down
	LDA z:zmegaman_invincibility_time
	BNE @cant_damage
	LDA z:zboss_ai_pointer
	CMP #$05
	BCC @cant_damage
	LDX #$01
	JSR _check_collide_megaman
	BCC @cant_damage
	LDA #$04
	STA z:z0C
	LDA z:zboss_object_flag
	JMP @damaged

@cant_damage:
	LDA z:znmi_frame
	AND #%00000001
	CLC
	ADC #$10
	TAX

@loop:
	JSR _check_collide_megaman
	BCS @can_damage

@skip:
	INX
	INX
	CPX z:zsprites_pointer
	BCC @loop
	RTS

@can_damage:
	LDA aobject_pointer, X
	CMP #$FF
	BNE @is_enemies
	LDA aobject_id, X
	CMP #$48
	BCS @is_enemies
	CMP #$3C
	BCC @is_enemies
	JMP _get_items

@is_enemies:
	LDA z:zmegaman_invincibility_time
	BNE @skip
	LDA aobject_pointer, X
	CMP #$FF
	BEQ @not_enemies
	CMP #$27 ;hyper bomb
	BEQ @2_times
	CMP #$32 ;guts block
	BEQ @2_times
	CMP #$4C
	BCC @normal_hit
	CMP #$54
	BCS @normal_hit
	LDA z:zcurrent_weapon
	CMP #$01
	BNE @normal_hit
	TXA
	PHA
	JSR _recoil_elecman_thunder_beam
	PLA
	TAX
	LDA #$0A
	STA z:z0C
	LDA aobject_flag, X
	EOR #objects_right
	BNE @damaged

@2_times:
	LDA aobject_flag, X
	ORA #objects_hitting_bullet
	STA aobject_flag, X

@normal_hit:
	LDY z:zcurrent_boss
	LDA bosses_hit_damage_table, Y
	BNE @continue

@not_enemies:
	LDA z:zboss_ai_pointer
	BNE @normal_hit
	LDA aobject_id, X
	TAY
	LDA enemies_hit_damage_table, Y

@continue:
	STA z:z0C
	LDA aobject_flag, X

@damaged:
	STA z:z0D
	SEC
	LDA z:zmegaman_hp
	SBC z:z0C
	STA z:zmegaman_hp
	BEQ @death
	BCS @not_death

@death:
	LDA #$00
	STA z:zmegaman_hp
	JMP _megaman_death

@not_death:
	LDA z:z0D
	AND #objects_right
	EOR #objects_right
	ORA #$03
	STA aobject_flag
	LDA #$6F
	STA z:zmegaman_invincibility_time
	RTS
