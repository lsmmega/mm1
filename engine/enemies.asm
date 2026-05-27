_run_enemies_ai_code:
	LDA aobject_id, X
	ASL
	TAY
	LDA @jumptable, Y
	STA z:z04
	LDA @jumptable + 1, Y
	STA z:z05
	JMP (z04)

@jumptable:
;see constants/objects.asm
	.WORD _enemies_bunby_heli
	.WORD _enemies_metall
	.WORD _enemies_kamadoma
	.WORD _enemies_gabyoall
	.WORD _enemies_adhering_suzy_vertical
	.WORD _enemies_screw_driver_ground
	.WORD _enemies_watcher
	.WORD _enemies_pepe
	.WORD _enemies_killer_bomb
	.WORD _enemies_big_eye
	.WORD _enemies_mambu
	.WORD _enemies_blaster_left_delayed
	.WORD _enemies_thrower_delayed
	.WORD _enemies_bombombomb
	.WORD _enemies_fireball
	.WORD _enemies_flame_pillar
	.WORD _enemies_appearing_block_generator
	.WORD _enemies_super_cutter
	.WORD _enemies_sniper_joe
	.WORD _enemies_foot_holder
	.WORD _enemies_crazy_razy
	.WORD _enemies_pickelman
	.WORD _enemies_screw_driver_ceiling
	.WORD _enemies_blaster_right_delayed
	.WORD _enemies_fireball_standby
	.WORD _enemies_short_elec_beam
	.WORD _enemies_enemies_bullet_palette_2
	.WORD _enemies_cwu_01p_killed
	.WORD _enemies_super_cutter_standby
	.WORD _enemies_crazy_razy_head_1
	.WORD _enemies_crazy_razy_foot_1
	.WORD _enemies_crazy_razy_head_2
	.WORD _enemies_crazy_razy_hit
	.WORD _enemies_adhering_suzy_horizontal
	.WORD _enemies_blaster_left
	.WORD _enemies_blaster_right
	.WORD _enemies_thrower
	.WORD _enemies_short_elec_beam_delayed
	.WORD _enemies_bombombomb_cluster
	.WORD _enemies_appearing_block
	.WORD _enemies_bomb_explosion_cluster
	.WORD _enemies_crazy_razy_foot_2
	.WORD _enemies_watcher_move
	.WORD _enemies_watcher_elec_thrower
	.WORD _enemies_track_platform
	.WORD _enemies_enemies_bullet_palette_3
	.WORD _enemies_pickaxe
	.WORD _enemies_2f
	.WORD _enemies_30
	.WORD _enemies_changkey
	.WORD _enemies_32_palette_alternate
	.WORD _enemies_copy_robot_rolling_cutter
	.WORD _enemies_copy_robot_ice_slasher
	.WORD _enemies_copy_robot_hyper_bomb
	.WORD _enemies_copy_robot_fire_storm_flame
	.WORD _enemies_copy_robot_fire_storm_shield
	.WORD _enemies_yellow_devil_parts
	.WORD _enemies_yellow_devil_1
	.WORD _enemies_cwu_01p
	.WORD _enemies_3b
	.WORD _enemies_score_ball
	.WORD _enemies_small_weapon_capsule
	.WORD _enemies_small_life_capsule
	.WORD _enemies_large_weapon_capsule
	.WORD _enemies_large_life_capsule
	.WORD _enemies_1up
	.WORD _enemies_magnet_beam
	.WORD _enemies_teleport
	.WORD _enemies_heart_part
	.WORD _enemies_yashichi
	.WORD _enemies_46
	.WORD _enemies_47
	.WORD _enemies_wily_machine_1_large_bullet_move
	.WORD _enemies_wily_machine_1_large_bullet_sprites
	.WORD _enemies_all_stages_clear

_enemies_bunby_heli:
	LDA aobject_timer, X
	BNE @running
	JSR _enemies_face_to_megaman
	CMP #$28
	BCC @do
	JMP @skip

@do:
	SEC
	LDA aobject_ycoord
	SBC aobject_ycoord, X
	PHP
	BCS @enemies_on_left
	EOR #%11111111
	ADC #$01

@enemies_on_left:
	TAX
	LDY #$00
	LDA #$18
	JSR _255fraction_div_to_constants
	LDX z:zobject_ram_index
	LDA z:z04
	STA aobject_ycoord_speed_fraction, X
	LDA z:z05
	STA aobject_ycoord_speed, X
	PLP
	BCC @enemies_on_right
	JSR _xor_ycoord_speed

@enemies_on_right:
	LDA #$33
	STA aobject_timer, X
	LDA #$00
	STA aobject_xcoord_speed_fraction, X
	STA aobject_xcoord_speed, X

@running:
	LDA aobject_timer, X
	CMP #$1B
	BCC @le1b
	CLC
	LDA aobject_xcoord_speed_fraction, X
	ADC #$18
	STA aobject_xcoord_speed_fraction, X
	LDA aobject_xcoord_speed, X
	ADC #$00
	STA aobject_xcoord_speed, X
	JMP @done

@le1b:
	CMP #$1A
	BNE @xor_done
	JSR _xor_ycoord_speed

@xor_done:
	CLC
	LDA aobject_xcoord_speed_fraction, X
	ADC #$04
	STA aobject_xcoord_speed_fraction, X
	LDA aobject_xcoord_speed, X
	ADC #$00
	STA aobject_xcoord_speed, X

@done:
	DEC aobject_timer, X
	BNE @skip
	LDA #$00
	STA aobject_ycoord_speed, X
	STA aobject_ycoord_speed_fraction, X
	LDA #$01
	STA aobject_xcoord_speed, X
	LDA #$20
	STA aobject_xcoord_speed_fraction, X

@skip:
	JSR _check_enemies_collision
	RTS

_xor_ycoord_speed:
	CLC
	LDA aobject_ycoord_speed_fraction, X
	EOR #%11111111
	ADC #$01
	STA aobject_ycoord_speed_fraction, X
	LDA aobject_ycoord_speed, X
	EOR #%11111111
	ADC #$00
	STA aobject_ycoord_speed, X
	RTS

_enemies_metall:
	JSR _check_frozen_collision
	LDA aobject_frameset_timer, X
	AND #%11110000
	BEQ @closed
	LDY #$10
	LDA aobject_timer, X
	BEQ @next_random
	CMP #$10
	BNE @done
	LDA #$02
	STA z:z0C

@loop: ;shoot
	LDA #$2D
	JSR _generate_object
	BCS @exist
	SEC
	LDA aobject_ycoord, X
	SBC #$04
	STA aobject_ycoord, X
	LDA z:z0C
	ASL
	ASL
	ADC #$4C
	TAY
	JSR _object_speed_init
	DEC z:z0C
	BPL @loop

@exist:
	LDX z:zobject_ram_index
	LDY #$10
	BNE @done

@next_random:
	LDA #$03
	JSR _random_integer
	LDX z:zobject_ram_index
	TAY
	LDA @random_timer_table, Y
	STA aobject_timer, X
	LDY #$00
	BEQ @done

@closed:
	JSR _enemies_face_to_megaman
	STA z:z0C
	LDY #$00
	LDA aobject_timer, X
	BNE @done
	LDA z:z0C
	CMP #$58
	BCS @dont_shoot
	LDA #$20
	STA aobject_timer, X
	LDY #$10

@done:
	DEC aobject_timer, X

@dont_shoot:
	TYA
	STA aobject_frameset_timer, X
	JSR _check_immnue_hit
	JSR _check_enemies_collision
	RTS

@random_timer_table:
	.BYTE $1F, $3E, $9C

_enemies_big_eye:
	LDA #$6C
	BNE _enemies_big_eye_kamadoma_common

_enemies_kamadoma:
	LDA #$00

_enemies_big_eye_kamadoma_common:
	STA z:z0C
	LDA aobject_frameset_timer, X
	CMP #$10
	BCC @stop
	LDA z:znmi_frame
	AND #%00000011
	BEQ @skip
	LDA aobject_ycoord_speed, X
	PHP
	JSR _check_enemies_collision
	PLP
	BPL @not_landing
	LDA z:ztsa_blockset_pointers + 1
	BEQ @not_landing
	LDA aobject_id, X
	CMP #objects_big_eye
	BNE @not_big_eye
	track_queue track_big_eye
	LDX z:zobject_ram_index

@not_big_eye:
	LDA #$0F
	STA aobject_timer, X
	LDA #$00
	STA aobject_xcoord_speed_fraction, X
	STA aobject_xcoord_speed, X
	BEQ @done

@not_landing:
	LDA aobject_id, X
	CMP #$1B
	BEQ @skip
	LDA #$10

@done:
	STA aobject_frameset_timer, X

@skip:
	RTS

@stop:
	LDA #$00
	DEC aobject_timer, X
	BNE @had_got_distance
	JSR _enemies_face_to_megaman
	LDA z:zrandom
	AND #%00000001
	ASL
	ASL
	ADC z:z0C
	TAY
	JSR _object_speed_init
	LDA #$10

@had_got_distance:
	STA aobject_frameset_timer, X
	JSR _check_enemies_collision
	RTS

_enemies_gabyoall:
	LDA aobject_flag, X
	AND #objects_hitting_bullet
	BEQ @not_hitting
	LDA #$7E
	STA aobject_frozen_timer, X

@not_hitting:
	LDY #$00
	SEC
	LDA aobject_ycoord, X
	SBC #$08
	CMP aobject_ycoord
	BNE @not_same_ycoord
	INY

@not_same_ycoord:
	LDA @xcoord_speed_fraction_table, Y
	STA aobject_xcoord_speed_fraction, X
	LDA @xcoord_speed_table, Y
	STA aobject_xcoord_speed, X
	JSR _check_enemies_collision
	LDA z:ztsa_blockset_pointers
	BEQ @air

@not_wall:
	LDA aobject_flag, X
	EOR #objects_right
	STA aobject_flag, X
	RTS

@air:
	LDY #$00
	LDA aobject_flag, X
	AND #objects_right
	BNE @right
	LDY #$02

@right:
	CLC
	LDA aobject_xcoord, X
	ADC @xcoord_collision_table + 1, Y
	STA z:z00
	LDA aobject_screen, X
	ADC @xcoord_collision_table, Y
	STA z:z01
	CLC
	LDA aobject_ycoord, X
	ADC #$06
	STA z:z03
	JSR _check_object_xcoord_collision_with_background
	LDA z:ztsa_blockset_pointers + 1
	CMP #$01
	BNE @not_wall
	RTS

@xcoord_collision_table:
	.BYTE $00, $10, $FF, $F0

@xcoord_speed_fraction_table:
	.BYTE $61, $E0

@xcoord_speed_table:
	.BYTE $00, $01

_enemies_adhering_suzy_vertical:
_enemies_adhering_suzy_horizontal:
	LDA aobject_ycoord_speed, X
	PHA
	JSR _check_enemies_collision
	BCS @skip
	LDA aobject_id, X
	CMP #$1B
	BEQ @skip
	PLA
	STA aobject_ycoord_speed, X
	LDA #$00
	STA aobject_ycoord_speed_fraction, X
	LDA aobject_timer, X
	BEQ @count_down_done
	DEC aobject_timer, X
	BNE @running
	LDA #$30
	STA aobject_frameset_timer, X
	LDA aobject_flag, X
	EOR #objects_right
	STA aobject_flag, X
	JSR _xor_ycoord_speed
	RTS

@count_down_done:
	LDA z:ztsa_blockset_pointers
	ORA z:ztsa_blockset_pointers + 1
	BEQ @running
	LDA #$10
	STA aobject_frameset_timer, X
	LDA z:zrandom
	AND #%00000001
	TAY
	LDA @timer_table, Y
	STA aobject_timer, X

@running:
	LDA aobject_frameset_timer, X
	AND #%00010000
	BNE @half
	LDA aobject_frameset_timer, X
	AND #%11110000
	STA aobject_frameset_timer, X

@half:
	RTS

@skip:
	PLA
	RTS

@timer_table:
	.BYTE $3F, $7E

_enemies_watcher:
	LDA aobject_frameset_timer, X
	AND #%11110000
	BNE @run_watcher_move
	LDA aobject_flag, X
	AND #%00001000
	BNE @run_close_anim
	LDY #$00
	SEC
	LDA aobject_ycoord
	SBC aobject_ycoord, X
	BCS @enemies_on_bottom
	EOR #%11111111
	ADC #$01
	LDY #$02

@enemies_on_bottom:
	CMP #$28
	PHP
	LDA @ycoord_speed_table, Y
	STA aobject_ycoord_speed_fraction, X
	LDA @ycoord_speed_table + 1, Y
	STA aobject_ycoord_speed, X
	PLP
	BCC @run_watcher_move

@run_close_anim:
	LDA #$00
	STA aobject_frameset_timer, X

@run_watcher_move:
	JSR _check_enemies_collision
	LDA aobject_frameset_timer, X
	CMP #$20
	BNE @had_opened
	LDA #objects_watcher_move
	STA aobject_id, X
	LDA #$00
	STA aobject_frameset_timer, X

@had_opened:
	RTS

@ycoord_speed_table:
	.BYTE $60, $FF ;bottom
	.BYTE $A0, $00 ;top

_enemies_pepe:
_enemies_killer_bomb:
	LDA aobject_flag, X
	AND #objects_invisible
	BNE @invisible
	JSR _enemies_loop_on_screen
	BCS @invisible
	LDY #$00
	LDA aobject_timer, X
	CMP #$40
	BCC @down
	CMP #$80
	BCC @up
	LDA #$00
	STA aobject_timer, X
	TAY
	BEQ @down

@up:
	LDY #$02

@down:
	CLC
	LDA aobject_ycoord_speed_fraction, X
	ADC @ycoord_speed_table, Y
	STA aobject_ycoord_speed_fraction, X
	LDA aobject_ycoord_speed, X
	ADC @ycoord_speed_table + 1, Y
	STA aobject_ycoord_speed, X
	INC aobject_timer, X
	RTS

@ycoord_speed_table:
	.BYTE $10, $00, $F0, $FF

@invisible:
	JSR _enemies_killing_loop
	LDY #$10
	LDA aobject_id, X
	CMP #objects_pepe
	BEQ @is_pepe
	LDY #$16

@is_pepe:
	SEC
	STY z:z0C
	LDA aobject_ycoord
	SBC z:z0C
	STA aobject_ycoord, X
	LDY #$40
	JSR _object_speed_init
	RTS

_enemies_killing_loop:
	LDA aobject_flag, X
	AND #%00001000
	BNE @hidden
	DEC aobject_timer, X
	BNE @killing
	CLC
	LDA #can_collide_megaman | can_collide_megaman_bullet
	STA aobject_flag, X
	LDA z:zscreen_xcoord
	ADC #$F8
	STA aobject_xcoord, X
	LDA z:zscreen
	ADC #$00
	STA aobject_screen, X
	RTS

@killing:
	LDA #$D8
	STA aobject_ycoord, X
	LDA aobject_xcoord
	STA aobject_xcoord, X
	LDA aobject_screen
	STA aobject_screen, X
	PLA
	PLA
	RTS

@hidden:
	LDA #$F8
	STA aobject_ycoord, X
	PLA
	PLA
	RTS

_enemies_mambu:
	JSR _check_frozen_collision
	LDA aobject_flag, X
	AND #objects_invisible
	BNE @invisible
	INC aobject_timer, X
	JSR _check_immnue_hit
	JSR _enemies_loop_on_screen
	BCC @visible

@invisible:
	JSR _enemies_killing_loop
	LDA #$80
	STA aobject_ycoord, X
	LDA #$20
	STA aobject_xcoord_speed_fraction, X
	LDA #$01
	STA aobject_xcoord_speed, X
	LDA #$00
	STA aobject_ycoord_speed_fraction, X
	STA aobject_ycoord_speed, X
	RTS

@visible:
	LDA aobject_timer, X
	CMP #$38
	BCC @soild_anim
	BNE @had_stopped
	LDA #$00
	STA aobject_xcoord_speed, X
	STA aobject_xcoord_speed_fraction, X
	LDA #$10
	BNE @continue

@had_stopped:
	CMP #$48
	BCC @soild_anim
	BNE @had_shoot
	LDA aobject_frozen_timer, X
	BNE @skip
	LDA #$1C
	STA z:z0D

@loop:
	LDA #$2D
	JSR _generate_object
	BCS @skip
	LDY z:z0D
	JSR _object_speed_init
	TYA
	CLC
	ADC #objects_temporary
	AND #objects_right
	EOR aobject_flag, X
	STA aobject_flag, X
	INY
	INY
	INY
	INY
	STY z:z0D
	CPY #$3C
	BCC @loop

@skip:
	RTS

@had_shoot:
	CMP #$58
	BCC @soild_anim
	LDA #$20
	STA aobject_xcoord_speed_fraction, X
	LDA #$01
	STA aobject_xcoord_speed, X
	LDA #$00
	STA aobject_timer, X
	BEQ @continue

@soild_anim:
	LDA aobject_frameset_timer, X
	AND #%11110000

@continue:
	STA aobject_frameset_timer, X
	RTS

_enemies_loop_on_screen:
	LDA z:zenemies_screen_thread - $10, X
	PHA
	LDA aobject_id, X
	PHA
	JSR _check_enemies_collision
	LDA aobject_flag, X
	AND #%00001000
	BNE @not_killed
	BCS @not_arrived
	LDA aobject_id, X
	CMP #$1B
	BNE @not_killed
	PLA
	PHA
	CMP #objects_killer_bomb
	BEQ @is_killer_bomb

@killed_back:
	LDA #$00
	JSR _generate_object
	BCS @exist
	LDA #objects_invisible
	STA aobject_flag, X
	LDA #$48
	BNE @continue

@not_arrived:
	LDA #$01

@continue:
	STA aobject_timer, X
	LDA #$00
	STA aobject_frozen_timer, X
	PLA
	STA aobject_id, X
	PLA
	STA z:zenemies_screen_thread - $10, X
	LDA #$14
	STA aobject_hp, X
	SEC
	RTS

@not_killed:
	PLA
	PLA
	CLC
	RTS

@exist:
	PLA
	PLA
	PLA
	PLA
	RTS

@is_killer_bomb:
	JSR _enemies_explosion
	JMP @killed_back

_enemies_explosion:
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
	BCS @done

@continue:
	LDY z:zobject_ram_index
	JSR _create_explosion_object
	LDA #$28
	STA aobject_id, X
	LDA z:z0C
	BPL @loop

@done:
	track_queue track_explosion
	RTS

_enemies_blaster_left_delayed:
_enemies_blaster_right_delayed:
_enemies_blaster_left:
_enemies_blaster_right:
	JSR _check_frozen_collision
	JSR _check_immnue_hit
	JSR _check_enemies_collision
	INC aobject_timer, X
	LDA aobject_frameset_timer, X
	CMP #$40
	BCS @last_shoot
	CMP #$30
	BCS @check_shooting
	LDA aobject_timer, X
	CMP #$4D
	BCC @undo
	BCS @skip

@check_shooting:
	BNE @had_shoot
	LDA #$00
	STA aobject_timer, X

@had_shoot:
	LDA aobject_timer, X
	STA z:z0C
	AND #%00011111
	BNE @bullet_done
	LDA #$2D
	JSR _generate_object
	BCS @exist
	LDY #$F9
	LDA aobject_flag, X
	AND #objects_right
	BEQ @left
	LDY #$07

@left:
	CLC
	TYA
	ADC aobject_xcoord, X
	STA aobject_xcoord, X
	LDA z:z0C
	LSR
	LSR
	LSR
	ADC #$0C
	TAY
	JSR _object_speed_init

@exist:
	LDX z:zobject_ram_index
	LDA aobject_timer, X
	CMP #$60
	BEQ @shoot_done

@bullet_done:
	LDA #$31
	STA aobject_frameset_timer, X
	RTS

@last_shoot:
	CMP #$60
	BCC @skip
	LDA #$00
	STA aobject_frameset_timer, X
	STA aobject_timer, X
	RTS

@shoot_done:
	LDA #$40
	STA aobject_frameset_timer, X
	RTS

@undo:
	LDA #$00
	STA aobject_frameset_timer, X

@skip:
	RTS

_check_immnue_hit:
	LDA aobject_frameset_timer, X
	AND #%11110000
	BNE @not_immnue
	LDA aobject_flag, X
	AND #objects_hitting_bullet
	BEQ @not_immnue
	JSR _enemies_immnue_hit

@not_immnue:
	RTS

_enemies_bombombomb:
	LDA aobject_timer, X
	BNE @not_explosion
	JSR _check_enemies_collision
	LDA aobject_ycoord_speed, X
	BPL @up
	LDA #$1B
	JSR _generate_object
	BCS @exist
	INC aobject_frameset_timer, X
	JSR _clean_objects_speed

@exist:
	LDX z:zobject_ram_index
	LDA #$03
	STA z:z0C

@loop_1:
	LDA #$26
	JSR _generate_object
	JSR _clean_objects_speed
	LDA z:z0C
	AND #%00001110
	ASL
	ADC #$44
	TAY
	JSR _object_speed_init
	LDA z:z0C
	AND #%00000001
	TAY
	LDA @object_flag_table, Y
	STA aobject_flag, X
	DEC z:z0C
	BPL @loop_1
	LDX z:zobject_ram_index
	LDA #$BB
	STA aobject_timer, X
	LDA #can_collide_megaman | objects_invisible
	STA aobject_flag, X
	LDA #$D8
	STA aobject_ycoord, X

@up:
	RTS

@not_explosion:
	DEC aobject_timer, X
	BNE @not_generated
	LDA #$0D
	STA z:z0C
	LDX #$10

@loop_2:
	JSR _check_enemies
	BCS @not_hidden
	LDA aobject_flag, X
	AND #objects_invisible
	BEQ @visible
	INX
	CPX #$20
	BNE @loop_2

@not_hidden:
	LDX z:zobject_ram_index
	LDA #can_collide_map | can_collide_megaman | objects_temporary
	STA aobject_flag, X
	LDA #$F1
	STA aobject_ycoord_speed_fraction, X
	LDA #$08
	STA aobject_ycoord_speed, X

@not_generated:
	JSR _check_enemies_collision
	RTS

@visible:
	LDX z:zobject_ram_index
	INC aobject_timer, X
	JSR _check_enemies_collision
	RTS

@object_flag_table:
	.BYTE can_collide_map | can_collide_megaman | objects_temporary
	.BYTE can_collide_map | can_collide_megaman | objects_temporary | objects_right

_clean_objects_speed:
	LDA #$00
	STA aobject_ycoord_speed_fraction, X
	STA aobject_ycoord_speed, X
	STA aobject_xcoord_speed_fraction, X
	STA aobject_xcoord_speed, X
	RTS

_enemies_sniper_joe:
	LDA aobject_frameset_timer, X
	AND #%11110000
	CMP #$30
	BNE @not_standing
	LDA aobject_flag, X
	AND #objects_hitting_bullet
	BEQ @not_hitting
	LDA #$20
	STA aobject_timer, X
	JSR _enemies_immnue_hit

@not_hitting:
	JSR @chase
	JMP @continue

@not_standing:
	CMP #$00
	BEQ @jump
	CMP #$20
	PHP
	JSR @chase
	PLP
	BNE @not_shoot
	LDA aobject_timer, X
	CMP #$10
	BNE @had_shoot
	LDA #$1A
	JSR _generate_object
	BCS @had_shoot
	LDY #$24
	JSR _object_speed_init

@continue:
@had_shoot:
	LDX z:zobject_ram_index
	DEC aobject_timer, X
	BNE @ai_running
	BEQ @random_ai

@jump:
	JSR _check_enemies_collision
	LDA z:ztsa_blockset_pointers + 1
	BEQ @not_landing
	LDA #$00
	STA aobject_xcoord_speed, X
	STA aobject_xcoord_speed_fraction, X

@random_ai:
	LDA #$06
	JSR _random_integer
	LDX z:zobject_ram_index
	LDY #$00
	LSR
	BCS @not_jump
	INY
	LSR
	BCC @not_jump
	INY
	LDA #$CC
	STA aobject_ycoord_speed_fraction, X
	LDA #$04
	STA aobject_ycoord_speed, X

@not_jump:
	LDA @frameset_timer_table, Y
	STA aobject_frameset_timer, X
	LDA @timer_table, Y
	STA aobject_timer, X

@ai_running:
@not_landing:
	LDA aobject_frameset_timer, X
	AND #%11110000
	STA aobject_frameset_timer, X

@not_shoot:
	RTS

@frameset_timer_table:
	.BYTE $30, $10, $00

@timer_table:
	.BYTE $20, $20, $20

@chase:
	JSR _enemies_face_to_megaman
	CLC
	ADC #$38
	STA z:z0C
	LDA aobject_flag, X
	AND #objects_right
	BEQ @left
	LDA #$00
	STA aobject_frameset_timer, X
	LDA #$85
	STA aobject_ycoord_speed_fraction, X
	LDA #$05
	STA aobject_ycoord_speed, X
	LDX z:z0C
	LDY #$00
	LDA #$2A
	JSR _255fraction_div_to_constants
	LDX z:zobject_ram_index
	LDA z:z04
	STA aobject_xcoord_speed_fraction, X
	LDA z:z05
	STA aobject_xcoord_speed, X

@left:
	JSR _check_enemies_collision
	RTS

_enemies_foot_holder:
	LDA aobject_timer, X
	AND #%00111111
	BNE @nz
	LDA #$03
	JSR _random_integer
	LDX z:zobject_ram_index
	STA z:z0C
	LDA aobject_ycoord, X
	CMP #$58
	BCS @down
	LDA z:z0C
	CMP #$02
	BEQ @update_ycoord_table_index
	ASL z:z0C
	JMP @update_ycoord_table_index

@down:
	CMP #$C0
	BCC @update_ycoord_table_index
	LDA z:z0C
	CMP #$01
	BEQ @update_ycoord_table_index
	LSR z:z0C

@update_ycoord_table_index:
	LDY z:z0C
	LDA @ycoord_speed_table, Y
	STA aobject_ycoord_speed, X
	LDA @ycoord_speed_fraction_table, Y
	STA aobject_ycoord_speed_fraction, X
	LDA aobject_timer, X
	BNE @nz
	LDA #$80
	STA aobject_timer, X
	LDA aobject_flag, X
	EOR #objects_right
	STA aobject_flag, X
	LDA #$01
	STA z:z0C

@loop:
	LDA #$2D
	JSR _generate_object
	BCS @exist
	LDY z:z0C
	LDA @bullet_object_flag_table, Y
	STA aobject_flag, X
	CLC
	LDA aobject_xcoord, X
	ADC @bullet_xcoord_table, Y
	STA aobject_xcoord, X
	LDA aobject_screen, X
	ADC @bullet_screen_table, Y
	STA aobject_screen, X
	LDY #$D0
	JSR _object_speed_init
	DEC z:z0C
	BPL @loop

@exist:
	LDX z:zobject_ram_index

@nz:
	DEC aobject_timer, X
	JSR _check_enemies_collision
	BCS @disappeared
	JSR _foot_holder_collision

@disappeared:
	RTS

@ycoord_speed_table:
	.BYTE $00, $00, $FF

@ycoord_speed_fraction_table:
	.BYTE $00, $60, $A0

@bullet_object_flag_table:
	.BYTE can_collide_megaman
	.BYTE can_collide_megaman | objects_right

@bullet_xcoord_table:
	.BYTE $0C, $F4

@bullet_screen_table:
	.BYTE $00, $FF

_foot_holder_collision:
	LDY z:zfoot_holder_index
	LDA aobject_screen, X
	STA afoot_holder_screen, Y
	LDA aobject_xcoord, X
	STA afoot_holder_xcoord, Y
	SEC
	LDA aobject_ycoord, X
	SBC #$08
	STA afoot_holder_ycoord, Y
	LDA aobject_xcoord_speed_fraction, X
	STA z:zalternative_xcoord_speed_fraction
	LDA aobject_xcoord_speed, X
	STA z:zalternative_xcoord_speed
	LDA aobject_flag, X
	AND #objects_right
	STA afoot_holder_flag, Y
	INC z:zfoot_holder_index
	RTS

_enemies_crazy_razy:
	JSR _enemies_face_to_megaman
	LDA #objects_crazy_razy_foot_1
	STA aobject_id, X
	CLC
	LDA aobject_ycoord, X
	ADC #$04
	STA aobject_ycoord, X
	LDA #$1D
	JSR _generate_object
	BCS @exist
	LDY z:zobject_ram_index
	LDA a:zenemies_screen_thread - $10, Y
	STA z:zenemies_screen_thread - $10, X
	LDA aobject_flag, X
	ORA #can_collide_megaman_bullet
	STA aobject_flag, X
	SEC
	LDA aobject_ycoord, X
	SBC #$10
	STA aobject_ycoord, X
	JSR _clean_objects_speed
	LDY z:zobject_ram_index
	LDA aobject_flag, Y
	AND #objects_right
	BEQ @left
	LDA #objects_crazy_razy_foot_2
	STA aobject_id, Y
	LDA #$1F
	STA aobject_timer, Y
	LDA #objects_crazy_razy_head_1
	STA aobject_id, X
	LDA #$09
	STA aobject_timer, X
	LDA #$04
	STA aobject_ycoord_speed, X

@left:
	RTS

@exist:
	LDX z:zobject_ram_index
	LDA #$F8
	STA aobject_ycoord, X
	LDA #$FF
	STA z:zenemies_screen_thread - $10, X
	RTS

_enemies_pickelman:
	JSR _enemies_face_to_megaman
	STA z:z0C
	LDA aobject_frameset_timer, X
	AND #%11110000
	BEQ @reset_anim
	LDA aobject_frameset_timer, X
	CMP #$20
	BNE @had_throw
	LDA #$2E
	JSR _generate_object
	BCS @exist
	LDA aobject_flag, X
	ORA #objects_temporary
	STA aobject_flag, X
	LDY #$70
	JSR _object_speed_init
	TXA
	PHA
	LDX z:z0C
	LDY #$00
	LDA #$27
	JSR _255fraction_div_to_constants
	PLA
	TAX
	LDA z:z04
	STA aobject_xcoord_speed_fraction, X
	LDA z:z05
	STA aobject_xcoord_speed, X

@exist:
	LDX z:zobject_ram_index
	DEC aobject_timer, X
	BNE @nz

@had_throw:
	CMP #$30
	BNE @not_throw_fully
	LDA aobject_timer, X
	BNE @continue
	LDA z:zrandom
	AND #%00000001
	TAY
	LDA @cooldown_table, Y
	STA aobject_timer, X
	LDA #$00
	BEQ @reset_anim

@continue:
	LDA #$10
	STA aobject_frameset_timer, X
	BNE @nz

@reset_anim:
	STA aobject_frameset_timer, X
	DEC aobject_timer, X
	BNE @nz
	LDA #$10
	STA aobject_frameset_timer, X
	LDA z:zrandom
	AND #%00000001
	TAY
	LDA @throw_times_table, Y
	STA aobject_timer, X

@nz:
@not_throw_fully:
	JSR _check_immnue_hit
	JSR _check_enemies_collision
	LDA z:ztsa_blockset_pointers + 1
	BEQ @not_landing
	JSR _clean_objects_speed

@not_landing:
	RTS

@throw_times_table:
	.BYTE $05, $0A

@cooldown_table:
	.BYTE $3F, $BB

_enemies_screw_driver_ground:
	LDA #$08
	STA z:z0D
	STA z:z0E
	LDA #$04
	STA z:z0F
	BNE _enemies_screw_driver_common

_enemies_screw_driver_ceiling:
	LDA #$F8
	STA z:z0D
	LDA #$09
	STA z:z0E
	LDA #$FC
	STA z:z0F

_enemies_screw_driver_common:
	JSR _check_frozen_collision
	LDA aobject_frameset_timer, X
	BEQ @check_shoot
	CMP #$01
	BNE @do_anim

@check_shoot:
	LDA aobject_timer, X
	BEQ @next_shoot
	LDA #$00
	STA aobject_frameset_timer, X
	BEQ @check_anim_end

@next_shoot:
	JSR _enemies_face_to_megaman
	PHA
	LDA aobject_flag, X
	AND #~objects_right
	STA aobject_flag, X
	PLA
	CMP #$50
	BCC @shoot
	LDA #$00
	STA aobject_frameset_timer, X
	BEQ @done

@shoot:
	LDA #$10
	STA aobject_frameset_timer, X
	SEC
	LDA aobject_ycoord, X
	SBC z:z0D
	STA aobject_ycoord, X
	LDA #$60
	STA aobject_timer, X
	BNE @check_anim_end

@do_anim:
	CMP #$50
	BNE @nz_anim_cycle
	LDA #$20
	STA aobject_frameset_timer, X

@nz_anim_cycle:
	BCS @check_anim_end
	LDA aobject_timer, X
	BEQ @shoot_done
	AND #%00011111
	BNE @run

@loop:
	LDA #$2D
	JSR _generate_object
	BCS @exist
	SEC
	LDA aobject_ycoord, X
	SBC z:z0F
	STA aobject_ycoord, X
	LDY z:z0E
	LDA @bullet_flag_table, Y
	STA aobject_flag, X
	LDA @bullet_speed_init_index_table, Y
	TAY
	JSR _object_speed_init
	DEC z:z0E
	DEC z:z0E
	BPL @loop

@exist:
	LDX z:zobject_ram_index
	BNE @run

@shoot_done:
	LDA #$03
	JSR _random_integer
	TAX
	LDA @cooldown_table, X
	LDX z:zobject_ram_index
	STA aobject_timer, X
	LDA #$50
	STA aobject_frameset_timer, X

@check_anim_end:
	LDA aobject_frameset_timer, X
	CMP #$60
	BNE @run
	CLC
	LDA aobject_ycoord, X
	ADC z:z0D
	STA aobject_ycoord, X

@run:
	DEC aobject_timer, X

@done:
	JSR _check_enemies_collision
	RTS

@cooldown_table:
	.BYTE $20, $3F, $7D

@bullet_speed_init_index_table:
	.BYTE $60
	.BYTE $60
	.BYTE $5C
	.BYTE $64
	.BYTE $58
	.BYTE $68
	.BYTE $5C
	.BYTE $64
	.BYTE $60
	.BYTE $60

@bullet_flag_table:
	.BYTE can_collide_megaman | objects_right
	.BYTE can_collide_megaman | objects_right
	.BYTE can_collide_megaman | objects_right
	.BYTE can_collide_megaman | objects_right
	.BYTE can_collide_megaman
	.BYTE can_collide_megaman
	.BYTE can_collide_megaman
	.BYTE can_collide_megaman
	.BYTE can_collide_megaman
	.BYTE can_collide_megaman

_check_frozen_collision:
	LDA aobject_frozen_timer, X
	BEQ @not_frozen
	JSR _check_enemies_collision
	PLA
	PLA

@not_frozen:
	RTS

_enemies_thrower_delayed:
_enemies_short_elec_beam:
_enemies_thrower:
_enemies_short_elec_beam_delayed:
	LDA aobject_flag, X
	AND #objects_invisible
	BNE @invisible
	DEC aobject_timer, X
	BNE @nz
	LDA aobject_flag, X
	ORA #objects_invisible
	AND #objects_temporary | objects_invisible | objects_right | objects_hitting_bullet
	STA aobject_flag, X
	LDA #$50
	STA aobject_timer, X

@nz:
	JSR _check_enemies_collision
	RTS

@invisible:
	DEC aobject_timer, X
	BNE @nz
	LDA aobject_flag, X
	AND #can_collide_map | can_collide_megaman | can_collide_megaman_bullet | 1 << 3
	ORA #can_collide_megaman
	STA aobject_flag, X
	LDA #$3F
	STA aobject_timer, X
	JSR _check_enemies_collision
	LDA aobject_id, X
	AND #%00000001
	BNE @skip
	LDA z:zcurrent_stage
	CMP #stage_elecman
	BNE @skip
	track_queue track_magnet_beam

@skip:
	RTS

_enemies_appearing_block_generator:
	LDA aobject_timer, X
	CMP #$BB
	BNE @had_reset
	LDA #$00
	STA aobject_hp, X

@had_reset:
	DEC aobject_timer, X
	BNE @skip
	LDY #$00
	LDA z:zcurrent_stage
	CMP #stage_iceman
	BNE @not_iceman
	LDA z:zscreen
	CMP #$0A
	BEQ @is_iceman_screen_0a
	LDY #$02
	BNE @is_iceman_screen_0b

@not_iceman: ;otherwise elecman
	LDY #$04
	LDA z:zscreen
	CMP #$05
	BEQ @is_elecman_screen_05
	LDY #$06

@is_iceman_screen_0a:
@is_iceman_screen_0b:
@is_elecman_screen_05:
	LDA @appearing_blockset_pointers, Y
	STA z:z04
	LDA @appearing_blockset_pointers + 1, Y
	STA z:z05
	LDA aobject_hp, X
	ASL
	TAY
	INC aobject_hp, X
	LDA (z04), Y
	BNE @nz

@nz:
	CMP #$FF
	BNE @dont_reset
	LDA #$00
	STA aobject_hp, X
	LDA #$3F

@dont_reset:
	STA aobject_timer, X
	INY
	LDA (z04), Y
	STA z:z0E
	LDA #$01
	STA z:z0C
	LDA z:z0E
	JSR _replace_special_blockset
	LDA #$27
	JSR _generate_object
	BCS @exist
	JSR _clean_objects_speed
	LDA #$00
	STA aobject_flag, X
	LDA #$70 ;appearing timer
	STA aobject_timer, X
	LDA z:z0C
	STA aobject_xcoord, X
	LDA z:z0D
	STA aobject_ycoord, X
	LDA z:z0E
	STA aobject_hp, X
	track_queue track_appearing_block

@exist:
	LDX z:zobject_ram_index

@skip:
	JSR _check_enemies_collision
	RTS

@appearing_blockset_pointers:
	.WORD @iceman_screenset_0a
	.WORD @iceman_screenset_0b
	.WORD @elecman_screenset_05
	.WORD @elecman_screenset_06

@iceman_screenset_0a:
;next timer, special blockset index
	.BYTE $3F, $12
	.BYTE $3F, $00
	.BYTE $3F, $1E
	.BYTE $3F, $24
	.BYTE $3F, $0C
	.BYTE $3F, $18
	.BYTE -1,  $06

@iceman_screenset_0b:
	.BYTE $01, $2A
	.BYTE $3F, $30
	.BYTE $01, $3C
	.BYTE $3F, $48
	.BYTE $01, $42
	.BYTE $3F, $54
	.BYTE $01, $60
	.BYTE $3F, $66
	.BYTE $3F, $5A
	.BYTE $3F, $4E
	.BYTE -1,  $36

@elecman_screenset_05:
	.BYTE $3F, $0C
	.BYTE $3F, $06
	.BYTE $3F, $12
	.BYTE -1,  $00

@elecman_screenset_06:
	.BYTE $3F, $2A
	.BYTE $3F, $24
	.BYTE $3F, $1E
	.BYTE -1,  $18

_enemies_appearing_block:
	LDA aobject_frameset_timer, X
	AND #%11110000
	CMP #$50
	BNE @appearing
	STA aobject_frameset_timer, X

@appearing:
	DEC aobject_timer, X
	BEQ @disappeared
	JSR _check_enemies_collision
	BCS @disappeared
	RTS

@disappeared:
	LDA #$00
	STA z:z0C
	LDA aobject_hp, X
	JSR _replace_special_blockset
	JMP _delete_objects

_enemies_fireball:
	LDA aobject_screen, X
	CMP #$0A
	BNE @not_0a
	LDA #$06
	STA aobject_timer, X

@not_0a:
	LDA aobject_timer, X
	AND #%00000001
	BEQ @run_vertical
	LDA aobject_frameset_timer, X
	BNE @check_horizontal
	LDA #$30
	STA aobject_frameset_timer, X

@check_horizontal:
	LDA aobject_timer, X
	TAY
	LDA aobject_flag, X
	AND #objects_right
	BEQ @left
	LDA @coord_table, Y
	CMP aobject_xcoord, X
	BCS @unturn
	BCC @turn

@left:
	LDA @coord_table, Y
	CMP aobject_xcoord, X
	BCC @unturn

@turn:
	STA aobject_xcoord, X
	LDA #$00
	STA aobject_frameset_timer, X
	LDA aobject_flag, X
	ORA #objects_temporary
	STA aobject_flag, X
	LDY #$68
	JSR _object_speed_init
	INC aobject_timer, X
	BNE @unturn

@run_vertical:
	LDA aobject_frameset_timer, X
	CMP #$30
	BNE @check_vertical
	LDA #$00
	STA aobject_frameset_timer, X

@check_vertical:
	LDA aobject_timer, X
	TAY
	LDA @coord_table, Y
	CMP aobject_ycoord, X
	BCS @unturn
	STA aobject_ycoord, X
	LDA #$30
	STA aobject_frameset_timer, X
	LDA aobject_flag, X
	EOR #objects_right
	AND #~objects_temporary
	STA aobject_flag, X
	LDY #$60
	JSR _object_speed_init
	INC aobject_timer, X

@unturn:
	LDA aobject_ycoord, X
	CMP #$D8
	BCC @done
	LDA aobject_screen, X
	SBC #$0A
	TAY
	LDA @start_xcoord_table, Y
	STA aobject_xcoord, X
	LDA #$04
	STA aobject_ycoord, X
	LDA #$00
	STA aobject_timer, X
	LDY #$2C
	JSR _object_speed_init

@done:
	JSR _check_enemies_collision
	RTS

@coord_table:
	.BYTE $60, $50, $A0, $D0, $FF, $FF, $FF

@start_xcoord_table:
	.BYTE $D0, $B0

_enemies_flame_pillar:
	LDA aobject_flag, X
	AND #objects_invisible
	BNE @invisible
	LDA aobject_flag, X
	AND #objects_hitting_bullet
	BNE @hitting

@not_ice:
	LDA aobject_frozen_timer, X
	BEQ @not_frozen_1
	JMP @check_frozen

@not_frozen_1:
	LDA #can_collide_megaman | can_collide_megaman_bullet
	STA aobject_flag, X
	LDA aobject_frameset_timer, X
	CMP #$30
	BNE @not_frozen_2
	LDA #$00
	STA aobject_frameset_timer, X

@not_frozen_2:
	DEC aobject_timer, X
	BNE @nz
	LDA aobject_ycoord_speed, X
	BEQ @start_down
	BPL @raise_done
	LDA #$00
	STA aobject_ycoord_speed, X
	LDA #objects_invisible
	STA aobject_flag, X
	LDA #$18
	BNE @had_down

@raise_done:
	LDA #$00
	STA aobject_ycoord_speed, X
	BEQ @had_up

@start_down:
	LDA #$FE
	STA aobject_ycoord_speed, X

@had_up:
	LDA #$20

@had_down:
	STA aobject_timer, X
	BNE @nz

@invisible:
	DEC aobject_timer, X
	BNE @nz
	LDA #can_collide_megaman | can_collide_megaman_bullet
	STA aobject_flag, X
	LDA #$02
	STA aobject_ycoord_speed, X
	LDA #$20
	STA aobject_timer, X

@nz:
	JSR _check_enemies_collision
	BCC @appeared
	JSR @find_flame_pillar_index
	JSR _fire_block_restored

@appeared:
	RTS

@hitting:
	LDA #$00
	STA aobject_flag, X
	LDA z:zcurrent_weapon
	CMP #$02
	BNE @not_ice
	LDA aobject_ycoord, X
	PHA
	AND #%11110000
	STA aobject_ycoord, X
	LDA aobject_ycoord_speed, X
	BPL @down
	PLA
	AND #%00001111
	BEQ @skip
	CLC
	EOR #%00001111
	ADC #$01
	PHA
	CLC
	LDA aobject_ycoord, X
	ADC #$10
	STA aobject_ycoord, X

@down:
	PLA
	AND #%00001111
	LSR
	STA z:z0C
	SEC
	LDA aobject_timer, X
	SBC z:z0C
	STA aobject_timer, X

@skip:
	JSR @find_flame_pillar_index
	SEC
	LDA aobject_ycoord, X
	SBC #$20
	JSR _fire_block_frozen

@check_frozen:
	LDA aobject_frozen_timer, X
	CMP #$01
	BNE @frozen
	JSR @find_flame_pillar_index
	JSR _fire_block_restored

@frozen:
	LDA #$30
	STA aobject_frameset_timer, X
	BNE @nz

@find_flame_pillar_index:
	LDA aobject_xcoord, X
	AND #%11110000
	ORA aobject_screen, X
	LDY #$00
	PHA
	LDA z:zcurrent_stage
	CMP #stage_wily1
	BEQ @is_wily1
	PLA

@loop_1:
	CMP @fireman_flame_pillar_special_blockset_table, Y
	BEQ @true
	INY
	BNE @loop_1

@true:
	TYA
	ASL
	STA z:z0C
	ASL
	ADC z:z0C
	STA z:z0C
	RTS

@is_wily1:
	PLA

@loop_2:
	CMP @wily1_flame_pillar_special_blockset_table, Y
	BEQ @true
	INY
	BNE @loop_2

@fireman_flame_pillar_special_blockset_table:
;xcoord | screen
	.BYTE $70 | $02
	.BYTE $30 | $03
	.BYTE $50 | $03
	.BYTE $70 | $04
	.BYTE $90 | $04
	.BYTE $50 | $06
	.BYTE $70 | $06
	.BYTE $90 | $07
	.BYTE $D0 | $07
	.BYTE $50 | $08
	.BYTE $90 | $08
	.BYTE $F0 | $09
	.BYTE $30 | $0A
	.BYTE $B0 | $0F
	.BYTE $D0 | $0F

@wily1_flame_pillar_special_blockset_table:
	.BYTE $00
	.BYTE $00
	.BYTE $00
	.BYTE $00
	.BYTE $00
	.BYTE $70 | $0E
	.BYTE $90 | $0E
	.BYTE $D0 | $0E

_enemies_fireball_standby:
_enemies_score_ball:
_enemies_small_weapon_capsule:
_enemies_small_life_capsule:
_enemies_large_weapon_capsule:
_enemies_large_life_capsule:
_enemies_1up:
	LDA aobject_flag, X
	AND #objects_temporary
	BEQ _check_enemies_collision_common
	INC aobject_timer, X
	LDA aobject_timer, X
	CMP #$F0
	BNE _check_enemies_collision_common
	JMP _delete_objects

_enemies_super_cutter:
_enemies_enemies_bullet_palette_2:
_enemies_watcher_elec_thrower:
_enemies_enemies_bullet_palette_3:
_enemies_pickaxe:
_enemies_copy_robot_ice_slasher:
_enemies_copy_robot_fire_storm_flame:
_enemies_magnet_beam:
_enemies_teleport:
_enemies_heart_part:
_enemies_yashichi:
_enemies_46:
_enemies_47:
_enemies_wily_machine_1_large_bullet_sprites:
_check_enemies_collision_common:
	JSR _check_enemies_collision
	RTS

_enemies_cwu_01p_killed:
	LDA aobject_frameset_timer, X
	BNE _check_enemies_collision_common
	JMP _delete_objects

_enemies_super_cutter_standby:
	LDA aobject_timer, X
	BNE @nz
	JSR _enemies_face_to_megaman
	CMP #$50
	BCS @skip
	TAX
	LDY #$00
	LDA #$33
	JSR _255fraction_div_to_constants
	LDA #$11
	JSR _generate_object
	BCS @exist
	LDA aobject_flag, X
	ORA #can_collide_megaman_bullet | objects_temporary
	STA aobject_flag, X
	LDY #$70
	JSR _object_speed_init
	LDA z:z05
	STA aobject_xcoord_speed, X
	LDA z:z04
	STA aobject_xcoord_speed_fraction, X

@exist:
	LDX z:zobject_ram_index
	LDA #$20
	STA aobject_timer, X

@nz:
	DEC aobject_timer, X

@skip:
	JSR _check_enemies_collision
	RTS

_enemies_crazy_razy_head_1:
	LDA z:zenemies_screen_thread - $10, X
	PHA
	JSR _check_enemies_collision
	PLA
	STA z:z0D
	LDA aobject_timer, X
	BNE @split
	LDA aobject_id, X
	CMP #$1B
	BNE @skip
	LDA #$1E
	STA z:z0C
	LDX #$10

@loop:
	JSR _check_enemies
	BCS @skip
	LDA z:zenemies_screen_thread - $10, X
	CMP z:z0D
	BEQ @killed
	INX
	BNE @loop

@killed:
	JSR _enemies_killed

@skip:
@nz:
	RTS

@split:
	DEC aobject_timer, X
	BNE @nz
	LDA #$00
	STA aobject_ycoord_speed, X
	LDA #$01
	STA aobject_xcoord_speed, X
	LDA #$20
	STA aobject_xcoord_speed_fraction, X
	LDA #objects_crazy_razy_head_2
	STA aobject_id, X
	RTS

_enemies_crazy_razy_foot_1:
	JSR _enemies_face_to_megaman
	LDA aobject_flag, X
	AND #objects_right
	BEQ @left
	LDA #objects_crazy_razy_foot_2
	STA aobject_id, X
	LDA #$1F
	STA aobject_timer, X
	LDA #can_collide_map | can_collide_megaman | can_collide_megaman_bullet | objects_temporary
	STA aobject_flag, X

@left:
	LDA z:zenemies_screen_thread - $10, X
	PHA
	JSR _check_enemies_collision
	PLA
	STA z:z0D
	LDA #$1D
	STA z:z0C
	LDX #$10

@loop:
	JSR _check_enemies
	BCS @not_hidden
	LDA z:zenemies_screen_thread - $10, X
	CMP z:z0D
	BEQ @true
	INX
	BNE @loop

@true:
	LDY z:zobject_ram_index
	SEC
	LDA aobject_ycoord, Y
	SBC #$10
	STA aobject_ycoord, X
	LDA aobject_xcoord, Y
	STA aobject_xcoord, X
	LDA aobject_screen, Y
	STA aobject_screen, X
	LDA aobject_frozen_timer, X
	BEQ @not_frozen_1
	STA aobject_frozen_timer, Y

@not_frozen_1:
	LDA aobject_frozen_timer, Y
	BEQ @not_frozen_2
	STA aobject_frozen_timer, X

@not_frozen_2:
	LDA aobject_id, Y
	CMP #$1B
	BEQ @killed
	LDA aobject_id, Y
	CMP #objects_crazy_razy_foot_2
	BNE @not_hidden

@killed:
	LDA #objects_crazy_razy_head_1
	STA aobject_id, X
	LDA #$09
	STA aobject_timer, X
	LDA #$00
	STA aobject_frameset_timer, X
	STA aobject_xcoord_speed_fraction, X
	STA aobject_xcoord_speed, X
	STA aobject_ycoord_speed_fraction, X
	LDA #$04
	STA aobject_ycoord_speed, X

@not_hidden:
	LDX z:zobject_ram_index
	INC aobject_timer, X
	LDA aobject_timer, X
	CMP #$3F
	BNE @skip
	LDA #$00
	STA aobject_timer, X
	LDA aobject_frozen_timer, X
	BNE @skip
	LDA #$1A
	JSR _generate_object
	BCS @skip
	SEC
	LDA aobject_ycoord, X
	SBC #$0C
	STA aobject_ycoord, X
	LDY #$24
	JSR _object_speed_init

@skip:
	RTS

_enemies_crazy_razy_head_2:
	LDA aobject_flag, X
	AND #%00001000
	BEQ @not_leave
	JSR _check_enemies_collision
	LDA #$00
	BEQ @save_frameset

@not_leave:
	JSR _enemies_bunby_heli ;common
	LDA aobject_timer, X
	CMP #$32
	BNE @frameset_done
	LDA #$10
	STA aobject_frameset_timer, X

@frameset_done:
	LDA aobject_frameset_timer, X
	AND #%11110000
	BEQ @save_frameset
	CMP #$20
	BNE @done
	LDA #$20
	JSR _generate_object
	BCS @done
	CLC
	LDA aobject_ycoord, X
	ADC #$10
	STA aobject_ycoord, X
	LDY #$00
	LDA aobject_flag, X
	AND #objects_right
	BEQ @left
	INY

@left:
	CLC
	LDA aobject_xcoord, X
	ADC @xcoord_table, Y
	STA aobject_xcoord, X
	LDA aobject_screen, X
	ADC @screen_table, Y
	STA aobject_screen, X

@done:
	RTS

@save_frameset:
	STA aobject_frameset_timer, X
	RTS

@screen_table:
	.BYTE -1, 0

@xcoord_table:
	.BYTE -11, +11

_enemies_crazy_razy_hit:
	LDA aobject_frameset_timer, X
	BEQ _enemies_crazy_razy_hit_bomb_explosion_cluster_crazy_razy_foot_2_not_hidden_common
	LDA #$F8
	STA aobject_ycoord, X

_enemies_crazy_razy_hit_bomb_explosion_cluster_crazy_razy_foot_2_not_hidden_common:
	JSR _check_enemies_collision
	RTS

_enemies_bombombomb_cluster:
	JSR _check_enemies_collision
	LDA z:ztsa_blockset_pointers
	ORA z:ztsa_blockset_pointers + 1
	BEQ _enemies_bombombomb_cluster_not_landing

_enemies_bombombomb_cluster_crazy_razy_foot_2_explosion_common:
	LDA #can_collide_megaman
	STA aobject_flag, X
	LDA #$1B
	STA aobject_id, X
	JSR _clean_objects_speed
	STA aobject_frameset_timer, X
	STA aobject_timer, X
	track_queue track_explosion

_enemies_bombombomb_cluster_not_landing:
	RTS

_enemies_bomb_explosion_cluster:
	INC aobject_timer, X
	LDA aobject_timer, X
	CMP #$0E
	BNE _enemies_crazy_razy_hit_bomb_explosion_cluster_crazy_razy_foot_2_not_hidden_common
	LDA #$F8
	STA aobject_ycoord, X
	RTS

_enemies_crazy_razy_foot_2:
	DEC aobject_timer, X
	BNE _enemies_crazy_razy_hit_bomb_explosion_cluster_crazy_razy_foot_2_not_hidden_common
	BEQ _enemies_bombombomb_cluster_crazy_razy_foot_2_explosion_common

_enemies_watcher_move:
	JSR _enemies_face_to_megaman
	SEC
	LDA aobject_ycoord
	SBC aobject_ycoord, X
	BCS @enemies_on_bottom
	EOR #%11111111
	ADC #$01

@enemies_on_bottom:
	STA z:z0C
	CMP #$28
	BCS @run
	LDA aobject_timer, X
	CMP #$10
	BNE @prepare_shoot
	LDA z:z0C
	CMP #$1C
	BCS @not_close_to_megaman
	LDA #$01
	STA z:z0C

@loop:
	LDA #$2B
	JSR _generate_object
	BCS @exist
	JSR _clean_objects_speed
	LDY z:z0C
	CLC
	LDA aobject_ycoord, X
	ADC @watcher_elec_thrower_ycoord_table, Y
	STA aobject_ycoord, X
	LDA #$04
	STA aobject_xcoord_speed, X
	DEC z:z0C
	BPL @loop

@exist:
	LDX z:zobject_ram_index
	LDA aobject_timer, X
	JSR _xor_ycoord_speed
	ASL aobject_ycoord_speed_fraction, X
	ROL aobject_ycoord_speed, X
	LDA aobject_flag, X
	ORA #%00001000
	STA aobject_flag, X
	BNE @run

@prepare_shoot:
	INC aobject_timer, X

@not_close_to_megaman:
	JSR _check_enemies_collision
	RTS

@run:
	LDA #$30
	STA aobject_frameset_timer, X
	LDA #objects_watcher
	STA aobject_id, X
	RTS

@watcher_elec_thrower_ycoord_table:
	.BYTE $14, $EC

_enemies_track_platform:
	LDY #$00
	LDA aobject_timer, X
	AND #objects_right
	PHP
	BEQ @left ;like aobject_flag
	LDY #$03

@left:
	CLC
	LDA aobject_xcoord_fraction, X
	ADC @xcoord_speed_table, Y
	STA aobject_xcoord_fraction, X
	LDA aobject_xcoord, X
	ADC @xcoord_speed_table + 1, Y
	STA aobject_xcoord, X
	LDA aobject_screen, X
	ADC @xcoord_speed_table + 2, Y
	STA aobject_screen, X
	SEC
	LDA aobject_xcoord, X
	SBC z:zscreen_xcoord
	TAY
	LDA aobject_screen, X
	SBC z:zscreen
	BNE @invisible
	CPY #$F8
	BCS @invisible
	CPY #$10
	BCC @invisible
	LDA #$00
	BEQ @visible

@invisible:
	LDA #objects_invisible

@visible:
	STA aobject_flag, X
	LDA aobject_hp, X
	ASL
	TAY
	PHA
	LDA @track_platform_drop_pointers, Y
	STA z:z04
	LDA @track_platform_drop_pointers + 1, Y
	STA z:z05
	PLA
	ASL
	PLP
	PHA
	BNE @right
	LDA aobject_ycoord_speed_fraction, X
	BEQ @not_arrived_1
	SEC
	SBC #$01
	ASL
	TAY
	LDA (z04), Y
	STA z:z07
	INY
	LDA (z04), Y
	STA z:z06
	JSR @compare_xcoord
	BCC @not_arrived_1
	LDA aobject_ycoord_speed_fraction, X
	DEC aobject_ycoord_speed_fraction, X
	LDY #$10
	AND #%00000001
	BEQ @drop_leftward
	LDY #$30

@drop_leftward:
	TYA
	STA aobject_frameset_timer, X

@not_arrived_1:
	PLA
	TAY
	LDA @track_platform_run_length, Y
	STA z:z06
	LDA @track_platform_run_length + 1, Y
	STA z:z07
	JSR @compare_xcoord
	BCS @turn
	BCC @unturn

@right:
	LDA aobject_ycoord_speed_fraction, X
	ASL
	TAY
	LDA (z04), Y
	STA z:z07
	INY
	LDA (z04), Y
	STA z:z06
	JSR @compare_xcoord
	BCS @not_arrived_2
	LDY #$10
	LDA aobject_ycoord_speed_fraction, X
	INC aobject_ycoord_speed_fraction, X
	AND #%00000001
	BEQ @drop_rightward
	LDY #$30

@drop_rightward:
	TYA
	STA aobject_frameset_timer, X

@not_arrived_2:
	PLA
	TAY
	LDA @track_platform_run_length + 2, Y
	STA z:z06
	LDA @track_platform_run_length + 3, Y
	STA z:z07
	JSR @compare_xcoord
	BCS @unturn

@turn:
	LDA aobject_timer, X
	EOR #objects_right
	STA aobject_timer, X

@unturn:
	LDA aobject_frameset_timer, X
	AND #%00010000
	BNE @switching
	LDA aobject_frameset_timer, X
	AND #%11110000
	STA aobject_frameset_timer, X

@switching:
	LDA aobject_frameset_timer, X
	AND #%11110000
	BNE @no_collision
	LDA aobject_flag, X
	AND #objects_invisible
	BNE @no_collision
	JSR _foot_holder_collision
	LDA aobject_timer, X
	STA afoot_holder_flag, Y

@no_collision:
	RTS

@compare_xcoord:
	SEC
	LDA z:z06
	SBC aobject_xcoord, X
	LDA z:z07
	SBC aobject_screen, X
	RTS

@xcoord_speed_table:
	.BYTE 0, -1, -1
	.BYTE 0,  1,  0

@track_platform_run_length:
;start, end, both each 2 bytes
	.BYTE $08, $02, $18, $03
	.BYTE $88, $02, $98, $03
	.BYTE $08, $03, $68, $04
	.BYTE $58, $1B, $F0, $1C

@track_platform_drop_pointers:
	.WORD @track_platform_1_drop_xcoord
	.WORD @track_platform_2_drop_xcoord
	.WORD @track_platform_3_drop_xcoord
	.WORD @track_platform_4_drop_xcoord

@track_platform_1_drop_xcoord:
	.BYTE -1

@track_platform_2_drop_xcoord:
	.BYTE $02, $F0, $03, $00
	.BYTE $03, $70, $03, $80
	.BYTE -1

@track_platform_3_drop_xcoord:
	.BYTE $03, $40, $03, $50
	.BYTE $03, $80, $03, $90
	.BYTE $03, $C0, $03, $D0
	.BYTE $04, $00, $04, $10
	.BYTE $04, $40, $04, $50
	.BYTE -1

@track_platform_4_drop_xcoord:
	.BYTE $1B, $C0, $1C, $20
	.BYTE -1

_enemies_2f:
	LDA z:zcurrent_stage
	CMP #stage_gutsman
	BEQ @is_gutsman
	LDA aobject_timer, X
	BNE @flooding
	track_queue track_flood
	LDX z:zobject_ram_index
	LDA #$00
	BEQ @start_flood

@flooding:
	CMP #$20
	BEQ @accelerate

@start_flood:
	PHA
	AND #%11110000
	LSR
	LSR
	ORA #$23
	STA aobject_ppu_address
	PLA
	AND #%00001111
	LSR
	BCC @even
	ORA #$D8
	BNE @odd

@even:
	ORA #$E0

@odd:
	STA aobject_ppu_address + 1
	LDA #topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2
	STA aobject_ppu_data
	LDA #$01
	STA z:zobject_tiles_update_size
	INC aobject_timer, X
	LDA aobject_timer, X
	CMP #$0A
	BEQ _generate_object_flood
	CMP #$10
	BCS @accelerate
	RTS

@accelerate:
	LDA #$01
	STA z:zalternative_xcoord_speed
	LDA #$80
	STA z:zalternative_xcoord_speed_fraction
	LDA #objects_right | objects_hitting_bullet
	STA z:zcurrent_foot_holder_flag
	RTS

@is_gutsman:
	LDA #track_track_platform

_enemies_30_mute:
	JSR _track_queue
	LDX z:zobject_ram_index
	JMP _delete_objects

_enemies_30:
	LDA z:zcurrent_stage
	CMP #stage_gutsman
	BEQ @is_gutsman
	LDX #$02

@loop:
	LDA @palettes_table, X
	STA abackground_palette_original + 5, X
	DEX
	BPL @loop
	JSR _update_background_palette
	LDX z:zobject_ram_index
	LDA z:zcheckpoint_pointer
	BEQ @skip
	DEC aobject_id, X
	LDA #$20
	STA aobject_timer, X
	RTS

@skip:
	JMP _delete_objects

@palettes_table:
	.BYTE white_cyan, light_cyan, dark_orange

@is_gutsman:
	LDA #$FE
	BNE _enemies_30_mute

_generate_object_flood:
	LDA #$04
	STA z:z0C
	DEC aobject_screen, X
	LDA #$88
	STA aobject_xcoord, X
	LDA #$68
	STA aobject_ycoord, X

@loop:
	LDA #$00
	JSR _generate_object
	BCS @exist
	LDA #$7B
	STA aobject_pointer, X
	LDA #objects_right
	STA aobject_flag, X
	JSR _clean_objects_speed
	LDA #$10
	STA aobject_xcoord_speed, X
	LDX z:zobject_ram_index
	CLC
	LDA aobject_xcoord, X
	ADC #$08
	STA aobject_xcoord, X
	LDA aobject_ycoord, X
	ADC #$10
	STA aobject_ycoord, X
	DEC z:z0C
	BNE @loop

@exist:
	RTS

_enemies_changkey:
	LDA aobject_timer, X
	BEQ @done
	LDA aobject_ycoord_speed, X
	BPL @raising
	JMP @dropping

@raising:
	LDA aobject_timer, X
	CMP #$FF
	BEQ @had_last
	CMP #$83
	BCS @on_top
	CMP #$08
	BNE @not_last
	LDA #$00
	STA aobject_timer, X
	LDA #can_collide_megaman
	STA aobject_flag, X
	BNE @continue

@not_last:
	AND #%00000111
	BNE @skip
	LDA #$31
	JSR _generate_object
	BCS @skip

@continue:
	LDY #$1C
	JSR _object_speed_init

@skip:
	LDX z:zobject_ram_index
	DEC aobject_timer, X

@done:
	JSR _check_enemies_collision
	RTS

@had_last:
	LDA aobject_ycoord, X
	CMP #$07
	BCS @not_on_top
	JSR _clean_objects_speed
	LDA #$04
	STA aobject_ycoord, X
	LDA #objects_invisible
	STA aobject_flag, X
	LDA #$83
	STA aobject_timer, X

@not_on_top:
	JSR _check_enemies_collision
	RTS

@on_top:
	CMP #$FE
	BEQ @drop
	INC aobject_timer, X
	BNE @done

@drop:
	LDA #$FF
	STA aobject_ycoord_speed, X
	LDA #$10
	STA aobject_ycoord_speed_fraction, X
	LDA #$02
	STA z:z0C
	LDA z:zrandom
	STA z:z0D

@loop:
	LDA #$31
	JSR _generate_object
	BCS @exist
	LDY #$74
	JSR _object_speed_init
	LDY z:z0C
	CLC
	LDA z:zscreen_xcoord
	ADC @xcoord_table, Y
	STA aobject_xcoord, X
	LDA z:zscreen
	ADC #$00
	STA aobject_screen, X
	LDA #$00
	LSR z:z0D
	ROR
	LSR
	ORA #can_collide_megaman | can_collide_megaman_bullet
	STA aobject_flag, X
	DEC z:z0C
	BPL @loop

@exist:
	RTS

@xcoord_table:
	.BYTE $7E, $A8, $D2

@dropping:
	LDA aobject_ycoord, X
	CMP #$DC
	BCC @not_refresh
	LDA #$E0
	STA aobject_ycoord, X
	JSR _clean_objects_speed
	LDA #$1B
	STA aobject_timer, X

@not_refresh:
	JSR _check_enemies_collision
	RTS

_enemies_copy_robot_rolling_cutter:
	LDA aobject_timer, X
	CMP #$2A
	BCS @rolling_back
	INC aobject_timer, X
	SEC
	LDA aobject_ycoord_speed_fraction, X
	SBC #$1A
	STA aobject_ycoord_speed_fraction, X
	LDA aobject_ycoord_speed, X
	SBC #$00
	STA aobject_ycoord_speed, X
	JSR _check_enemies_collision
	RTS

@rolling_back:
	BNE @set
	LDA #$80
	STA z:zboss_coord_speed_fraction
	STA z:zenemies_coord_speed_fraction
	LDA #$02
	STA z:zboss_coord_speed
	STA z:zenemies_coord_speed
	INC aobject_timer, X

@set:
	LDA aobject_xcoord
	PHA
	LDA aobject_ycoord
	PHA
	LDA aobject_xcoord + 1
	STA aobject_xcoord
	LDA aobject_ycoord + 1
	STA aobject_ycoord
	JSR _enemies_face_to_megaman
	STA z:z0C
	CLC
	LDA z:zboss_coord_speed_fraction
	ADC #$08
	STA z:zboss_coord_speed_fraction
	STA z:z00
	LDA z:zboss_coord_speed
	ADC #$00
	STA z:zboss_coord_speed
	STA z:z01
	JSR _update_distance_speed
	LDA z:z03
	CMP #$0C
	BCS @not_hidden
	LDA z:z02
	CMP #$0C
	BCC @hidden

@not_hidden:
	LDX z:zobject_ram_index
	LDA z:zenemies_coord_speed_fraction
	ORA z:zenemies_coord_speed
	BEQ @skip
	SEC
	LDA z:zenemies_coord_speed_fraction
	SBC #$20
	STA z:zenemies_coord_speed_fraction
	LDA z:zenemies_coord_speed
	SBC #$00
	STA z:zenemies_coord_speed
	SEC
	LDA aobject_ycoord_speed_fraction, X
	SBC z:zenemies_coord_speed_fraction
	STA aobject_ycoord_speed_fraction, X
	LDA aobject_ycoord_speed, X
	SBC z:zenemies_coord_speed
	STA aobject_ycoord_speed, X

@skip:
	JSR _check_enemies_collision

@done:
	PLA
	STA aobject_ycoord
	PLA
	STA aobject_xcoord
	RTS

@hidden:
	LDX z:zobject_ram_index
	LDA #$F8
	STA aobject_ycoord, X
	BNE @done

_enemies_copy_robot_hyper_bomb:
	DEC aobject_timer, X
	BEQ @explosion
	JSR _check_enemies_collision
	LDA z:ztsa_blockset_pointers + 1
	BEQ @air
	LDA z:zboss_coord_speed
	BEQ @slow_done
	DEC z:zboss_coord_speed

@slow_done:
	STA aobject_ycoord_speed, X
	STA aobject_ycoord_speed_fraction, X
	LSR aobject_xcoord_speed, X
	ROR aobject_xcoord_speed_fraction, X

@air:
	RTS

@explosion:
	JSR _enemies_explosion
	RTS

_enemies_copy_robot_fire_storm_shield:
	DEC aobject_timer, X
	BEQ @done
	LDA aobject_timer, X
	AND #%00000111
	TAY
	CLC
	LDA aobject_ycoord + 1
	ADC flip_ycoord_trajectory_table, Y
	STA aobject_ycoord, X
	CLC
	LDA aobject_xcoord + 1
	ADC flip_xcoord_trajectory_table, Y
	STA aobject_xcoord, X
	LDA aobject_screen + 1
	ADC flip_screen_trajectory_table, Y
	STA aobject_screen, X
	RTS

@done:
	JMP _delete_objects

_enemies_yellow_devil_parts:
	JSR _check_enemies_collision
	LDA aobject_frameset_timer, X
	CMP #$30
	BCC _enemies_yellow_devil_done_common
	BEQ @run
	CMP #$70
	BCS @check_collision_table
	CMP #$64
	BNE @dont_reset_anim
	LDA #$30
	STA aobject_frameset_timer, X

@dont_reset_anim:
	LDA aobject_flag, X
	AND #objects_right
	BEQ @left
	LDA aobject_xcoord, X
	CMP aobject_hp, X
	BCS @arrived
	RTS

@left:
	LDA aobject_xcoord, X
	CMP aobject_hp, X
	BCC @arrived
	RTS

@run:
	LDA #$04
	STA aobject_xcoord_speed, X
	JSR _yellow_devil_disappear
	RTS

@arrived:
	LDA aobject_hp, X
	STA aobject_xcoord, X
	LDA #$70
	STA aobject_frameset_timer, X
	JSR _clean_objects_speed

@check_collision_table:
	CMP #$93
	BNE @no_collision_table_check
	LDA aobject_timer, X
	LDY #$07

@loop:
	CMP yellow_devil_collision_table, Y
	BEQ @true
	DEY
	BPL @loop
	BMI @skip

@true:
	STY z:z0C
	LDA #$39
	JSR _generate_object
	BCS @skip
	LDA #can_collide_megaman | objects_invisible
	STA aobject_flag, X
	LDY #$08
	JSR _object_speed_init
	LDA #$78
	STA aobject_ycoord, X
	LDA z:z0C
	STA aobject_timer, X

@skip:
	LDX z:zobject_ram_index
	JSR _draw_yellow_devil_tiles
	RTS

@no_collision_table_check:
	CMP #$94
	BNE _enemies_yellow_devil_done_common
	JMP _delete_objects

_enemies_yellow_devil_done_common:
	RTS

yellow_devil_collision_table:
	.BYTE $54, $64, $70, $84, $04, $14, $24, $99

_enemies_yellow_devil_1:
	LDY aobject_timer, X
	LDA z:zboss_move_stage
	CMP @delete_objects_on_move_stage_table, Y
	BNE _enemies_yellow_devil_done_common
	JMP _delete_objects

@delete_objects_on_move_stage_table:
	.BYTE $01, $05, $09, $11, $15, $19, $1C, $1C

_enemies_3b: ;wily1 is used for object flag set, otherwise boss refighting
	LDA z:zcurrent_stage
	CMP #stage_wily2
	BNE @not_wily2
	LDY #$00 ;cutman
	LDA z:zscreen
	CMP #$1C
	BEQ @done
	LDY #$04 ;elecman

@done:
	STY z:zcurrent_boss
	LDA #$02
	STA z:zboss_ai_pointer
	JMP @forced

@not_wily2:
	CMP #stage_wily1
	BEQ @yellow_devil
	LDX z:zscreen
	LDY @refighting_bosses_table - $1D, X
	BNE @done

@forced:
	LDA #$01
	STA z:zjoy1_force_pressed_flag
	JMP _delete_objects

@yellow_devil:
	LDA #can_collide_megaman | objects_right
	STA aobject_flag, X
	LDY #$CC
	JSR _object_speed_init
	LDA #$13
	STA aobject_id, X
	JSR _generate_object
	BCS @exist
	LDA #can_collide_megaman
	STA aobject_flag, X
	LDY #$CC
	JSR _object_speed_init
	LDA #$4C
	STA aobject_xcoord, X

@exist:
	RTS

@refighting_bosses_table:
	.BYTE $02, $03, $01, $05 ;bombman, fireman, iceman, gutsman

_enemies_wily_machine_1_large_bullet_move:
	LDY aobject_hp, X
	LDA aobject_xcoord, Y
	STA z:z00
	LDA aobject_screen, Y
	STA z:z01
	LDA aobject_ycoord, Y
	STA z:z0D
	DEC aobject_timer, X
	LDA aobject_timer, X
	LSR
	LSR
	AND #%00000111
	TAY
	CLC
	LDA z:z0D
	ADC flip_ycoord_trajectory_table, Y
	STA aobject_ycoord, X
	CLC
	LDA z:z00
	ADC flip_xcoord_trajectory_table, Y
	STA aobject_xcoord, X
	LDA z:z01
	ADC flip_screen_trajectory_table, Y
	STA aobject_screen, X
	JSR _check_enemies_collision
	RTS

_enemies_all_stages_clear:
	LDA aobject_frameset_timer, X
	AND #%11110000
	BNE @dogeza
	STA aobject_frameset_timer, X
	JSR _check_enemies_collision
	LDA z:ztsa_blockset_pointers + 1
	BNE @wall
	RTS

@wall:
	LDA #$10
	STA aobject_frameset_timer, X
	RTS

@dogeza:
	CMP #$B0
	BEQ @stage_clear
	RTS

@stage_clear:
	STA aobject_frameset_timer, X
	JMP _stage_clear

_check_enemies_collision:
	LDX z:zobject_ram_index
	LDA #$00
	STA z:ztsa_blockset_pointers
	STA z:ztsa_blockset_pointers + 1
	LDA aobject_flag, X
	AND #objects_hitting_bullet
	BEQ @not_hitting
	JSR _weapon_hitting_enemies

@not_hitting:
	STA aenemies_hitting_thread - $10, X
	LDA aobject_frozen_timer, X
	BNE @not_frozen
	LDA aobject_flag, X
	AND #objects_right
	BEQ @left
	JSR _objects_rightward
	JMP @continue

@left:
	JSR _objects_leftward

@continue:
	JSR _objects_screen_moving_done

@not_frozen:
	SEC
	LDA aobject_xcoord, X
	SBC z:zscreen_xcoord
	LDA aobject_screen, X
	SBC z:zscreen
	BEQ @not_out
	JMP _delete_objects

@not_out:
	LDA aobject_frozen_timer, X
	BNE @skip
	LDA aobject_flag, X
	AND #can_collide_map | objects_temporary
	BNE @true
	JSR _objects_run_ycoord
	BCS @out_of_ycoord
	LDA z:zobject_in_process_ycoord_speed
	STA aobject_ycoord_fraction, X
	LDA z:zobject_in_process_ycoord
	STA aobject_ycoord, X
	BCC @skip

@true:
	JSR _objects_vertical_moving
	LDA z:ztsa_blockset_pointers + 1
	CMP #$FF
	BNE @skip

@out_of_ycoord:
	JMP _delete_objects

@skip:
	CLC
	RTS

_delete_objects:
	LDX z:zobject_ram_index
	LDA #$F8
	STA aobject_ycoord, X
	CPX #$10
	BCC @skip
	LDA #$FF
	STA z:zenemies_screen_thread - $10, X

@skip:
	SEC
	RTS
