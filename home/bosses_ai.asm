_run_bosses_ai:
	LDA z:zboss_ai_pointer
	CMP #$02
	BCS @is_boss
	LDA #$00
	STA aboss_hp
	RTS

@boss_appeared:
	JMP _run_bosses_ai_regular_ready_or_not

@is_boss:
	BNE @boss_appeared
	LDA z:zcurrent_stage
	CMP z:zcurrent_boss
	BNE @continue
	LDA z:ztimer
	BEQ @continue
	DEC z:ztimer
	BNE @nz
	JSR _close_door

@nz:
	RTS

@continue:
	LDA z:zcurrent_boss
	CMP #$06
	BCC _bosses_ai_run_regular
	BEQ @is_yellow_devil
	CMP #$08
	BCC @is_copy_robot
	JMP _load_cwu_01p_wily_machine_1

@is_copy_robot:
	JMP _load_copy_robot

@is_yellow_devil:
	JMP _load_yellow_devil

_bosses_ai_run_regular:
	LDX #$00
	STX z:zobject_ram_index
	STX z:zboss_object_flag
	STX z:zboss_move_timer
	INX
	LDY #$C4
	JSR _object_speed_init
	JSR _generate_object_common
	DEX
	STX aboss_hp
	LDX z:zcurrent_boss
	LDA bosses_object_id_table, X
	STA aobject_pointer + 1
	LDA bosses_xcoord_table, X
	STA aobject_xcoord + 1
	LDA bosses_ycoord_table, X
	STA aobject_ycoord + 1
	LDA #can_collide_map | can_collide_megaman | can_collide_megaman_bullet | objects_temporary
	STA aobject_flag + 1
	INC aobject_frameset_timer + 1
	INC z:zboss_ai_pointer
	LDA #$5E
	STA z:zboss_move_stage
	INC z:zobject_ram_index
	JSR _write_special_object_xcoord_speed
	LDA z:zcurrent_boss
	BNE @not_cutman
	track_queue track_cutman_move

@not_cutman:
	CMP z:zcurrent_stage
	BEQ @not_special_boss_in_stage
	LDA z:zcurrent_stage
	CMP #stage_wily2
	BNE @not_special_boss_in_stage
	LDA #$40
	STA aobject_xcoord + 1
	LDA aobject_flag + 1
	ORA #objects_right
	STA aobject_flag + 1

@not_special_boss_in_stage:
	RTS

_run_bosses_ai_regular_ready_or_not:
	CMP #$03
	BNE @ready_filled_without_animation
	LDA z:zcurrent_boss
	CMP #$02
	BNE @skip_filled
	LDA aobject_frameset_timer + 1
	CMP #$3C
	BNE @not_renew
	LDA #$0C
	JSR _bosses_shoot_object
	LDA #$30
	STA aobject_ycoord_speed_fraction, X
	LDA #$03
	STA aobject_ycoord_speed, X
	INC z:zboss_move_timer

@not_renew:
	LDA z:zboss_move_stage
	CMP #$3A
	BCS @skip_filled
	JSR _boss_hp_filled

@skip_filled:
	DEC z:zboss_move_stage
	LDA aobject_frameset_timer + 1
	BNE @skip
	INC z:zboss_ai_pointer
	LDA z:zcurrent_boss
	CMP #$06
	BCS @skip
	DEC aobject_pointer + 1

@skip:
	RTS

@ready_filled_without_animation:
	LDA z:zboss_ai_pointer
	CMP #$04
	BNE @ready_done
	JSR _boss_hp_filled
	DEC z:zboss_move_stage
	BNE @nz
	INC z:zboss_ai_pointer

@nz:
	RTS

@ready_done:
	LDA #$00
	STA z:zjoy1_force_pressed_flag
	SEC
	LDA z:zboss_ai_pointer
	SBC #$05
	ASL
	TAY
	LDA z:zcurrent_boss
	ASL
	TAX
	LDA bosses_ai_pointer, X
	STA z:z00
	LDA bosses_ai_pointer + 1, X
	STA z:z01
	JMP (z00)

_cutman_boss_ai:
	LDA z:zboss_invincibility_time
	BEQ @not_knock_back
	CMP #$1F
	BCC @not_knock_back
	LDY #$28

@not_knock_back:
	LDA @jumptable, Y
	PHA
	LDA @jumptable + 1, Y
	PHA
	LDA z:zboss_move_timer
	BNE @nz_1
	JMP @to_jumptable

@nz_1:
	LDA #$12
	STA aobject_timer + 1
	LDA #$45
	LDX #$04
	JSR _check_object_type
	LDA z:zboss_move_timer
	CMP #$02
	BEQ @rolling_cutter_is_back
	LDA aobject_ycoord, X
	CMP #$18
	BCC @out_of_bound
	CMP #$D8
	BCS @out_of_bound
	LDA aobject_xcoord, X
	CMP #$18
	BCC @out_of_bound
	CMP #$E8
	BCS @out_of_bound
	JMP @to_jumptable

@out_of_bound:
	INC z:zboss_move_timer
	LDA aobject_flag, X
	EOR #objects_right
	STA aobject_flag, X
	LDA aobject_ycoord_speed, X
	EOR #%11111111
	STA aobject_ycoord_speed, X
	LDA aobject_ycoord_speed_fraction, X
	EOR #%11111111
	CLC
	ADC #$01
	STA aobject_ycoord_speed_fraction, X
	LDA #$60
	STA z:zboss_coord_speed_fraction
	LDA #$02
	STA z:zboss_coord_speed
	JMP @to_jumptable

@rolling_cutter_is_back:
	LDA z:znmi_frame
	AND #%00000011
	BNE @to_jumptable
	LDA aobject_flag, X
	AND #~objects_right
	STA aobject_flag, X
	SEC
	LDA aobject_xcoord + 1
	SBC aobject_xcoord, X
	BCC @cutman_on_left
	STA z:z02
	LDA aobject_flag, X
	ORA #objects_right
	STA aobject_flag, X
	BNE @continue_1

@cutman_on_left:
	EOR #%11111111
	ADC #$01
	STA z:z02

@continue_1:
	CLC
	LDA z:zboss_coord_speed_fraction
	ADC #$04
	STA z:zboss_coord_speed_fraction
	STA z:z00
	LDA z:zboss_coord_speed
	ADC #$00
	STA z:zboss_coord_speed
	STA z:z01
	SEC
	LDA aobject_ycoord, X
	SBC aobject_ycoord + 1
	STA z:z03
	JSR _bosses_shoot_object_with_255fraction_speed
	LDA z:z03
	CMP #$08
	BCS @to_jumptable
	LDA z:z02
	CMP #$08
	BCS @to_jumptable
	LDA #$F8
	STA aobject_ycoord, X
	LDA #$00
	STA z:zboss_move_timer
	STA aobject_timer + 1

@to_jumptable:
	PLA
	STA z:z05
	PLA
	STA z:z04
	LDA aobject_frozen_timer + 1
	BEQ @not_frozen
	RTS

@not_frozen:
	JMP (z04)

@compare_megaman_xcoord:
	LDX #$06
	JSR _compare_megaman_xcoord_with_bosses_xcoord
	CMP #$40
	BCS @done
	INX
	LDA aobject_ycoord + 1
	CMP aobject_ycoord
	BEQ @done
	LDA aobject_pointer
	CMP #$09
	BEQ @done
	LDX #$18

@done:
	STX z:zboss_ai_pointer
	RTS

@run:
	JSR _update_boss_object_flag
	LDA #$3F
	CMP aobject_pointer + 1
	BEQ @skip_1
	STA aobject_pointer + 1
	LDA #$00
	STA aobject_frameset_timer + 1
	STA aobject_timer + 1
	LDA #$20
	STA aobject_xcoord_speed_fraction + 1
	LDA #$01
	STA aobject_xcoord_speed + 1
	LDA z:zboss_move_timer
	BEQ @skip_1
	LDA #$11
	STA aobject_timer + 1

@skip_1:
	JSR _update_bosses_xcoord_speed
	LDA z:ztsa_blockset_pointers
	BNE @not_background
	JMP @compare_megaman_xcoord

@not_background:
	LDA #$07
	STA z:zboss_ai_pointer
	RTS

@random_ai:
	JSR _update_boss_object_flag
	LDA #$41
	STA aobject_pointer + 1
	LDA #$00
	STA aobject_timer + 1
	STA aobject_frameset_timer + 1
	LDA z:zboss_move_timer
	BEQ @skip_2
	LDA #$1F
	STA aobject_timer + 1

@skip_2:
	LDA #$06
	JSR _random_integer
	LDY #$02
	LSR
	BCS @continue_2
	DEY
	LSR
	BCC @continue_2
	DEY

@continue_2:
	LDA @random_ai_table, Y
	STA z:zboss_ai_pointer
	LDA #$06
	STA aobject_ycoord_speed + 1
	LDA #$40
	STA aobject_ycoord_speed_fraction + 1
	JSR _compare_megaman_xcoord_with_bosses_xcoord
	CLC
	ADC @xcoord_table, Y
	BPL @not_negative
	EOR #%11111111
	CLC
	ADC #$01

@not_negative:
	TAX
	LDA #$32
	LDY #$00
	JSR _255fraction_div_to_constants
	LDA z:z04
	STA aobject_xcoord_speed_fraction + 1
	LDA z:z05
	STA aobject_xcoord_speed + 1
	RTS

@stand_jump:
	JSR @update_xcoord_speed_and_random
	LDX #$0E
	AND #%00000001
	BNE @nz_2
	LDA z:zboss_move_timer
	BNE @nz_2
	LDX #$10
	LDA #$08
	STA z:zboss_move_stage

@nz_2:
	STX z:zboss_ai_pointer
	RTS

@near_jump:
	JSR @update_xcoord_speed_and_random
	INC z:zboss_ai_pointer
	AND #%00000001
	BNE @nz_3
	LDA z:zboss_move_timer
	BNE @nz_3
	LDA #$12
	STA z:zboss_ai_pointer
	LDA #$12
	STA z:zboss_move_stage

@nz_3:
	RTS

@near_jump_collision:
	JSR _update_bosses_xcoord_speed
	BEQ @is_background_1
	INC z:zboss_ai_pointer
	JSR _compare_megaman_xcoord_with_bosses_xcoord
	CMP #$0E
	BCC @run_random_ai
	LDA #$05
	STA z:zboss_ai_pointer
	RTS

@run_random_ai:
	LDA #$03
	JSR _random_integer
	AND #%00000001
	BEQ @skip_3
	LDA z:zboss_move_timer
	BNE @skip_3
	LDA #$14
	STA z:zboss_ai_pointer
	LDA #$12
	STA z:zboss_move_stage

@skip_3:
	LDA #$E0
	STA aobject_ycoord_speed_fraction + 1
	LDA #$04
	STA aobject_ycoord_speed + 1
	LDA #$C0
	STA aobject_xcoord_speed_fraction + 1
	LDA #$00
	STA aobject_xcoord_speed + 1

@is_background_1:
	RTS

@far_jump:
	JSR @update_xcoord_speed_and_random
	LDX #$0D
	AND #%00000001
	BNE @nz_4
	LDA z:zboss_move_timer
	BNE @nz_4
	LDX #$16
	LDA #$15
	STA z:zboss_move_stage

@nz_4:
	STX z:zboss_ai_pointer
	RTS

@update_xcoord_speed_and_random:
	JSR _update_bosses_xcoord_speed
	LDA #$03
	JSR _random_integer
	RTS

@low_jump:
	JSR _update_bosses_xcoord_speed
	BEQ @is_background_2

@nz_5:
	LDA #$05
	STA z:zboss_ai_pointer

@is_background_2:
	RTS

@far_jump_collision:
	JSR _update_bosses_xcoord_speed
	BEQ @is_background_3
	LDA z:zrandom
	AND #%00000001
	BNE @nz_5
	INC z:zboss_ai_pointer

@is_background_3:
	RTS

@stand_jump_collision:
	JSR _update_bosses_xcoord_speed
	BEQ @is_background_4
	LDA z:zboss_move_timer
	BNE @nz_6
	LDA aobject_ycoord + 1
	CMP aobject_ycoord
	BEQ @init_jump_parameter
	LDA aobject_pointer
	CMP #$09
	BEQ @init_jump_parameter
	LDA #$18
	STA z:zboss_ai_pointer
	RTS

@init_jump_parameter:
	LDA #$43
	STA aobject_pointer + 1
	LDA #$00
	STA aobject_xcoord_speed_fraction + 1
	STA aobject_xcoord_speed + 1
	STA aobject_timer + 1
	INC z:zboss_ai_pointer

@is_background_4:
	RTS

@stand_shoot:
	JSR _update_bosses_xcoord_speed
	LDA aobject_frameset_timer + 1
	BNE @nz_7

@nz_6:
	LDA #$05
	STA z:zboss_ai_pointer
	RTS

@nz_7:
	CMP #$10
	BNE @skip_shoot_1
	LDA #$06
	JSR @shoot

@skip_shoot_1:
	RTS

@ready_to_shoot_on_jump:
	JSR _update_bosses_xcoord_speed
	DEC z:zboss_move_stage
	BNE @nz_8
	LDA #$43
	STA aobject_pointer + 1
	LDA #$00
	STA aobject_frameset_timer + 1
	STA aobject_timer + 1
	INC z:zboss_ai_pointer

@nz_8:
	RTS

@shoot_on_jump:
	LDA aobject_frameset_timer + 1
	BNE @nz_9
	LDA #$41
	STA aobject_pointer + 1
	BNE @skip_shoot_2

@nz_9:
	CMP #$10
	BNE @skip_shoot_2
	JSR @shoot

@skip_shoot_2:
	JSR _update_bosses_xcoord_speed
	BEQ @is_background_5
	LDA aobject_ycoord + 1
	CMP aobject_ycoord
	BEQ @skip_4
	LDA aobject_pointer
	CMP #$09
	BEQ @skip_4
	LDA #$18
	STA z:zboss_ai_pointer
	RTS

@skip_4:
	LDA z:zboss_ai_pointer
	AND #%00000111
	LSR
	TAX
	LDA @shoot_on_jump_ai_table, X
	STA z:zboss_ai_pointer

@is_background_5:
	RTS

@shoot_on_jump_ai_table:
	.BYTE $0E, $0A, $05, $05

@not_same_xcoord:
	LDA #$46
	CMP aobject_pointer + 1
	BEQ @skip_5
	STA aobject_pointer + 1
	LDA #$3F
	STA z:zboss_move_stage
	LDA #$00
	STA aobject_frameset_timer + 1
	STA aobject_xcoord_speed_fraction + 1
	STA aobject_xcoord_speed + 1
	track_queue track_cutman_move

@skip_5:
	JSR _update_bosses_xcoord_speed
	LDA aobject_ycoord + 1
	CMP aobject_ycoord
	BNE @not_same
	LDA aobject_pointer
	CMP #$09
	BNE @skip_6

@not_same:
	LDA z:zboss_move_stage
	BEQ @skip_6
	DEC z:zboss_move_stage
	BNE @nz_10

@skip_6:
	LDA z:zboss_move_timer
	BNE @nz_10
	LDX #$0E
	STX z:zboss_ai_pointer
	JMP @init_jump_parameter

@nz_10:
	RTS

@shoot:
	LDA #$06
	JSR _bosses_shoot_object
	BCS @exist
	JSR _compare_megaman_xcoord_with_bosses_xcoord
	STA z:z02
	LDA #$02
	STA z:z01
	LDA #$60
	STA z:z00
	SEC
	LDA aobject_ycoord + 1
	SBC #$0A
	SEC
	SBC aobject_ycoord
	STA z:z03
	JSR _bosses_shoot_object_with_255fraction_speed
	INC z:zboss_move_timer
	track_queue track_rolling_cutter

@exist:
	RTS

@knock_back:
	LDA #$57
	JSR _bosses_knock_back
	RTS

@jumptable:
	.WORD @compare_megaman_xcoord
	.WORD @run
	.WORD @random_ai
	.WORD @stand_jump
	.WORD @near_jump
	.WORD @near_jump_collision
	.WORD @low_jump
	.WORD @far_jump
	.WORD @far_jump_collision
	.WORD @stand_jump_collision
	.WORD @stand_shoot
	.WORD @ready_to_shoot_on_jump
	.WORD @shoot_on_jump
	.WORD @ready_to_shoot_on_jump
	.WORD @shoot_on_jump
	.WORD @ready_to_shoot_on_jump
	.WORD @shoot_on_jump
	.WORD @ready_to_shoot_on_jump
	.WORD @shoot_on_jump
	.WORD @not_same_xcoord
	.WORD @knock_back

@random_ai_table:
	.BYTE $08, $09, $0C

@xcoord_table:
	.BYTE $E0, $00, $20

_bombman_boss_ai:
	LDA aobject_frozen_timer + 1
	BEQ @not_frozen
	RTS

@not_frozen:
	LDA @jumptable, Y
	STA z:z04
	LDA @jumptable + 1, Y
	STA z:z05
	JMP (z04)

@compare_megaman_xcoord:
	JSR _update_boss_object_flag
	LDA #$00
	STA aobject_frameset_timer + 1
	STA aobject_timer + 1
	LDX #$00
	LDA z:zrandom
	AND #%00000001
	BEQ @even
	INX

@even:
	LDA @ai_table, X
	STA z:zboss_ai_pointer
	LDA @object_id_table, X
	STA aobject_pointer + 1
	LDA @xcoord_speed_fraction_table, X
	STA aobject_xcoord_speed_fraction + 1
	LDA @xcoord_speed_table, X
	STA aobject_xcoord_speed + 1
	LDA @ycoord_speed_fraction_table, X
	STA aobject_ycoord_speed_fraction + 1
	LDA @ycoord_speed_table, X
	STA aobject_ycoord_speed + 1
	RTS

@ai_table:
	.BYTE $0D, $16, $0D

@object_id_table:
	.BYTE $28, $29, $2A

@xcoord_speed_fraction_table:
	.BYTE $90, $09, $09

@xcoord_speed_table:
	.BYTE $02, $01, $01

@ycoord_speed_fraction_table:
	.BYTE $60, $B0, $B0

@ycoord_speed_table:
	.BYTE $07, $05, $05

@jump_backward:
	DEC z:zboss_ai_pointer
	JSR _update_boss_object_flag
	LDA z:zboss_object_flag
	EOR #objects_right
	STA z:zboss_object_flag
	LDA #$00
	STA aobject_frameset_timer + 1
	STA aobject_timer + 1
	LDX #$02
	JMP @even

@shoot_then_stand:
	JSR @calc_xcoord_distance
	LDA z:zboss_move_timer
	BNE @nz
	JMP @done

@shoot_then_jump:
	LDA z:zboss_move_timer
	BNE @nz
	DEC z:zboss_ai_pointer

@nz:
	RTS

@shoot:
	JSR @calc_xcoord_distance
	LDX aobject_timer + 1
	BNE @skip
	DEC z:zboss_ai_pointer
	TAX
	SEC
	SBC #$18
	BCC @not_negative
	TAX

@not_negative:
	LDY #$00
	LDA #$33
	JSR _255fraction_div_to_constants
	LDA #$00
	JSR _bosses_shoot_object
	BCS @skip
	LDA z:z04
	STA aobject_xcoord_speed_fraction, X
	LDA z:z05
	STA aobject_xcoord_speed, X
	INC z:zboss_move_timer

@skip:
	RTS

@run_random_ai:
	JSR @calc_xcoord_distance
	LDA #$06
	JSR _random_integer
	LSR
	BCS @done
	DEC z:zboss_ai_pointer
	DEC z:zboss_ai_pointer
	LSR
	BCC @done
	DEC z:zboss_ai_pointer
	DEC z:zboss_ai_pointer

@done:
	DEC z:zboss_ai_pointer
	LDA #$2B
	STA aobject_pointer + 1
	LDA #$00
	STA aobject_frameset_timer + 1
	LDA #$1F
	STA aobject_timer + 1
	RTS

@jump_forward:
	JSR _update_bosses_xcoord_speed
	BEQ @is_background
	LDA #$1D
	STA aobject_pointer + 1
	LDA #$00
	STA aobject_xcoord_speed_fraction + 1
	STA aobject_xcoord_speed + 1
	DEC z:zboss_ai_pointer

@is_background:
	RTS

@calc_xcoord_distance:
	JSR _compare_megaman_xcoord_with_bosses_xcoord
	CMP #$30
	BCS @not_quit
	LDA #$05
	STA z:zboss_ai_pointer
	PLA
	PLA

@not_quit:
	RTS

@jumptable:
	.WORD @compare_megaman_xcoord
	.WORD @shoot_then_jump
	.WORD @shoot
	.WORD @shoot_then_stand
	.WORD @shoot
	.WORD @shoot_then_stand
	.WORD @shoot
	.WORD @run_random_ai
	.WORD @jump_forward
	.WORD @jump_backward
	.WORD @shoot_then_jump
	.WORD @shoot
	.WORD @shoot_then_stand
	.WORD @shoot
	.WORD @shoot_then_stand
	.WORD @shoot
	.WORD @run_random_ai
	.WORD @jump_forward

_iceman_boss_ai:
	LDA aobject_frozen_timer + 1
	BEQ @not_frozen
	RTS

@not_frozen:
	LDA @jumptable, Y
	STA z:z04
	LDA @jumptable + 1, Y
	STA z:z05
	JMP (z04)

@generate_fake_xcoord:
	LDA #$00
	STA aobject_frameset_timer + 1
	STA aobject_timer + 1
	LDA #$3B
	STA aobject_pointer + 1
	LDA #$20
	STA aobject_xcoord_speed_fraction + 1
	LDA #$01
	STA aobject_xcoord_speed + 1
	LDA aobject_xcoord
	PHA
	LDA z:zboss_object_flag
	AND #can_collide_map | can_collide_megaman | can_collide_megaman_bullet | 1 << 3
	TAX
	LDA @xcoord_table, X
	STA aobject_xcoord
	JSR _update_boss_object_flag
	PLA
	STA aobject_xcoord
	INC z:zboss_ai_pointer
	RTS

@run_to_fake_xcoord:
	LDA aobject_xcoord
	PHA
	LDA z:zboss_object_flag
	AND #can_collide_map | can_collide_megaman | can_collide_megaman_bullet | 1 << 3
	TAX
	LDA @xcoord_table, X
	STA aobject_xcoord
	JSR _compare_megaman_xcoord_with_bosses_xcoord
	TAX
	PLA
	STA aobject_xcoord
	CPX #$02
	BCC @close_to_fake_xcoord
	JSR _update_bosses_xcoord_speed_without_compare
	RTS

@close_to_fake_xcoord:
	INC aobject_pointer + 1
	LDA #$1F
	STA aobject_timer + 1
	LDA #$00
	STA aobject_frameset_timer + 1
	LDA #$10
	STA aobject_xcoord_speed_fraction + 1
	LDA #$00
	STA aobject_xcoord_speed + 1
	INC z:zboss_ai_pointer
	RTS

@backward:
	LDA aobject_timer + 1
	BEQ @zero
	JSR _update_bosses_xcoord_speed_without_compare
	RTS

@zero:
	INC z:zboss_ai_pointer
	RTS

@jump:
	JSR _compare_megaman_xcoord_with_bosses_xcoord
	LDA #$00
	STA aobject_xcoord_speed_fraction + 1
	STA aobject_xcoord_speed + 1
	LDA #$DF
	STA aobject_ycoord_speed_fraction + 1
	LDA #$04
	STA aobject_ycoord_speed + 1
	INC z:zboss_ai_pointer
	RTS

@down_shoot:
	JSR _update_bosses_xcoord_speed
	LDA aobject_ycoord_speed + 1
	BPL @skip_1
	LDA z:zboss_ai_pointer
	AND #%00000111
	LSR
	TAX
	LDA aobject_ycoord + 1
	CMP @down_shoot_ycoord_table, X
	BCC @skip_1
	LDX z:zboss_move_timer
	LDY #$00
	LDA #$03
	JSR _255fraction_div_to_constants
	LDA z:z05
	ASL
	TAX
	LDA @ycoord_speed_and_fraction_table, X
	STA aobject_ycoord_speed + 1
	LDA @ycoord_speed_and_fraction_table + 1, X
	STA aobject_ycoord_speed_fraction + 1
	LDA aobject_flag + 1
	AND #~objects_temporary
	STA aobject_flag + 1
	INC z:zboss_ai_pointer

@skip_1:
	RTS

@down_shoot_ycoord_table:
	.BYTE $94, $A4, $B4

@set_second_shoot_delay:
	INC z:zboss_ai_pointer
	LDX z:zboss_move_timer
	LDY #$00
	LDA #$03
	JSR _255fraction_div_to_constants
	LDX z:z05
	LDA @second_shoot_delay_table, X
	STA z:zboss_move_stage
	RTS

@shoot:
	JSR _compare_megaman_xcoord_with_bosses_xcoord
	LDA #$05
	JSR _bosses_shoot_object
	BCS @exist
	STX z:z0D
	LDX z:zboss_move_timer
	LDY #$00
	LDA #$03
	JSR _255fraction_div_to_constants
	LDA z:z05
	ASL
	TAX
	LDY z:z0D
	LDA @xcoord_speed_and_fraction_table, X
	STA aobject_xcoord_speed, Y
	LDA @xcoord_speed_and_fraction_table + 1, X
	STA aobject_xcoord_speed_fraction, Y
	LDA #$26
	STA aobject_timer + 1
	track_queue track_ice_slasher

@exist:
	INC z:zboss_ai_pointer
	RTS

@prepare_second_shoot:
	JSR _update_boss_object_flag
	DEC z:zboss_move_stage
	BNE @nz
	LDA aobject_ycoord_speed + 1
	EOR #%11111111
	STA aobject_ycoord_speed + 1
	LDA aobject_ycoord_speed_fraction + 1
	EOR #%11111111
	CLC
	ADC #$01
	STA aobject_ycoord_speed_fraction + 1
	INC z:zboss_ai_pointer

@nz:
	RTS

@up_shoot:
	JSR _update_bosses_xcoord_speed
	LDA z:zboss_ai_pointer
	AND #%00000111
	LSR
	LSR
	TAX
	LDA aobject_ycoord + 1
	CMP @up_shoot_ycoord_table, X
	BCS @skip_2
	INC z:zboss_ai_pointer

@skip_2:
	RTS

@up_shoot_ycoord_table:
	.BYTE $A5, $95

@shoot_done:
	LDA aobject_flag + 1
	ORA #objects_temporary
	STA aobject_flag + 1
	LDA #$C0
	STA aobject_ycoord_speed_fraction + 1
	LDA #$02
	STA aobject_ycoord_speed + 1
	INC z:zboss_ai_pointer
	RTS

@check_collision:
	JSR _update_bosses_xcoord_speed
	LDA z:ztsa_blockset_pointers + 1
	BEQ @skip_3
	LDA #$05
	STA z:zboss_ai_pointer
	LDA z:zboss_move_timer
	CMP #$09
	BEQ @done
	INC z:zboss_move_timer

@done:
	INC z:zboss_object_flag
	LDA z:zboss_object_flag
	AND #can_collide_map | can_collide_megaman | can_collide_megaman_bullet | 1 << 3
	CMP #can_collide_megaman_bullet
	BNE @skip_3
	LDA z:zboss_object_flag
	AND #objects_temporary | objects_invisible | objects_right | 1 << 7
	STA z:zboss_object_flag

@skip_3:
	RTS

@jumptable:
	.WORD @generate_fake_xcoord
	.WORD @run_to_fake_xcoord
	.WORD @backward
	.WORD @jump
	.WORD @down_shoot
	.WORD @shoot
	.WORD @down_shoot
	.WORD @shoot
	.WORD @down_shoot
	.WORD @shoot
	.WORD @set_second_shoot_delay
	.WORD @prepare_second_shoot
	.WORD @shoot
	.WORD @up_shoot
	.WORD @shoot
	.WORD @up_shoot
	.WORD @shoot
	.WORD @shoot_done
	.WORD @check_collision

@xcoord_table:
	.BYTE $D0, $A8, $80, $A8

@xcoord_speed_and_fraction_table:
	.BYTE $01, $60, $01, $80, $02, $00, $02, $E0

;unknown
	.BYTE $0D, $0C, $09, $06

@second_shoot_delay_table:
	.BYTE $30, $2E, $26, $1B

@ycoord_speed_and_fraction_table:
	.BYTE $FF, $60, $FF, $50, $FF, $2C, $FE, $E0

_fireman_boss_ai:
	LDA z:zboss_invincibility_time
	CMP #$10
	BNE @not_shoot
	LDY #$04
	LDA #$07
	STA z:zboss_ai_pointer

@not_shoot:
	LDA @jumptable, Y
	PHA
	LDA @jumptable + 1, Y
	PHA
	LDA aobject_xcoord + 1
	PHA
	LDA aobject_flag + 1
	PHA
	LDX #$10

@loop:
	LDA #$37
	JSR _check_object_type
	BCS @done_1
	STX z:z05
	LDA aobject_xcoord, X
	STA aobject_xcoord + 1
	JSR _compare_megaman_xcoord_with_bosses_xcoord
	CMP #$08
	BCS @not_close_to_megaman
	LDA #$38
	LDX #$10
	JSR _check_object_type
	BCC @not_exist
	LDA #$04
	JSR _bosses_shoot_object
	JMP @done_1

@not_exist:
	LDY #$1C
	LDA #$04
	STA z:z0D
	JSR _bosses_shoot_object_common
	JMP @done_1

@not_close_to_megaman:
	LDX z:z05
	INX
	BNE @loop

@done_1:
	PLA
	STA aobject_flag + 1
	PLA
	STA aobject_xcoord + 1
	PLA
	STA z:z05
	PLA
	STA z:z04
	LDA aobject_frozen_timer + 1
	BEQ @not_frozen
	RTS

@not_frozen:
	JMP (z04)

@run_to_megaman:
	LDX #$07
	JSR _compare_megaman_xcoord_with_bosses_xcoord
	CMP #$61
	BCS @run
	CMP #$5F
	BCC @escape
	STX z:zboss_ai_pointer
	RTS

@escape:
	LDA aobject_flag + 1
	EOR #objects_right
	STA aobject_flag + 1

@run:
	LDA aobject_flag + 1
	AND #objects_right
	STA z:zboss_object_flag
	LDA #$34
	CMP aobject_pointer + 1
	BEQ @skip
	STA aobject_pointer + 1
	LDA #$00
	STA aobject_frameset_timer + 1
	STA aobject_timer + 1
	LDA #$20
	STA aobject_xcoord_speed_fraction + 1
	LDA #$01
	STA aobject_xcoord_speed + 1

@skip:
	JSR _update_bosses_xcoord_speed_without_compare
	LDA z:ztsa_blockset_pointers
	BEQ @is_background
	JSR _update_boss_object_flag
	INC z:zboss_ai_pointer

@is_background:
	RTS

@run_but_hit_not_background:
	LDA aobject_flag + 1
	PHA
	JSR _compare_megaman_xcoord_with_bosses_xcoord
	CMP #$61
	BCS @done_2
	PLA
	STA aobject_flag + 1
	JSR _update_bosses_xcoord_speed_without_compare
	LDA z:ztsa_blockset_pointers
	BNE @not_background
	RTS

@not_background:
	JSR _update_boss_object_flag
	DEC z:zboss_ai_pointer
	RTS

@done_2:
	PLA
	DEC z:zboss_ai_pointer
	RTS

@prepare_shoot_with_pose:
	LDA #$35
	STA aobject_pointer + 1
	LDA #$00
	STA aobject_frameset_timer + 1
	STA aobject_timer + 1

@prepare_shoot:
	JSR _compare_megaman_xcoord_with_bosses_xcoord
	LDA #$01
	JSR _bosses_shoot_object
	BCS @overflow
	LDA #$3F
	STA z:zboss_move_timer
	LDX #$10
	LDA #$38
	JSR _check_object_type
	BCS @exist
	LDA #$F8
	STA aobject_ycoord, X

@exist:
	INC z:zboss_ai_pointer

@overflow:
	RTS

@shoot:
	LDA z:zboss_move_timer
	CMP #$30
	BCS @continue
	JSR _compare_megaman_xcoord_with_bosses_xcoord
	CMP #$61
	BCS @reset_distance
	CMP #$5F
	BCS @continue

@reset_distance:
	LDA #$05
	STA z:zboss_ai_pointer
	RTS

@continue:
	DEC z:zboss_move_timer
	BNE @nz_1
	INC z:zboss_ai_pointer

@nz_1:
	RTS

@idle:
	JSR _compare_megaman_xcoord_with_bosses_xcoord
	DEC z:zboss_move_timer
	BNE @nz_2
	LDX #$33
	STX aobject_pointer + 1

@nz_2:
	CMP #$61
	BCS @reset_distance
	CMP #$5F
	BCC @reset_distance
	LDA z:zjoy1_pressed
	BNE @reset_distance
	RTS

@jumptable:
	.WORD @run_to_megaman
	.WORD @run_but_hit_not_background
	.WORD @prepare_shoot_with_pose
	.WORD @shoot
	.WORD @prepare_shoot
	.WORD @shoot
	.WORD @prepare_shoot
	.WORD @shoot
	.WORD @prepare_shoot
	.WORD @shoot
	.WORD @prepare_shoot
	.WORD @idle

_elecman_boss_ai:
	LDA z:zboss_invincibility_time
	BEQ @not_knock_back_and_continue
	CMP #$1F
	BCC @not_knock_back_and_continue
	LDY #$12
	LDA aobject_frozen_timer + 1
	BEQ @not_knock_back_and_continue
	RTS

@not_knock_back_and_continue:
	LDA elecman_boss_ai_jumptable, Y
	STA z:z04
	LDA elecman_boss_ai_jumptable + 1, Y
	STA z:z05
	JMP (z04)

_elecman_boss_ai_run_to_fake_xcoord:
	LDA #$48

_bosses_run_to_fake_xcoord_animation_common:
	CMP aobject_pointer + 1
	BEQ @skip
	STA aobject_pointer + 1
	LDA #$00
	STA aobject_frameset_timer + 1
	STA aobject_timer + 1
	STA aobject_xcoord_speed_fraction + 1
	LDA #$02
	STA aobject_xcoord_speed + 1

@skip:
	LDA z:zboss_object_flag
	AND #can_collide_map | can_collide_megaman | can_collide_megaman_bullet | 1 << 3
	TAX
	LDA aobject_xcoord
	PHA
	LDA elecman_boss_ai_fake_xcoord_table, X
	STA aobject_xcoord
	JSR _compare_megaman_xcoord_with_bosses_xcoord
	CMP #$03
	BCS @close_to_fake_xcoord
	INC z:zboss_ai_pointer

@close_to_fake_xcoord:
	JSR _update_boss_object_flag
	PLA
	STA aobject_xcoord
	JSR _update_bosses_xcoord_speed_without_compare
	LDA z:ztsa_blockset_pointers
	BNE @not_background
	LDA z:zjoy1_pressed_bits
	AND #b_button
	BEQ @not_pressed

@not_background:
	LDA #$09
	STA z:zboss_ai_pointer

@not_pressed:
	RTS

_bosses_stop_running_common:
	LDA #$00
	STA aobject_xcoord_speed_fraction + 1
	STA aobject_xcoord_speed + 1

_bosses_delay_common:
	STA aobject_frameset_timer + 1
	LDA #$49
	STA aobject_pointer + 1
	LDA #$1F
	STA aobject_timer + 1
	INC z:zboss_ai_pointer
	JSR _update_bosses_xcoord_speed
	RTS

_elecman_boss_ai_prepare_shoot:
	LDA aobject_timer + 1
	BNE @skip
	JSR _enemies_shoot_thunder_beam
	BCS @skip
	INC z:zboss_ai_pointer
	track_queue track_thunder_beam

@skip:
	JSR _update_bosses_xcoord_speed
	RTS

_elecman_boss_ai_shoot:
	JSR _update_bosses_xcoord_speed
	LDA z:zboss_move_timer
	BNE _elecman_boss_ai_shoot_nz

_bosses_shoot_object_collide_megaman_common:
	INC z:zboss_object_flag
	LDA z:zboss_object_flag
	AND #can_collide_map | can_collide_megaman | can_collide_megaman_bullet | 1 << 3
	CMP #can_collide_megaman_bullet
	BNE @not_collision
	LDA z:zboss_object_flag
	AND #objects_temporary | objects_invisible | objects_right | 1 << 7
	STA z:zboss_object_flag

@not_collision:
	LDA #$05
	STA z:zboss_ai_pointer

_elecman_boss_ai_shoot_nz:
	RTS

_elecman_boss_ai_random_jump:
	LDA #$4B

_bosses_random_jump_common:
	STA aobject_pointer + 1
	LDA #$00
	STA aobject_frameset_timer + 1
	STA aobject_timer + 1
	STA aobject_ycoord_speed_fraction + 1
	LDA #$E0
	STA aobject_xcoord_speed_fraction + 1
	LDA #$01
	STA aobject_xcoord_speed + 1
	LDA #$04
	STA aobject_ycoord_speed + 1
	JSR _update_boss_object_flag
	LDA z:zrandom
	AND #%00000011
	BNE @not_turn
	LDA z:zboss_object_flag
	EOR #objects_right
	STA z:zboss_object_flag

@not_turn:
	INC z:zboss_ai_pointer
	RTS

_bosses_floating_common:
	JSR _update_bosses_xcoord_speed
	BEQ @is_background
	LDA #$05
	STA z:zboss_ai_pointer
	RTS

@is_background:
	LDA z:zjoy1_pressed_bits
	AND #b_button
	BEQ @not_pressed
	INC z:zboss_ai_pointer

@not_pressed:
	RTS

_elecman_boss_ai_delay_on_jump:
	LDA #$00
	JSR _bosses_delay_common
	BEQ _elecman_boss_ai_collision_is_background

_elecman_boss_ai_collision_not_background:
	LDA #$00
	STA aobject_xcoord_speed_fraction + 1
	STA aobject_xcoord_speed + 1

_elecman_boss_ai_collision_is_background:
	RTS

_elecman_boss_ai_prepare_shoot_on_jump:
	JSR _elecman_boss_ai_prepare_shoot
	BNE _elecman_boss_ai_collision_not_background
	RTS

_elecman_boss_ai_shoot_on_jump:
	LDA z:zboss_move_timer
	BNE @nz
	LDA #$05
	STA z:zboss_ai_pointer

@nz:
	JSR _update_bosses_xcoord_speed
	BNE _elecman_boss_ai_collision_not_background
	RTS

elecman_boss_ai_fake_xcoord_table:
	.BYTE $B0, $80, $30, $80

_elecman_boss_ai_knock_back:
	LDA #$59
	JSR _bosses_knock_back
	RTS

elecman_boss_ai_jumptable:
	.WORD _elecman_boss_ai_run_to_fake_xcoord
	.WORD _bosses_stop_running_common
	.WORD _elecman_boss_ai_prepare_shoot
	.WORD _elecman_boss_ai_shoot
	.WORD _elecman_boss_ai_random_jump
	.WORD _bosses_floating_common
	.WORD _elecman_boss_ai_delay_on_jump
	.WORD _elecman_boss_ai_prepare_shoot_on_jump
	.WORD _elecman_boss_ai_shoot_on_jump
	.WORD _elecman_boss_ai_knock_back

_gutsman_boss_ai:
	LDA aobject_frozen_timer + 1
	BEQ @not_frozen
	RTS

@not_frozen:
	LDA @jumptable, Y
	STA z:z04
	LDA @jumptable + 1, Y
	STA z:z05
	JMP (z04)

@init:
	LDA #$1F
	STA aobject_timer + 1
	LDA #$30
	STA aobject_pointer + 1
	LDA #$00
	STA aobject_xcoord_speed_fraction + 1
	STA aobject_xcoord_speed + 1
	STA aobject_frameset_timer + 1
	LDA #$30
	STA aobject_ycoord_speed_fraction + 1
	LDA #$04
	STA aobject_ycoord_speed + 1
	LDA #$19
	STA z:zboss_ai_pointer
	RTS

@run_even_random_ai:
	LDA z:zgutsman_stomp_timer
	BNE @nz_1
	LDA z:zrandom
	AND #%00000001
	BEQ @prepare_stand_jump
	JSR @turn
	LDA #$09
	STA z:zboss_ai_pointer

@nz_1:
	RTS

@backward_jump_then_throw:
	LDA z:zgutsman_stomp_timer
	BNE @nz_2
	JSR @turn
	LDA #$07
	STA z:zboss_ai_pointer

@nz_2:
	RTS

@stomping:
	LDA z:zgutsman_stomp_timer
	BNE @nz_3
	LDA z:zboss_ai_pointer
	PHA
	JSR _update_boss_object_flag
	JSR @init
	PLA
	STA z:zboss_ai_pointer
	DEC z:zboss_ai_pointer

@nz_3:
	RTS

@run_odd_random_ai:
	LDA z:zgutsman_stomp_timer
	BNE @nz_4
	LDA z:zrandom
	AND #%00000001
	BNE @odd

@turn:
	JSR _update_boss_object_flag
	JSR @init
	LDA z:zboss_object_flag
	EOR #objects_right
	STA z:zboss_object_flag
	LDA #$13
	STA z:zboss_ai_pointer

@nz_4:
	RTS

@prepare_stand_jump:
	LDA z:zgutsman_stomp_timer
	BNE @nz_4

@odd:
	LDA #$05
	STA z:zboss_ai_pointer
	RTS

@near_jump:
	LDA #$09
	STA aobject_xcoord_speed_fraction + 1
	LDA #$01
	STA aobject_xcoord_speed + 1

@stomp:
	LDA aobject_timer + 1
	BNE @skip_1
	LDA z:znmi_frame
	AND #%00000011
	BEQ @skip_1
	JSR _update_bosses_xcoord_speed
	LDA z:ztsa_blockset_pointers + 1
	BEQ @skip_1
	DEC z:zboss_ai_pointer
	LDA #$25
	STA aobject_pointer + 1
	LDA #$20
	STA z:zgutsman_stomp_timer
	track_queue track_earthquake
	RTS

@skip_1:
	LDA #$00
	RTS

@hit:
	LDA z:zboss_move_timer
	BNE @nz_5
	JSR _update_boss_object_flag
	LDA #$03
	JSR _random_integer
	CMP #$01
	BCC @run_init
	PHP
	JSR @init
	PLP
	BNE @run_near_jump_15
	LDA #$0F
	STA z:zboss_ai_pointer
	RTS

@run_near_jump_15:
	LDA #$15
	STA z:zboss_ai_pointer
	LDA z:zboss_object_flag
	EOR #objects_right
	STA z:zboss_object_flag
	RTS

@run_init:
	LDA #$05
	STA z:zboss_ai_pointer

@nz_5:
	RTS

@throw:
	LDX aobject_timer + 1
	BNE @nz_5
	JSR _compare_megaman_xcoord_with_bosses_xcoord
	PHA
	DEC z:zboss_ai_pointer
	LDA #$02
	JSR _bosses_shoot_object
	PLA
	BCS @exist_1
	STA z:z02
	LDA #$04
	STA z:z01
	LDA #$00
	STA z:z00
	CLC
	LDA aobject_ycoord
	ADC #$0C
	STA z:z0C
	SEC
	LDA aobject_ycoord + 1
	SBC #$18
	SBC z:z0C
	STA z:z03
	JSR _bosses_shoot_object_with_255fraction_speed
	INC z:zboss_move_timer

@exist_1:
	RTS

@hold:
	LDA z:zboss_move_timer
	BNE @skip_2
	LDA #$2E
	STA aobject_pointer + 1
	LDA #$1F
	STA aobject_timer + 1
	LDA z:zgutsman_stomp_timer
	BNE @skip_2
	DEC z:zboss_ai_pointer

@skip_2:
	RTS

@prepare_jump:
	JSR @stomp
	BEQ @skip_2
	LDA #$2D
	STA aobject_pointer + 1
	LDA #$00
	STA aobject_frameset_timer + 1
	LDA #$03
	JSR _bosses_shoot_object
	BCS @exist_2
	LDA aobject_ycoord + 1
	CMP #$C0
	BEQ @is_special_ycoord
	LDA #$19
	STA aobject_frameset_timer, X

@is_special_ycoord:
	LDA #$20
	STA aobject_ycoord, X
	INC z:zboss_move_timer

@exist_2:
	RTS

@jumptable:
	.WORD @init
	.WORD @prepare_stand_jump
	.WORD @near_jump
	.WORD @backward_jump_then_throw
	.WORD @near_jump
	.WORD @run_even_random_ai
	.WORD @near_jump
	.WORD @stomping
	.WORD @near_jump
	.WORD @stomping
	.WORD @near_jump
	.WORD @prepare_stand_jump
	.WORD @near_jump
	.WORD @stomping
	.WORD @near_jump
	.WORD @run_odd_random_ai
	.WORD @near_jump
	.WORD @hit
	.WORD @throw
	.WORD @hold
	.WORD @prepare_jump

_yellow_devil_boss_ai:
	LDA z:zboss_invincibility_time
	BEQ @no_invincibility
	CMP #$04
	BEQ @keep
	JSR _update_background_palette_alternative
	LDA #$08
	STA z:zpalette_update_flag
	LDA #$00
	STA aobject_frozen_timer + 1

@keep:
	LDA #$05
	STA z:zboss_invincibility_time

@no_invincibility:
	LDA @jumptable, Y
	STA z:z04
	LDA @jumptable + 1, Y
	STA z:z05
	JMP (z04)

@ready:
	DEC z:zboss_move_stage
	BEQ @start
	RTS

@start:
	LDX #$02

@loop_1:
	LDA @background_palette_table, X
	STA abackground_palette_original + 5, X
	DEX
	BPL @loop_1
	JSR _update_background_palette
	INC z:zboss_ai_pointer
	LDA aobject_screen
	STA aobject_screen + 1
	LDA #$7A
	STA aobject_pointer + 1
	LDA #$00
	STA aobject_timer + 1
	STA aobject_frozen_timer + 1
	STA z:zboss_move_timer
	RTS

@background_palette_table:
	.BYTE dark_orange, light_orange, white_orange

@right_blob:
	LDA z:zboss_move_stage
	CMP #$13
	BEQ @done_1
	LDA z:zboss_move_timer
	CMP #$19
	BEQ @create_next_blob_1
	INC z:zboss_move_timer
	RTS

@create_next_blob_1:
	LDA #$00
	STA z:zboss_move_timer
	JSR @create_blob
	LDA #$08
	STA aobject_xcoord, X
	LDA #$31
	STA aobject_frameset_timer, X
	LDY #$24
	JSR _object_speed_init
	RTS

@done_1:
	INC z:zboss_ai_pointer
	LDA #$40
	STA z:zboss_move_timer
	RTS

@left_blob:
	LDA z:zboss_move_stage
	CMP #$26
	BEQ @done_2

@continue_1:
	LDA z:zboss_move_timer
	CMP #$19
	BEQ @create_next_blob_2
	INC z:zboss_move_timer
	RTS

@create_next_blob_2:
	LDA #$00
	STA z:zboss_move_timer
	JSR @create_blob
	RTS

@done_2:
	INC z:zboss_ai_pointer
	LDA #$30
	STA z:zboss_move_timer
	LDA #$00
	STA z:zboss_move_stage
	RTS

@return_right_blob:
	LDA z:zboss_move_stage
	CMP #$13
	BNE @continue_1
	LDA #$30
	STA z:zboss_move_timer
	LDA #$07
	STA z:zboss_ai_pointer
	RTS

@eye:
	DEC z:zboss_move_timer
	BNE @nz_1
	LDA #$05
	JSR _random_integer
	TAY
	ASL
	TAX
	LDA z:zboss_ai_pointer
	CMP #$07
	BEQ @is_right_blob
	INX

@is_right_blob:
	LDA @eye_xcoord_table, X
	STA aobject_xcoord + 1
	LDA @eye_ycoord_table, Y
	STA aobject_ycoord + 1
	LDA #can_collide_megaman | can_collide_megaman_bullet
	STA aobject_flag + 1
	LDA #$00
	STA aobject_frameset_timer + 1
	JSR _compare_megaman_xcoord_with_bosses_xcoord
	INC z:zboss_ai_pointer

@nz_1:
	RTS

@shoot:
	LDA aobject_frameset_timer + 1
	BEQ @move_blob
	CMP #$20
	BCC @skip
	BEQ @shoot_to_megaman
	CMP #$30
	BCS @skip
	LDY #$21
	DEC z:zboss_move_timer
	BNE @nz_2
	LDY #$30

@nz_2:
	STY aobject_frameset_timer + 1
	RTS

@shoot_to_megaman:
	JSR _compare_megaman_xcoord_with_bosses_xcoord
	STA z:z0C
	LDA #$01
	STA z:zobject_ram_index
	LDA #$2D
	JSR _generate_object
	BCS @exist_1
	LDA #$07
	STA z:z01
	LDA #$00
	STA z:z00
	JSR _update_distance_speed

@exist_1:
	LDA #$3F
	STA z:zboss_move_timer
	RTS

@move_blob:
	INC z:zboss_ai_pointer
	LDA #$F8
	STA aobject_ycoord + 1
	LDA #$00
	STA z:zboss_invincibility_time

@skip:
	RTS

@eye_xcoord_table:
;right, left
	.BYTE $B8, $48
	.BYTE $B5, $45
	.BYTE $B3, $43
	.BYTE $B4, $44
	.BYTE $B5, $45

@eye_ycoord_table:
	.BYTE $55, $5A, $60, $66, $6C

@create_blob:
	LDA #$00
	STA z:zobject_ram_index
	LDA #$38
	JSR _generate_object
	BCS @exist_2
	LDY z:zboss_move_stage
	CPY #$13
	BCS @is_left_blob
	LDA #can_collide_megaman | objects_right
	STA aobject_flag, X
	LDA @left_blob_coord_table, Y
	BNE @continue_2

@is_left_blob:
	LDA #can_collide_megaman
	STA aobject_flag, X
	LDA @right_blob_coord_table - $13, Y

@continue_2:
	AND #%11110000
	STA aobject_xcoord, X
	LDA @right_blob_coord_table, Y
	PHA
	AND #%11110000
	STA aobject_hp, X
	PLA
	ASL
	ASL
	ASL
	ASL
	ORA #$08
	STA aobject_ycoord, X
	TYA
	ASL
	ASL
	STA aobject_timer, X
	LDY #$08
	JSR _object_speed_init
	INC z:zboss_move_stage

@exist_2:
	RTS

@draw_yellow_devil_tiles:
	LDY aobject_timer, X
	LDA @draw_tiles_table, Y
	CMP #$FF
	BNE @not_double_1
	LDA @draw_tiles_table + 2, Y
	STA z:z05
	LDA @draw_tiles_table + 3, Y
	STA z:z04
	LDX @draw_tiles_table + 1, Y
	JSR @write_special_tiles
	LDX z:zobject_ram_index
	JSR @convert_coord_to_ppu_address
	LDY aobject_timer, X
	LDA @draw_tiles_table + 1, Y
	ORA #$04
	TAX
	JSR @write_special_tiles
	RTS

@not_double_1:
	JSR @convert_coord_to_ppu_address
	LDX #$00

@loop_2:
	LDA @draw_tiles_table, Y
	STA z:z06, X
	INY
	INX
	CPX #$04
	BNE @loop_2
	JSR @write_to_appu_address
	RTS

@write_special_tiles:
	LDY #$00

@loop_3:
	LDA @draw_tiles_special_table, X
	STA a:z06, Y
	INX
	INY
	CPY #$04
	BNE @loop_3
	JSR @write_to_appu_address
	RTS

@disappear:
	LDA aobject_timer, X
	CMP #$4C
	BCS @right
	CLC
	ADC #$4C
	BNE @left

@right:
	SEC
	SBC #$4C

@left:
	STA z:z0C
	TAY
	LDA @draw_tiles_table, Y
	CMP #$FF
	BNE @not_double_2
	LDA @draw_tiles_table + 2, Y
	STA z:z05
	LDA @draw_tiles_table + 3, Y
	STA z:z04
	CPY #$08
	BNE @not_special_02
	LDX #$40
	JSR @write_special_tiles
	JMP @continue_3

@not_special_02:
	CPY #$54
	BNE @not_special_15
	LDX #$44
	JSR @write_special_tiles
	JMP @continue_3

@not_special_15:
	JSR @write_00tiles

@continue_3:
	JSR @write_to_appu_address
	LDY z:z0C

@not_double_2:
	JSR @convert_coord_to_ppu_address
	JSR @write_00tiles
	JSR @write_to_appu_address
	RTS

@write_00tiles:
	LDA #$00
	STA z:z06
	STA z:z07
	STA z:z08
	STA z:z09
	RTS

@write_to_appu_address:
	LDA z:zyellow_devil_object_tiles_flag
	ASL
	TAY
	LDA z:z05
	STA aobject_ppu_address, Y
	LDA z:z04
	STA aobject_ppu_address + 1, Y
	TYA
	ASL
	TAY
	LDX #$00

@loop_4:
	LDA z:z06, X
	STA aobject_ppu_data + 18, Y
	INY
	INX
	CPX #$04
	BNE @loop_4
	LDX z:zobject_ram_index
	INC z:zyellow_devil_object_tiles_flag
	LDA #$FF
	STA z:zobject_tiles_update_size
	RTS

@convert_coord_to_ppu_address:
	LDA #$09
	STA z:z05
	LDA aobject_ycoord, X
	AND #%11110000
	ASL
	ROL z:z05
	ASL
	ROL z:z05
	STA z:z04
	SEC
	LDA aobject_xcoord, X
	SBC #$08
	LSR
	LSR
	LSR
	ORA z:z04
	STA z:z04
	RTS

@right_blob_coord_table:
;xcoord | ycoord >> 4
	.BYTE $E0 | $80 >> 4 ;00
	.BYTE $E0 | $70 >> 4 ;01
	.BYTE $E0 | $90 >> 4 ;02
	.BYTE $E0 | $60 >> 4 ;03
	.BYTE $D0 | $70 >> 4 ;04
	.BYTE $D0 | $80 >> 4 ;05
	.BYTE $D0 | $60 >> 4 ;06
	.BYTE $D0 | $50 >> 4 ;07
	.BYTE $C0 | $90 >> 4 ;08
	.BYTE $C0 | $80 >> 4 ;09
	.BYTE $C0 | $70 >> 4 ;0A
	.BYTE $C0 | $50 >> 4 ;0B
	.BYTE $C0 | $60 >> 4 ;0C
	.BYTE $B0 | $80 >> 4 ;0D
	.BYTE $B0 | $60 >> 4 ;0E
	.BYTE $B0 | $70 >> 4 ;0F
	.BYTE $B0 | $50 >> 4 ;10
	.BYTE $B0 | $90 >> 4 ;11
	.BYTE $A0 | $70 >> 4 ;12

@left_blob_coord_table:
;xcoord | ycoord >> 4
	.BYTE $20 | $80 >> 4 ;00
	.BYTE $20 | $70 >> 4 ;01
	.BYTE $20 | $90 >> 4 ;02
	.BYTE $20 | $60 >> 4 ;03
	.BYTE $30 | $70 >> 4 ;04
	.BYTE $30 | $80 >> 4 ;05
	.BYTE $30 | $60 >> 4 ;06
	.BYTE $30 | $50 >> 4 ;07
	.BYTE $40 | $90 >> 4 ;08
	.BYTE $40 | $80 >> 4 ;09
	.BYTE $40 | $70 >> 4 ;0A
	.BYTE $40 | $50 >> 4 ;0B
	.BYTE $40 | $60 >> 4 ;0C
	.BYTE $50 | $80 >> 4 ;0D
	.BYTE $50 | $60 >> 4 ;0E
	.BYTE $50 | $70 >> 4 ;0F
	.BYTE $50 | $50 >> 4 ;10
	.BYTE $50 | $90 >> 4 ;11
	.BYTE $60 | $70 >> 4 ;12

@draw_tiles_table:
	.BYTE $A1, $00, $A8, $A9 ;00
	.BYTE $96, $97, $9D, $00 ;01
	.BYTE $FF, @length_02 - @draw_tiles_special_table, $26, $5D ;02
	.BYTE $FF, @length_03 - @draw_tiles_special_table, $25, $5B ;03
	.BYTE $87, $95, $87, $9C ;04
	.BYTE $FF, @length_05 - @draw_tiles_special_table, $26, $59 ;05
	.BYTE $87, $8B, $87, $8F ;06
	.BYTE $84, $85, $87, $88 ;07
	.BYTE $AC, $00, $B3, $00 ;08
	.BYTE $87, $87, $A4, $A5 ;09
	.BYTE $87, $87, $87, $87 ;0A
	.BYTE $82, $83, $87, $87 ;0B
	.BYTE $87, $87, $87, $87 ;0C
	.BYTE $9E, $9F, $A2, $A3 ;0D
	.BYTE $8A, $87, $8E, $87 ;0E
	.BYTE $94, $87, $9A, $9B ;0F
	.BYTE $80, $81, $86, $87 ;10
	.BYTE $FF, @length_11 - @draw_tiles_special_table, $26, $53 ;11
	.BYTE $92, $93, $98, $99 ;12
	.BYTE $00, $EE, $E6, $E7 ;13
	.BYTE $D8, $D9, $00, $D2 ;14
	.BYTE $FF, @length_15 - @draw_tiles_special_table, $26, $41 ;15
	.BYTE $FF, @length_16 - @draw_tiles_special_table, $25, $43 ;16
	.BYTE $DA, $87, $D3, $87 ;17
	.BYTE $FF, @length_18 - @draw_tiles_special_table, $26, $45 ;18
	.BYTE $C4, $87, $C0, $87 ;19
	.BYTE $CA, $CB, $C7, $87 ;1A
	.BYTE $00, $E3, $00, $BA ;1B
	.BYTE $87, $87, $EA, $EB ;1C
	.BYTE $87, $87, $87, $87 ;1D
	.BYTE $CC, $CD, $87, $87 ;1E
	.BYTE $87, $87, $87, $87 ;1F
	.BYTE $D0, $D1, $EC, $ED ;20
	.BYTE $87, $C5, $87, $C1 ;21
	.BYTE $87, $DB, $D4, $D5 ;22
	.BYTE $CE, $CF, $87, $C9 ;23
	.BYTE $FF, @length_24 - @draw_tiles_special_table, $26, $4B ;24
	.BYTE $DC, $DD, $D6, $D7 ;25

@draw_tiles_special_table:
@length_02:
	.BYTE $00, $40, $B6, $41
	.BYTE $AE, $AF, $B4, $B5

@length_03:
	.BYTE $00, $00, $89, $00
	.BYTE $8C, $8D, $90, $91

@length_05:
	.BYTE $00, $AD, $00, $00
	.BYTE $87, $A0, $A6, $A7

@length_11:
	.BYTE $00, $00, $00, $B0
	.BYTE $AA, $AB, $B1, $B2

@length_15:
	.BYTE $18, $00, $19, $B7
	.BYTE $E0, $E1, $B8, $B9

@length_16:
	.BYTE $00, $00, $00, $C6
	.BYTE $C2, $C3, $DE, $DF

@length_18:
	.BYTE $E2, $00, $00, $00
	.BYTE $EF, $87, $E8, $E9

@length_24:
	.BYTE $00, $00, $BD, $00
	.BYTE $E4, $E5, $BB, $BC

;special 02
	.BYTE $00, $40, $00, $41

;special 15
	.BYTE $18, $00, $19, $00

@jumptable:
	.WORD @ready
	.WORD @right_blob
	.WORD @eye
	.WORD @shoot
	.WORD @left_blob
	.WORD @eye
	.WORD @shoot
	.WORD @return_right_blob

_copy_robot_boss_ai:
	LDA z:zboss_invincibility_time
	BEQ @continue
	CMP #$1F
	BCC @continue
	LDY #$12
	LDA aobject_frozen_timer + 1
	BEQ @continue
	RTS

@continue:
	LDA copy_robot_boss_ai_jumptable, Y
	STA z:z04
	LDA copy_robot_boss_ai_jumptable + 1, Y
	STA z:z05
	JMP (z04)
	RTS

_copy_robot_running:
	LDA #$06
	JSR _bosses_run_to_fake_xcoord_animation_common
	LDA #$60
	STA aobject_xcoord_speed_fraction + 1
	LDA #$01
	STA aobject_xcoord_speed + 1
	RTS

_copy_robot_shoot_object:
	JSR _copy_robot_check_megaman_current_weapon
	BCC @no_shoot
	JSR _bosses_stop_running_common
	JSR _set_object_with_megaman_current_weapon
	RTS

@no_shoot:
	LDA #$08
	STA z:zboss_ai_pointer
	RTS

_set_object_with_megaman_current_weapon:
	LDY #$6E
	LDA z:zcurrent_weapon
	CMP #$01
	BEQ @skip
	CMP #$03
	BEQ @skip
	LDY #$01

@skip:
	STY aobject_pointer + 1
	LDA #$00
	STA aobject_timer + 1
	RTS

_copy_robot_shoot_checking:
	JSR _check_megaman_current_weapon_energy
	BCS @no_pose
	LDA #$08

@continue:
	INC z:zboss_ai_pointer
	STA z:zboss_move_stage
	JSR _update_bosses_xcoord_speed
	RTS

@no_pose:
	LDA #$00
	BEQ @continue

_copy_robot_shoot_pose:
	JSR _update_bosses_xcoord_speed
	LDA z:zboss_move_stage
	BNE @nz
	JMP _bosses_shoot_object_collide_megaman_common
	RTS

@nz:
	DEC z:zboss_move_stage
	RTS

_copy_robot_jump:
	LDA #$09
	JMP _bosses_random_jump_common

_copy_robot_floating:
	JMP _bosses_floating_common

_copy_robot_floating_shoot:
	JSR _copy_robot_check_megaman_current_weapon
	BCC _copy_robot_cant_shoot
	LDA #$00
	JSR _bosses_delay_common
	BNE _copy_robot_collide_not_background
	LDY #$6F
	LDA z:zcurrent_weapon
	CMP #$01
	BEQ @skip
	CMP #$03
	BEQ @skip
	LDY #$09

@skip:
	STY aobject_pointer + 1
	LDA #$00
	STA aobject_timer + 1
	RTS

_copy_robot_collide_not_background:
	LDA #$00
	STA aobject_xcoord_speed_fraction + 1
	STA aobject_xcoord_speed + 1
	JSR _set_object_with_megaman_current_weapon
	RTS

_copy_robot_cant_shoot:
	LDA #$0D
	STA z:zboss_ai_pointer
	RTS

_copy_robot_collision_check:
	JSR _copy_robot_shoot_checking
	BNE _copy_robot_collide_not_background
	RTS

_copy_robot_landing_check:
	JSR _update_bosses_xcoord_speed
	BEQ @skip
	JSR _copy_robot_collide_not_background
	LDA z:zboss_move_stage
	BEQ @done
	DEC z:zboss_move_stage
	BNE @skip

@done:
	LDA #$05
	STA z:zboss_ai_pointer

@skip:
	RTS

_copy_robot_knock_back:
	LDA #$12
	JSR _bosses_knock_back
	RTS

_copy_robot_check_megaman_current_weapon:
	LDA z:zcurrent_weapon
	CMP #$06
	BCC @not_magnet_beam
	CLC
	RTS

@not_magnet_beam:
	CMP #$01
	BEQ @is_rolling_cutter
	CMP #$03
	BEQ @is_hyper_bomb
	SEC
	RTS

@is_rolling_cutter:
	LDA #$33
	BNE @continue

@is_hyper_bomb:
	LDA #$35

@continue:
	STA z:z0C
	JSR $F516
	RTS

_check_megaman_current_weapon_energy:
	LDA #$01
	STA z:zobject_ram_index
	LDX z:zcurrent_weapon
	LDA z:zmegaman_hp, X
	BEQ _copy_robot_use_done
	TXA
	ASL
	TAY
	LDA copy_robot_boss_ai_shoot_object_jumptable, Y
	STA z:z04
	LDA copy_robot_boss_ai_shoot_object_jumptable + 1, Y
	STA z:z05
	JMP (z04)

_copy_robot_use_mega_buster:
	LDA #$0D
	JSR _bosses_shoot_object
	BCS _copy_robot_use_done
	LDA #$00
	STA aobject_xcoord_speed_fraction, X
	LDA #$04
	STA aobject_xcoord_speed, X
	CLC
	RTS

_copy_robot_use_rolling_cutter:
	LDA #$33
	JSR _generate_object
	BCS _copy_robot_use_done
	LDY #$78

_copy_robot_shoot_object_speed_init_common:
	JSR _object_speed_init
	CLC
	RTS

_copy_robot_use_ice_slasher:
	LDA #$34
	JSR _generate_object
	BCS _copy_robot_use_done
	LDY #$24
	BNE _copy_robot_shoot_object_speed_init_common

_copy_robot_use_hyper_bomb:
	LDA #$35
	JSR _generate_object
	BCS _copy_robot_use_done
	LDA #$03
	STA z:zboss_coord_speed
	LDA aobject_flag, X
	AND #objects_right
	ORA #can_collide_map | objects_temporary
	STA aobject_flag, X
	LDA #$90
	STA aobject_timer, X
	LDY #$7C
	BNE _copy_robot_shoot_object_speed_init_common

_copy_robot_use_done:
_copy_robot_use_super_arm:
_copy_robot_use_magnet_beam:
	SEC
	RTS

_copy_robot_use_fire_storm:
	LDA #$36
	JSR _generate_object
	BCS _copy_robot_use_done
	LDY #$24
	JSR _object_speed_init
	LDA #$37
	JSR _generate_object
	BCS _copy_robot_use_done
	LDA #$20
	STA aobject_timer, X
	LDY #$08
	BNE _copy_robot_shoot_object_speed_init_common

_enemies_shoot_thunder_beam:
_copy_robot_use_thunder_beam:
	LDA #$07

@loop_1:
	STA z:z0C
	JSR _bosses_shoot_object
	BCS _copy_robot_use_done
	LDA #$50
	STA aobject_xcoord_speed_fraction, X
	LDA #$01
	STA aobject_xcoord_speed, X
	INC z:zboss_move_timer
	INC z:z0C
	LDA z:z0C
	CMP #$0C
	BNE @loop_1
	LDA z:zcurrent_boss
	CMP #$07
	BNE @not_copy_robot
	LDA #$0E

@loop_2:
	STA z:z0C
	JSR _bosses_shoot_object
	BCS _copy_robot_use_done
	LDA #$00
	STA aobject_xcoord_speed_fraction, X
	STA aobject_xcoord_speed, X
	INC z:z0C
	LDA z:z0C
	CMP #$10
	BNE @loop_2

@not_copy_robot:
	CLC
	RTS

copy_robot_boss_ai_shoot_object_jumptable:
	.WORD _copy_robot_use_mega_buster
	.WORD _copy_robot_use_rolling_cutter
	.WORD _copy_robot_use_ice_slasher
	.WORD _copy_robot_use_hyper_bomb
	.WORD _copy_robot_use_fire_storm
	.WORD _copy_robot_use_thunder_beam
	.WORD _copy_robot_use_super_arm
	.WORD _copy_robot_use_magnet_beam

copy_robot_boss_ai_jumptable:
	.WORD _copy_robot_running
	.WORD _copy_robot_shoot_object
	.WORD _copy_robot_shoot_checking
	.WORD _copy_robot_shoot_pose
	.WORD _copy_robot_jump
	.WORD _copy_robot_floating
	.WORD _copy_robot_floating_shoot
	.WORD _copy_robot_collision_check
	.WORD _copy_robot_landing_check
	.WORD _copy_robot_knock_back

_cwu_01p_boss_ai:
	LDA z:zboss_ai_pointer
	CMP #$06
	BCS @continue
	DEC z:zboss_move_timer
	BNE @done
	LDA #$00
	STA z:zboss_move_timer
	INC z:zboss_ai_pointer
	STA z:zobject_ram_index
	JSR $F4A6
	RTS

@continue:
	BNE @check

@done:
	RTS

@check:
	LDA aboss_hp
	BNE @unbeaten
	JMP _stage_clear

@unbeaten:
	DEC z:zboss_move_stage
	BNE @done
	JSR $F4A6
	BCS @done
	DEC z:zboss_ai_pointer
	RTS

_wily_machine_1_phase_1_boss_ai:
	INC aobject_frozen_timer + 17
	JSR _run_wily_machine_1_ai
	LDA #$00
	STA z:z0C
	JSR _compare_megaman_xcoord_with_bosses_xcoord
	SEC
	SBC #$08
	BCC @close_to_megaman
	STA z:z0C

@close_to_megaman:
	DEC z:zboss_move_timer
	BNE @skip
	LDA #$20
	STA z:zboss_move_timer
	LDX z:z0C
	LDY #$00
	LDA #$33
	JSR _255fraction_div_to_constants
	LDX #$16
	JSR _check_object
	BCS @skip
	LDY #$70
	JSR _bosses_shoot_object_common
	LDA z:z05
	STA aobject_xcoord_speed, X
	LDA z:z04
	STA aobject_xcoord_speed_fraction, X

@skip:
	RTS

_run_wily_machine_1_ai:
	LDA #$01
	STA z:zobject_ram_index
	LDA z:zboss_invincibility_time
	BEQ @no_flash
	CMP #$04
	BNE @no_flash
	JSR _update_background_palette_alternative
	LDA #$08
	STA z:zpalette_update_flag

@no_flash:
	LDX z:zboss_ai_pointer
	CLC
	LDA @xcoord_fraction_table - 5, X
	STA z:z0C
	LDA @xcoord_table - 5, X
	STA z:z0D
	LDA @screen_table - 5, X
	STA z:z0E
	LDX #$01
	JSR @wily_machine_1_moving
	LDX #$10
	LDY #$00

@loop:
	JSR @wily_machine_1_moving
	LDA @object_ycoord_table, Y
	STA aobject_ycoord, X
	INX
	INY
	CPY #$06
	BNE @loop
	LDA aobject_xcoord + 16
	LDX z:zboss_ai_pointer
	CPX #$05
	BNE @not_right_moving
	CMP #$6C
	BCS @continue
	INC z:zboss_ai_pointer
	BNE @continue

@not_right_moving:
	CMP #$EC
	BCC @continue
	DEC z:zboss_ai_pointer

@continue:
	SEC
	LDA #$AC
	SBC aobject_xcoord + 16
	STA z:zforce_screen_xcoord
	LDA z:zscreen
	SBC #$00
	STA z:zforce_screen
	LDA #$01
	STA z:zforce_screen_flag
	RTS

@wily_machine_1_moving:
	CLC
	LDA aobject_xcoord_fraction, X
	ADC z:z0C
	STA aobject_xcoord_fraction, X
	LDA aobject_xcoord, X
	ADC z:z0D
	STA aobject_xcoord, X
	LDA aobject_screen, X
	ADC z:z0E
	STA aobject_screen, X
	RTS

@xcoord_fraction_table:
	.BYTE $AE, $52

@xcoord_table:
	.BYTE $FF, $00

@screen_table:
	.BYTE $FF, $00

@object_ycoord_table:
	.BYTE $46, $F8, $7B, $63, $93, $77

_wily_machine_1_phase_2_boss_ai:
	JSR _run_wily_machine_1_ai
	LDA #$73
	STA aobject_ycoord + 17
	DEC z:zboss_move_timer
	BNE @skip
	LDA #$7E
	STA z:zboss_move_timer
	JSR _compare_megaman_xcoord_with_bosses_xcoord
	STA z:z0C
	LDA #$01
	STA z:zobject_ram_index
	LDX #$16
	JSR _check_object
	BCS @skip
	LDY #$77
	JSR _bosses_shoot_object_common
	LDA #$49
	STA aobject_id, X
	STX z:zobject_ram_index
	LDA #$02
	STA z:z01
	LDA #$00
	STA z:z00
	JSR _update_distance_speed
	LDX #$16
	JSR _check_object
	LDA #$48
	JSR _generate_object_common
	LDA z:zobject_ram_index
	STA aobject_hp, X

@skip:
	LDA #can_collide_megaman | can_collide_megaman_bullet
	STA aobject_flag + 1
	RTS

bosses_object_id_table:
	.BYTE $1C ;cutman
	.BYTE $20 ;iceman
	.BYTE $1E ;bombman
	.BYTE $22 ;fireman
	.BYTE $24 ;elecman
	.BYTE $26 ;gutsman
	.BYTE $00 ;unknown
	.BYTE $00 ;unknown
	.BYTE $00 ;unknown

bosses_xcoord_table:
	.BYTE $C0 ;cutman
	.BYTE $C0 ;iceman
	.BYTE $C0 ;bombman
	.BYTE $C0 ;fireman
	.BYTE $C0 ;elecman
	.BYTE $C0 ;gutsman
	.BYTE $C0 ;unknown
	.BYTE $B0 ;unknown
	.BYTE $00 ;unknown

bosses_ycoord_table:
	.BYTE $B4 ;cutman
	.BYTE $B4 ;iceman
	.BYTE $B4 ;bombman
	.BYTE $B4 ;fireman
	.BYTE $B4 ;elecman
	.BYTE $B0 ;gutsman
	.BYTE $B4 ;unknown
	.BYTE $B4 ;unknown
	.BYTE $00 ;unknown

bosses_ai_pointer:
	.WORD _cutman_boss_ai
	.WORD _iceman_boss_ai
	.WORD _bombman_boss_ai
	.WORD _fireman_boss_ai
	.WORD _elecman_boss_ai
	.WORD _gutsman_boss_ai
	.WORD _yellow_devil_boss_ai
	.WORD _copy_robot_boss_ai
	.WORD _cwu_01p_boss_ai
	.WORD _wily_machine_1_phase_1_boss_ai
	.WORD _wily_machine_1_phase_2_boss_ai

_update_boss_object_flag:
	LDA z:zboss_object_flag
	AND #~objects_right
	STA z:zboss_object_flag
	JSR _compare_megaman_xcoord_with_bosses_xcoord
	LDA aobject_flag + 1
	AND #objects_right
	ORA z:zboss_object_flag
	STA z:zboss_object_flag
	RTS

_compare_megaman_xcoord_with_bosses_xcoord:
	SEC
	LDA aobject_xcoord
	SBC aobject_xcoord + 1
	BCC @left
	PHA
	LDA aobject_flag + 1
	ORA #objects_right
	STA aobject_flag + 1
	PLA
	RTS

@left:
	EOR #%11111111
	ADC #$01
	PHA
	LDA aobject_flag + 1
	AND #~objects_right
	STA aobject_flag + 1
	PLA
	RTS

_update_bosses_xcoord_speed:
	JSR _compare_megaman_xcoord_with_bosses_xcoord

_update_bosses_xcoord_speed_without_compare:
	LDX #$01
	STX z:zobject_ram_index
	LDA z:zboss_object_flag
	AND #objects_right
	BEQ @left
	JSR $9DF1
	JMP @continue

@left:
	JSR $9E6F

@continue:
	JSR $98D8
	JSR $9BC4
	LDA ztsa_blockset_pointers + 1
	RTS

_bosses_shoot_object:
	STA z:z0D
	ASL
	ASL
	ASL
	SEC
	SBC z:z0D
	TAY
	LDX #$10
	JSR _check_object
	BCS _bosses_shoot_object_done

_bosses_shoot_object_common:
	LDA #$00
	STA aobject_frozen_timer, X
	STA aobject_ycoord_fraction, X
	STA aobject_xcoord_fraction, X
	STA aobject_timer, X
	LDA bosses_shoot_object_table, Y
	STA aobject_pointer, X
	LDA aobject_flag + 1
	AND #objects_right
	PHP
	ORA bosses_shoot_object_table + 1, Y
	STA aobject_flag, X
	LDA bosses_shoot_object_table + 2, Y
	STA aobject_frameset_timer, X
	LDA bosses_shoot_object_table + 3, Y
	STA aobject_ycoord_speed_fraction, X
	LDA bosses_shoot_object_table + 4, Y
	STA aobject_ycoord_speed, X
	CLC
	LDA aobject_ycoord + 1
	ADC bosses_shoot_object_table + 5, Y
	STA aobject_ycoord, X
	LDA aobject_xcoord + 1
	PLP
	BEQ @left
	CLC
	ADC bosses_shoot_object_table + 6, Y
	STA aobject_xcoord, X
	LDA aobject_screen + 1
	ADC #$00
	JMP @right

@left:
	SEC
	SBC bosses_shoot_object_table + 6, Y
	STA aobject_xcoord, X
	LDA aobject_screen + 1
	SBC #$00

@right:
	STA aobject_screen, X
	JSR _write_special_object_xcoord_speed
	LDA z:z0D
	CMP #$03
	BNE @not_gutsman
	LDA aobject_screen + 1
	STA aobject_screen, X

@not_gutsman:
	CLC

_bosses_shoot_object_done:
	RTS

bosses_shoot_object_table:
;object id, flag, frameset timer, ycoord speed fraction, ycoord speed, ycoord, xcoord, each 7 bytes
	.BYTE $27, can_collide_map | can_collide_megaman | objects_temporary, $01, $B0, $05, $F5, $08 ;00
	.BYTE $36, can_collide_megaman | 1 << 3,                              $01, $00, $00, $F8, $08 ;01
	.BYTE $32, can_collide_map | can_collide_megaman,                     $00, $00, $00, $E8, $10 ;02
	.BYTE $32, 1 << 3 | objects_temporary,                                $14, $40, $FF, $00, $F6 ;03
	.BYTE $38, can_collide_megaman | 1 << 3,                              $01, $00, $00, $04, $00 ;04
	.BYTE $3A, can_collide_megaman,                                       $00, $00, $00, $FE, $08 ;05
	.BYTE $45, can_collide_megaman,                                       $00, $00, $00, $F6, $08 ;06
	.BYTE $4C, can_collide_megaman | 1 << 3,                              $40, $00, $00, $FC, $14 ;07
	.BYTE $4D, can_collide_megaman | 1 << 3,                              $30, $00, $00, $08, $18 ;08
	.BYTE $4E, can_collide_megaman | 1 << 3,                              $20, $00, $00, $FC, $1C ;09
	.BYTE $4F, can_collide_megaman | 1 << 3,                              $10, $00, $00, $EC, $24 ;0A
	.BYTE $50, can_collide_megaman | 1 << 3,                              $01, $00, $00, $EC, $2C ;0B
	.BYTE $27, 1 << 3 | objects_temporary,                                $01, $30, $03, $EC, $06 ;0C
	.BYTE $1A, can_collide_megaman,                                       $00, $00, $00, $00, $10 ;0D
	.BYTE $77, can_collide_megaman,                                       $00, $00, $06, $F0, $10 ;0E
	.BYTE $78, can_collide_megaman,                                       $00, $00, $FA, $10, $10 ;0F
	.BYTE $86, can_collide_megaman | objects_temporary,                   $00, $E3, $04, $F8, $08 ;10
	.BYTE $FF, objects_invisible,                                         $00, $00, $00, $04, $08 ;11

_bosses_knock_back:
	CMP aobject_pointer + 1
	BEQ @done
	STA aobject_pointer + 1
	JSR @init
	LDA z:zcurrent_boss
	BEQ @is_cutman
	LDA #$00
	STA aobject_timer + 1
	LDA #$05
	BNE @reset

@is_cutman:
	LDA #$0E

@reset:
	STA z:zboss_ai_pointer

@done:
	JSR _update_bosses_xcoord_speed
	RTS

@init:
	JSR _update_boss_object_flag
	LDA z:zboss_object_flag
	EOR #objects_right
	STA z:zboss_object_flag
	LDA #$40
	STA aobject_ycoord_speed_fraction + 1
	LDA #$01
	STA aobject_ycoord_speed + 1
	STA aobject_xcoord_speed + 1
	LDA #$20
	STA aobject_xcoord_speed_fraction + 1
	LDA #$00
	STA aobject_frameset_timer + 1
	RTS
