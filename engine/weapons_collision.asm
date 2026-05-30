_check_weapons_collision:
	LDA z:znmi_frame
	AND #%00000001
	CLC
	ADC #$10
	TAX

@loop:
	LDA aobject_flag, X
	AND #~objects_hitting_bullet
	STA aobject_flag, X
	INX
	INX
	CPX #$20
	BCC @loop
	LDA z:zcurrent_weapon
	ASL
	TAY
	LDA @jumptable, Y
	STA z:z04
	LDA @jumptable + 1, Y
	STA z:z05
	JMP (z04)

@jumptable:
	.WORD _mega_buster_collision
	.WORD _rolling_cutter_collision
	.WORD _ice_slasher_collision
	.WORD _hyper_bomb_collision
	.WORD _fire_storm_collision
	.WORD _thunder_beam_collision
	.WORD _super_arm_collision
	.WORD _magnet_beam_collision

_mega_buster_collision:
	LDX #$02
	LDA #$05

_general_collision:
	STA z:ztiles_address

@loop:
	STX z:zobject_ram_index
	JSR _check_collision
	LDX z:zobject_ram_index
	INX
	CPX z:ztiles_address
	BNE @loop
	RTS

_rolling_cutter_collision:
	LDX #$05
	LDA #$06
	BNE _general_collision

_ice_slasher_collision:
	LDX #$05
	STX z:zobject_ram_index
	JSR _check_collision
	BCS @collided
	RTS

@collided:
	LDA z:zboss_ai_pointer
	BNE @not_bosses
	LDX z:z0C
	LDA #$FF
	STA aobject_frozen_timer, X

@not_bosses:
	RTS

_hyper_bomb_collision:
	LDA z:zweapon_timer
	CMP #$92
	BCC @not_explosion
	LDX #$02
	LDA #$0E
	BNE _general_collision

@not_explosion:
	RTS

_fire_storm_collision:
	LDX #$05
	LDA #$07
	BNE _general_collision

_thunder_beam_collision:
	LDX #$05
	LDA z:zweapon_timer
	CMP #$FF
	BEQ @hit_guts_block

@loop:
	STX z:zobject_ram_index
	JSR _check_collision
	BCC @not_recoiled
	LDX z:z0C
	LDA aobject_pointer, X
	CMP #$3F
	BCC @not_recoiled
	CMP #$48
	BCC @recoiled
	CMP #$FF
	BNE @not_recoiled
	LDA aobject_id, X
	CMP #objects_super_cutter
	BEQ @recoiled
	CMP #objects_super_cutter_standby
	BNE @not_recoiled

@recoiled:
	JSR _recoil_thunder_beam
	LDA #$FE
	STA z:zweapon_timer

@not_recoiled:
	LDX z:zobject_ram_index
	INX
	CPX #$0C
	BNE @loop
	RTS

@hit_guts_block:
	LDA #$08
	BNE _general_collision

_super_arm_collision:
	LDX #$05

@loop:
	STX z:zobject_ram_index
	JSR _check_collision
	BCS @collided
	LDX z:zobject_ram_index

@undo:
	INX
	CPX #$08
	BNE @loop
	RTS

@collided:
	LDX z:zobject_ram_index
	LDY z:zcurrent_stage
	LDA aobject_pointer, X
	CMP hold_guts_block_object_table, Y
	BNE @undo

_super_arm_collision_common:
	SEC
	LDA aobject_ycoord, X
	SBC #$10
	STA z:z03
	SEC
	LDA aobject_xcoord, X
	SBC #$10
	STA z:z00
	LDA aobject_screen, X
	SBC #$00
	STA z:z01
	JSR _super_arm_thunder_beam_special_blockset_collision_common
	LDA z:zweapon_timer
	CMP #$10
	BCS @done
	LDA #$1F
	STA z:zweapon_timer

@done:
	RTS

_magnet_beam_collision:
	CLC
	RTS
