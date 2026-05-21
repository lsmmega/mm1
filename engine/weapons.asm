_run_weapons_trajectory:
	LDA z:zweapon_firing
	BMI @fire
	LDA z:zcurrent_weapon
	CMP #$06
	BNE @not_super_arm
	JSR _super_arm_special_blockset_collision

@not_super_arm:
	RTS

@fire:
	LDA z:zweapon_firing
	ORA #%01000000
	STA z:zweapon_firing
	LDA z:zcurrent_weapon
	AND #%00111111
	ASL
	TAX
	LDA @jumptable, X
	STA z:z04
	LDA @jumptable + 1, X
	STA z:z05
	JMP (z04)

@jumptable:
	.WORD _mega_buster_trajectory
	.WORD _rolling_cutter_trajectory
	.WORD _ice_slasher_trajectory
	.WORD _hyper_bomb_trajectory
	.WORD _fire_storm_trajectory
	.WORD _thunder_beam_trajectory
	.WORD _super_arm_trajectory
	.WORD _magnet_beam_trajectory

_rolling_cutter_trajectory:
	LDA z:zweapon_timer
	CMP #$0F
	BCS @skip_heavily_anim
	LDA aobject_pointer
	CMP #$09
	BEQ @use_heavily
	CMP #$15
	BEQ @use_heavily
	CMP #$17
	BNE @skip_heavily_anim

@use_heavily:
	LDA #$6F
	STA aobject_pointer
	BNE @continue

@skip_heavily_anim:
	LDA #$00
	STA aobject_timer
	LDA z:zweapon_timer
	CMP #$2A
	BCS @rolling_back
	JSR _weapons_trajectory

@continue:
	INC z:zweapon_timer
	SEC
	LDA aobject_ycoord_speed_fraction + 5
	SBC #$1A
	STA aobject_ycoord_speed_fraction + 5
	LDA aobject_ycoord_speed + 5
	SBC #$00
	STA aobject_ycoord_speed + 5
	RTS

@rolling_back:
	BNE @parameter_done
	LDA #$80
	STA z:zweapon_xcoord_speed_fraction
	LDA #$02
	STA z:zweapon_xcoord_speed
	INC z:zweapon_timer

@parameter_done:
	LDA aobject_flag + 5
	AND #~objects_right
	STA aobject_flag + 5
	SEC
	LDA aobject_xcoord
	SBC aobject_xcoord + 5
	STA z:z02
	LDA aobject_screen
	SBC aobject_screen + 5
	BCC @shoot_on_right
	LDA aobject_flag + 5
	ORA #objects_right
	STA aobject_flag + 5
	BNE @shoot_on_left

@shoot_on_right:
	LDA z:z02
	EOR #%11111111
	ADC #$01
	STA z:z02

@shoot_on_left:
	CLC
	LDA z:zweapon_xcoord_speed_fraction
	ADC #$08
	STA z:zweapon_xcoord_speed_fraction
	STA z:z00
	LDA z:zweapon_xcoord_speed
	ADC #$00
	STA z:zweapon_xcoord_speed
	STA z:z01
	SEC
	LDA aobject_ycoord + 5
	SBC aobject_ycoord
	STA z:z03
	LDX #$05
	JSR _bosses_shoot_object_with_255fraction_speed
	LDA z:z03
	CMP #$0C
	BCS @back_with_vertical
	LDA z:z02
	CMP #$0C
	BCC @done

@back_with_vertical:
	LDA z:zweapon_ycoord_speed_fraction
	ORA z:zweapon_ycoord_speed
	BEQ @back_horizontal
	SEC
	LDA z:zweapon_ycoord_speed_fraction
	SBC #$20
	STA z:zweapon_ycoord_speed_fraction
	LDA z:zweapon_ycoord_speed
	SBC #$00
	STA z:zweapon_ycoord_speed
	SEC
	LDA aobject_ycoord_speed_fraction + 5
	SBC z:zweapon_ycoord_speed_fraction
	STA aobject_ycoord_speed_fraction + 5
	LDA aobject_ycoord_speed + 5
	SBC z:zweapon_ycoord_speed
	STA aobject_ycoord_speed + 5

@back_horizontal:
	JSR _weapons_trajectory
	RTS

@done:
	LDA #$F8
	STA aobject_ycoord + 5
	LDA #$00
	STA z:zweapon_firing
	RTS

_hyper_bomb_trajectory:
	INC z:zweapon_timer
	LDA z:zweapon_timer
	CMP #$0F
	BCS @skip_heavily_anim
	LDA aobject_pointer
	CMP #$09
	BEQ @use_heavily
	CMP #$15
	BEQ @use_heavily
	CMP #$17
	BNE @skip_heavily_anim

@use_heavily:
	LDA #$6F
	STA aobject_pointer
	RTS

@skip_heavily_anim:
	LDA #$00
	STA aobject_timer
	LDA z:zweapon_timer
	CMP #$92
	BCS @explosion
	JSR _weapons_trajectory
	RTS

@explosion:
	BNE @run_explosion
	LDA #$0B
	STA z:z0C
	LDA #$5F
	STA z:z0D
	LDA #$00
	STA z:z0E
	LDX #$01

@loop_1:
	LDY #$05
	INX
	JSR _create_explosion_object
	BPL @loop_1
	track_queue track_explosion

@boom:
	JSR _weapons_trajectory
	RTS

@run_explosion:
	CMP #$A0
	BNE @boom
	LDA #$F8
	LDX #$02

@loop_2:
	STA aobject_ycoord, X
	INX
	CPX #$10
	BNE @loop_2
	LDA #$00
	STA z:zweapon_firing
	RTS

_fire_storm_trajectory:
	INC z:zweapon_timer
	LDA z:zweapon_timer
	CMP #$20
	BNE @running
	LDA #$F8
	STA aobject_ycoord + 6
	LDA #$00
	STA z:zweapon_firing
	RTS

@running:
	AND #%00000111
	TAX
	CLC
	LDA aobject_ycoord
	ADC flip_ycoord_trajectory_table, X
	STA aobject_ycoord + 6
	CLC
	LDA aobject_xcoord
	ADC flip_xcoord_trajectory_table, X
	STA aobject_xcoord + 6
	LDA aobject_screen
	ADC flip_screen_trajectory_table, X
	STA aobject_screen + 6
	RTS

flip_ycoord_trajectory_table:
	.BYTE +20
	.BYTE +14
	.BYTE +0
	.BYTE -14
	.BYTE -20
	.BYTE -14
	.BYTE +0
	.BYTE +14

flip_xcoord_trajectory_table:
	.BYTE +0
	.BYTE -14
	.BYTE -20
	.BYTE -14
	.BYTE +0
	.BYTE +14
	.BYTE +20
	.BYTE +14

flip_screen_trajectory_table:
	.BYTE +0
	.BYTE -1
	.BYTE -1
	.BYTE -1
	.BYTE +0
	.BYTE +0
	.BYTE +0
	.BYTE +0

_thunder_beam_trajectory:
	LDA z:zweapon_timer
	CMP #$FF
	BEQ @hit_special_blockset
	CMP #$FE
	BNE @regular

@hit_special_blockset:
	JMP @running

@regular:
	LDX #$05

@loop_1:
	LDA aobject_frameset_timer, X
	BEQ @zero

@mainloop_common:
	INX
	CPX #$0A
	BNE @loop_1
	BEQ @max

@zero:
	LDA aobject_ycoord, X
	CMP #$F8
	BEQ @mainloop_common
	LDA aobject_pointer, X
	SEC
	SBC #$62
	TAY
	LDA @object_table, Y
	STA aobject_pointer, X
	CLC
	LDA aobject_ycoord, X
	ADC @ycoord_table, Y
	STA aobject_ycoord, X
	LDA aobject_flag, X
	AND #objects_right
	BEQ @shoot_on_left
	CLC
	LDA aobject_xcoord, X
	ADC @xcoord_table, Y
	STA aobject_xcoord, X
	LDA aobject_screen, X
	ADC #$00
	JMP @screen_common

@shoot_on_left:
	SEC
	LDA aobject_xcoord, X
	SBC @xcoord_table, Y
	STA aobject_xcoord, X
	LDA aobject_screen, X
	SBC #$00

@screen_common:
	STA aobject_screen, X
	JMP @mainloop_common

@max:
	LDA z:znmi_frame
	AND #%00000001
	CLC
	ADC #$05
	TAX

@loop_2:
	LDA aobject_ycoord, X
	CMP #$F8
	BEQ @skip
	STA z:z0E
	LDA aobject_screen, X
	STA z:z0C
	LDA aobject_xcoord, X
	STA z:z0D
	LDY z:zspecial_blockset_index
	JSR _special_blockset_collision
	CMP #$82
	BNE @skip
	JMP _thunder_beam_special_blockset_collision

@skip:
	INX
	INX
	CPX #$0C
	BCC @loop_2

@running:
	JMP _weapons_trajectory

@xcoord_table:
	.BYTE $1C
	.BYTE $20
	.BYTE $20
	.BYTE $1C
	.BYTE $18
	.BYTE $1C
	.BYTE $1C
	.BYTE $1C

@ycoord_table:
	.BYTE $FC
	.BYTE $E8
	.BYTE $00
	.BYTE $1C
	.BYTE $10
	.BYTE $F4
	.BYTE $FC
	.BYTE $FC

@object_table:
	.BYTE $67
	.BYTE $68
	.BYTE $69
	.BYTE $63
	.BYTE $64
	.BYTE $65
	.BYTE $66
	.BYTE $67

_super_arm_trajectory:
	LDA z:zweapon_timer
	BNE @holding
	INC z:zweapon_timer
	RTS

@holding:
	CMP #$10
	BCS @throwing
	LDA aobject_pointer
	CMP #$12
	BEQ @invincibility
	CMP #$13
	BNE @not_shake

@invincibility:
	LDA #$00
	BEQ @continue

@not_shake:
	LDA #$2F

@continue:
	STA aobject_timer
	LDA aobject_flag
	AND #objects_right
	ORA #can_collide_megaman_bullet | objects_invisible
	STA aobject_flag + 5
	LDA aobject_screen
	STA aobject_screen + 5
	LDA aobject_xcoord
	STA aobject_xcoord + 5
	LDA aobject_ycoord
	SEC
	SBC #$1A
	STA aobject_ycoord + 5
	LDA #$00
	STA aobject_ycoord_speed_fraction + 5
	STA aobject_ycoord_speed + 5
	RTS

@throwing:
	LDA aobject_pointer
	CMP #$09
	BNE @running
	LDA z:zweapon_timer
	CMP #$1F
	BEQ @running
	INC z:zweapon_timer
	LDA #$6F
	STA aobject_pointer

@running:
	JSR _weapons_trajectory
	RTS

_magnet_beam_trajectory:
	LDA #$05
	STA z:zobject_ram_index
	LDX amagnet_beam_length
	BEQ @running
	LDA z:zjoy1_pressed
	AND #b_button
	BEQ @not_pressed
	LDA #$1F
	STA aobject_timer
	LDA amagnet_beam_length, X
	CMP #$41
	BEQ @max
	INC amagnet_beam_length, X

@max:
	ASL
	ADC #$10
	STA z:z0C
	AND #%00000111
	BNE @8_length
	CLC
	LDA z:z0C
	ADC #$08
	STA z:z0C

@8_length:
	LDA aobject_flag
	AND #objects_right
	STA aobject_flag, X
	BEQ @left
	CLC
	LDA aobject_xcoord
	ADC z:z0C
	STA amagnet_beam_xcoord, X
	LDA aobject_screen
	ADC #$00
	JMP @screen

@left:
	SEC
	LDA aobject_xcoord
	SBC z:z0C
	STA amagnet_beam_xcoord, X
	LDA aobject_screen
	SBC #$00

@screen:
	STA amagnet_beam_screen, X
	LDA aobject_ycoord
	STA amagnet_beam_ycoord, X
	JSR _magnet_beam_object_collision
	CPY #$01
	BNE @running

@not_pressed:
	LDA #$00
	STA amagnet_beam_length

@running:
	LDX #$05

@mainloop:
	CPX amagnet_beam_length
	BEQ @run_anim
	LDA amagnet_beam_timer, X
	BEQ @skip
	DEC amagnet_beam_timer, X
	BNE @run_anim
	LDA #$F8
	STA aobject_ycoord, X
	JMP @skip

@run_anim:
	LDA amagnet_beam_length, X
	AND #%01111100
	ASL
	STA z:z0D
	ADC #$08
	STA z:z0C
	SEC
	LDA amagnet_beam_xcoord, X
	SBC z:z0C
	STA aobject_xcoord, X
	LDA amagnet_beam_screen, X
	SBC #$00
	STA aobject_screen, X
	LDA amagnet_beam_frameset, X
	ASL
	ASL
	ASL
	PHA
	CMP z:z0D
	BEQ @max_length
	INC amagnet_beam_frameset, X
	BNE @not_max_length

@max_length:
	LDA #$00
	STA amagnet_beam_frameset, X

@not_max_length:
	PLA
	ASL
	ORA #$08
	CLC
	ADC aobject_xcoord, X
	STA aobject_xcoord, X
	LDA aobject_screen, X
	ADC #$00
	STA aobject_screen, X
	LDA amagnet_beam_ycoord, X
	STA aobject_ycoord, X

@skip:
	INX
	CPX #$10
	BNE @jmp_mainloop
	LDX #$05

@loop:
	LDA amagnet_beam_timer, X
	BNE @nz
	INX
	CPX #$10
	BNE @loop
	LDA #$00
	STA z:zweapon_firing

@nz:
	RTS

@jmp_mainloop:
	JMP @mainloop

_mega_buster_trajectory:
_ice_slasher_trajectory:
_weapons_trajectory:
	LDX #$02

@loop:
	LDA aobject_ycoord, X
	CMP #$F8
	BNE @not_hidden
	INX
	CPX #$10
	BNE @loop
	LDA #$00
	STA z:zweapon_firing
	STA z:zweapon_timer

@not_hidden:
	RTS

_use_weapons:
	LDA z:zcurrent_weapon
	TAX
	ASL
	TAY
	BEQ @able
	LDA z:zweapon_consume - 1, X
	BNE @able
	RTS

@able:
	LDA @jumptable, Y
	STA z:z04
	LDA @jumptable + 1, Y
	STA z:z05
	JMP (z04)

@jumptable:
	.WORD _use_mega_buster
	.WORD _use_rolling_cutter
	.WORD _use_ice_slasher
	.WORD _use_hyper_bomb
	.WORD _use_fire_storm
	.WORD _use_thunder_beam
	.WORD _use_super_arm
	.WORD _use_magnet_beam

_use_mega_buster:
	LDX #$02

@loop:
	LDA aobject_ycoord, X
	CMP #$F8
	BEQ @hidden
	INX
	CPX #$05
	BNE @loop
	BEQ @done

@hidden:
	LDA #$04
	JSR _set_weapon_attributes
	LDA #$1F
	STA aobject_timer
	track_queue track_mega_buster
	LDA #%11000000
	STA z:zweapon_firing

@done:
	LDX z:zobject_ram_index
	RTS

_use_rolling_cutter:
	LDA #$0E
	STA z:z0C
	JSR _use_weapons_heavily_common
	LDA #$80
	STA z:zweapon_ycoord_speed_fraction
	LDA #$02
	STA z:zweapon_ycoord_speed
	track_queue track_rolling_cutter
	JMP _calc_weapon_consume

_use_ice_slasher:
	LDA z:zcurrent_weapon
	ORA #%11000000
	STA z:zweapon_firing
	LDA #$05
	LDX #$05
	JSR _set_weapon_attributes
	BCS @exist
	LDA #$1F
	STA aobject_timer
	track_queue track_ice_slasher
	JMP _calc_weapon_consume

@exist:
	RTS

_use_hyper_bomb:
	LDA #$0D
	STA z:z0C
	JSR _use_weapons_heavily_common
	LDA #$03
	STA z:zhyper_bomb_ycoord_speed
	JSR _calc_weapon_consume

_use_weapons_heavily_common:
	LDA z:zweapon_firing
	BNE @running
	LDA z:zcurrent_weapon
	ORA #%11000000
	STA z:zweapon_firing
	LDA z:z0C
	LDX #$05
	JSR _set_weapon_attributes
	BCS @running
	LDA #$00
	STA z:zweapon_timer
	JSR _use_weapons_heavily
	RTS

@running:
	PLA
	PLA
	RTS

_use_fire_storm:
	LDA z:zcurrent_weapon
	ORA #%11000000
	STA z:zweapon_firing
	LDA #$00
	LDX #$05
	JSR _set_weapon_attributes
	BCS @exist
	LDA #$01
	LDX #$06
	JSR _set_weapon_attributes
	LDA #$1F
	STA aobject_timer
	LDA #$00
	STA z:zweapon_timer
	track_queue track_fire_storm
	JMP _calc_weapon_consume

@exist:
	LDA #$00
	STA aobject_timer
	RTS

_use_thunder_beam:
	LDA z:zweapon_firing
	BNE @running
	LDA z:zcurrent_weapon
	ORA #%11000000
	STA z:zweapon_firing
	LDA #$06

@loop:
	STA z:z0C
	TAX
	DEX
	JSR _set_weapon_attributes
	INC z:z0C
	LDA z:z0C
	CMP #$0D
	BNE @loop
	LDA #$00
	STA z:zweapon_timer
	LDA #$1F
	STA aobject_timer
	track_queue track_thunder_beam
	JMP _calc_weapon_consume

@running:
	RTS

_use_super_arm:
	LDA z:zweapon_firing
	AND #%01000000
	BNE @running
	LDY z:zsuper_arm_block_index
	CPY #$FF
	BEQ @none
	LDA z:zcurrent_weapon
	ORA #%10000000
	STA z:zweapon_firing
	LDA #$00
	STA z:zweapon_timer
	LDA #$04
	STA aspecial_blockset_type, Y
	JSR _find_replace_special_blockset
	JSR _update_stage_screen
	LDA #$F8
	STA aobject_ycoord + 5
	LDA #$02
	LDX #$05
	JSR _set_weapon_attributes
	LDY z:zcurrent_stage
	LDA hold_guts_block_object_table, Y
	STA aobject_pointer, X
	RTS

@none:
	LDA #$00
	STA aobject_timer
	RTS

@running:
	LDA z:zweapon_timer
	CMP #$10
	BCS @throwing
	LDA #$F8
	LDX #$05
	STA aobject_ycoord, X
	LDA #$03
	JSR _set_weapon_attributes
	LDA #$10
	STA z:zweapon_timer
	JSR _use_weapons_heavily
	LDY z:zcurrent_stage
	LDA hold_guts_block_object_table, Y
	STA aobject_pointer, X
	JMP _calc_weapon_consume

@throwing:
	RTS

hold_guts_block_object_table:
	.BYTE $6C ;cutman
	.BYTE $00 ;iceman
	.BYTE $00 ;bombman
	.BYTE $00 ;fireman
	.BYTE $6C ;elecman
	.BYTE $32 ;gutsman
	.BYTE $6C ;wily1
	.BYTE $6C ;wily2
	.BYTE $6C ;wily3
	.BYTE $6C ;wily4
	.BYTE $6C ;unknown

_use_magnet_beam:
	LDX #$05

@loop:
	LDA amagnet_beam_timer, X
	BEQ @none
	INX
	CPX #$0A
	BNE @loop
	RTS

@none:
	STX amagnet_beam_length
	LDA #$0F
	JSR _set_weapon_attributes
	LDA #$00
	STA amagnet_beam_length, X
	STA amagnet_beam_frameset, X
	LDA #$9C
	STA amagnet_beam_timer, X
	LDA z:zcurrent_weapon
	ORA #%11000000
	STA z:zweapon_firing
	track_queue track_magnet_beam

_calc_weapon_consume:
	LDX z:zcurrent_weapon
	INC z:zweapon_consume_fraction - 1, X
	LDA z:zweapon_consume_fraction - 1, X
	CMP @consume_fraction_table - 1, X
	BNE @done
	LDA #$00
	STA z:zweapon_consume_fraction - 1, X
	SEC
	LDA z:zweapon_consume - 1, X
	SBC @consume_table - 1, X
	STA z:zweapon_consume - 1, X

@done:
	RTS

@consume_fraction_table:
	.BYTE 1 ;rolling cutter
	.BYTE 1 ;ice slasher
	.BYTE 1 ;hyper bomb
	.BYTE 1 ;fire storm
	.BYTE 1 ;thunder beam
	.BYTE 1 ;super arm
	.BYTE 1 ;magnet beam

@consume_table:
	.BYTE 1 ;rolling cutter
	.BYTE 1 ;ice slasher
	.BYTE 2 ;hyper bomb
	.BYTE 1 ;fire storm
	.BYTE 1 ;thunder beam
	.BYTE 2 ;super arm
	.BYTE 2 ;magnet beam

_use_weapons_heavily:
	LDA #$00
	STA aobject_frameset_timer
	LDA aobject_pointer
	CMP #$09
	BNE @not_jump
	LDA #$00
	STA aobject_timer
	BEQ @done

@not_jump:
	CMP #$15
	BEQ @climbing
	CMP #$17
	BNE @not_ladder_top

@climbing:
	LDA #$1F
	STA aobject_timer
	BNE @done

@not_ladder_top:
	LDA aobject_flag
	AND #objects_temporary | objects_invisible | objects_right | objects_hitting_bullet
	ORA #$04
	STA aobject_flag

@done:
	RTS

_set_weapon_attributes:
	STA z:z0C
	ASL
	ASL
	ASL
	CLC
	ADC z:z0C
	TAY
	LDA aobject_ycoord, X
	CMP #$F8
	BEQ @hidden
	SEC
	RTS

@hidden:
	LDA @attributes, Y
	STA aobject_pointer, X
	LDA @attributes + 1, Y
	STA aobject_frameset_timer, X
	LDA aobject_flag
	AND #objects_right
	PHP
	ORA @attributes + 2, Y
	STA aobject_flag, X
	LDA #$00
	STA aobject_frozen_timer, X
	STA aobject_timer, X
	STA aobject_xcoord_fraction, X
	STA aobject_ycoord_fraction, X
	LDA @attributes + 3, Y
	STA aobject_ycoord_speed_fraction, X
	LDA @attributes + 4, Y
	STA aobject_ycoord_speed, X
	LDA @attributes + 5, Y
	STA aobject_xcoord_speed_fraction, X
	LDA @attributes + 6, Y
	STA aobject_xcoord_speed, X
	CLC
	LDA aobject_ycoord
	ADC @attributes + 7, Y
	CMP #$F8
	BNE @not_hidden
	LDA #$F9

@not_hidden:
	STA aobject_ycoord, X
	LDA aobject_xcoord
	PLP
	BEQ @left
	CLC
	ADC @attributes + 8, Y
	STA aobject_xcoord, X
	LDA aobject_screen
	ADC #$00
	JMP @done

@left:
	SEC
	SBC @attributes + 8, Y
	STA aobject_xcoord, X
	LDA aobject_screen
	SBC #$00

@done:
	STA aobject_screen, X
	CLC
	RTS

@attributes:
;object pointer, frameset timer, object flag, ycoord speed fraction, ycoord speed, xcoord speed fraction, xcoord speed, ycoord offset, xcoord offset, each 9 bytes
	.BYTE $60, $00, can_collide_megaman_bullet,                                       $00, $00, $00, $04, $00, $10
	.BYTE $61, $00, can_collide_megaman_bullet,                                       $00, $00, $00, $00, $EC, $00
	.BYTE $00, $00, can_collide_megaman_bullet | objects_invisible,                   $00, $00, $00, $00, $F0, $10
	.BYTE $6C, $00, can_collide_map | can_collide_megaman_bullet | objects_temporary, $00, $03, $A0, $03, $F0, $10
	.BYTE $1A, $00, $00,                                                              $00, $00, $00, $04, $00, $10
	.BYTE $5C, $00, can_collide_megaman_bullet,                                       $00, $00, $00, $04, $00, $10
	.BYTE $62, $40, can_collide_megaman_bullet,                                       $00, $00, $50, $01, $FC, $10
	.BYTE $63, $30, can_collide_megaman_bullet,                                       $00, $00, $50, $01, $08, $14
	.BYTE $64, $20, can_collide_megaman_bullet,                                       $00, $00, $50, $01, $FC, $18
	.BYTE $65, $10, can_collide_megaman_bullet,                                       $00, $00, $50, $01, $EC, $20
	.BYTE $66, $01, can_collide_megaman_bullet,                                       $00, $00, $50, $01, $EC, $28
	.BYTE $6A, $00, can_collide_megaman_bullet,                                       $00, $06, $00, $00, $F0, $10
	.BYTE $6B, $00, can_collide_megaman_bullet,                                       $00, $FA, $00, $00, $10, $10
	.BYTE $5D, $00, can_collide_map | objects_temporary,                              $00, $03, $80, $01, $FC, $0C
	.BYTE $5B, $00, can_collide_megaman_bullet,                                       $00, $02, $00, $02, $FC, $0C
	.BYTE $5E, $00, $00,                                                              $00, $00, $00, $00, $00, $00
