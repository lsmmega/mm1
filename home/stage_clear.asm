_stage_clear:
	LDA #$00
	STA z:zboss_ai_pointer
	track_queue mute_sfx
	LDA z:zcurrent_boss
	CMP #$0A
	BNE @not_wily_machine_1
	track_queue track_wily_defeated
	JMP @continue

@not_wily_machine_1:
	track_queue track_boss_defeated
	JSR _object_clear

@continue:
	LDA #<.BANK (clear_points_font)
	STA z:ztiles_bankswitch
	LDA #>clear_points_font
	LDX #$0B
	LDY #$08
	JSR _tiles_update
	LDA z:zcurrent_boss
	CMP #$0A
	BNE @_not_wily_machine_1
	LDA #$FF
	JSR _clear_timer
	LDA #$FF
	JSR _clear_timer

@_not_wily_machine_1:
	LDA #$80
	JSR _clear_timer
	LDA #$FF
	JSR _clear_timer
	LDA z:zcurrent_boss
	CMP #$0A
	BNE @__not_wily_machine_1
	JSR _object_clear
	LDA #$F8
	STA aobject_ycoord

@__not_wily_machine_1:
	INC z:zstage_clear_flag
	LDA #$00
	STA z:zobject_ram_index
	LDX #$02
	JSR _clear_points_object
	LDX #$05

@loop_1:
	STA z:zundo_clear_points, X
	DEX
	BPL @loop_1
	INC aobject_frozen_timer

@loop_2:
	LDX #$00
	JSR _clear_points
	JSR _boss_clear_points
	JSR _nmi_wait
	DEC z:zclear_points
	BNE @loop_2
	LDA #$40
	JSR _timer
	LDA #$00
	STA z:zobject_ram_index
	LDX #$05
	JSR _clear_points_object
	INC aobject_frozen_timer
	LDA z:zscore_ball
	BEQ @no_score_ball

@loop_3:
	LDX #$03
	JSR _clear_points
	JSR _boss_clear_points
	JSR _score_ball_clear_points
	JSR _nmi_wait
	DEC z:zscore_ball
	BNE @loop_3

@no_score_ball:
	JSR _sprites
	JSR _boss_clear_points
	JSR _score_ball_clear_points
	LDA #$FF
	JSR _timer
	LDA #$80
	JSR _timer
	JSR _nmi_disable
	DEC z:zstage_clear_flag
	stack_pointers $FF
	bankswitchz $05
	LDX z:zcurrent_stage
	CPX #stage_wily4
	BEQ @is_wily4
	CPX #stage_wily1
	BCS @is_wily
	LDA z:zgot_weapon_flag
	ORA got_weapon_table, X
	STA z:zgot_weapon_flag
	LDA #$00
	STA z:zstage_select_flag
	STA z:zmegaman_invincibility_time
	STA z:zjoy1_force_pressed_flag
	JMP _back_to_stage_select

@is_wily4:
	INC z:zcurrent_stage
	DEC z:zstage_clear_flag

@is_wily:
	LDA #$00
	STA z:zforce_screen_flag
	STA z:zcheckpoint_pointer
	STA z:zjoy1_force_pressed_flag
	INC z:zcurrent_stage
	JMP _stage_start

got_weapon_table:
	.BYTE got_rolling_cutter
	.BYTE got_ice_slasher
	.BYTE got_hyper_bomb
	.BYTE got_fire_storm
	.BYTE got_thunder_beam
	.BYTE got_super_arm
