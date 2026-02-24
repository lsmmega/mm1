_boss_death:
	LDA #$20
	JSR _clear_timer
	LDA #$01
	STA z:ztiles_address
	LDA #$5F
	STA z:zobject_pointer
	JSR _explosion
	LDA z:zcurrent_boss
	CMP #$09
	BEQ @is_wily_stage
	CMP z:zcurrent_stage
	BNE @is_wily_stage
	track_queue mute_music
	track_queue track_explosion
	LDA z:zcurrent_stage
	CMP #stage_wily1
	BCS @is_wily_stage
	LDA #$01
	STA z:zobject_ram_index
	LDA #objects_heart_part
	LDX #$1F
	JSR _generate_object_common
	LDA #can_collide_map | can_collide_megaman | objects_temporary
	STA aobject_flag, X
	LDA #$28
	STA aobject_ycoord, X
	LDA #$80
	STA aobject_xcoord, X
	LDY #$C4
	JSR _object_speed_init
	LDA #$F8
	STA aobject_ycoord + 1
	JMP @return_stage_loop

@is_wily_stage:
	LDA z:zcurrent_boss
	CMP #$09
	BNE @not_wily_machine_1_phase_1
	JMP _generate_wily_machine_1_phase_2

@not_wily_machine_1_phase_1:
	CMP #$0A
	BEQ @is_wily_machine_1_phase_2
	CMP z:zcurrent_stage
	BEQ @not_wily_machine_1
	LDA #$0A
	STA z:z0C

@loop_1:
	LDA #$10
	STA z:z05
	JSR _score_addition
	DEC z:z0C
	BNE @loop_1
	LDA #$00
	STA z:z0C
	LDX z:zcurrent_boss
	LDA refighting_special_blockset_remove_table, X
	JSR _replace_special_blockset
	LDA z:zcurrent_stage
	CMP #stage_wily2
	BEQ @return_stage_loop
	LDA #$01
	STA z:zobject_ram_index
	LDA #objects_teleport
	LDX #$1F
	JSR _generate_object_common
	LDA #$08
	STA aobject_xcoord, X
	TAY
	JSR _object_speed_init
	LDA #$B0
	STA aobject_ycoord, X
	LDA #can_collide_megaman | objects_invisible
	STA aobject_flag, X

@return_stage_loop:
	LDA #$00
	STA z:zboss_ai_pointer
	LDA #$F8
	STA aobject_ycoord + 1
	stack_pointers $FF
	JMP _stage_loop

@not_wily_machine_1:
	CMP #$06
	BNE @not_yellow_devil
	LDX #$02

@loop_2:
	LDA @yellow_devil_defeated_palettes_table, X
	STA abackground_palette_original + 5, X
	DEX
	BPL @loop_2
	JSR _update_background_palette

@not_yellow_devil:
	LDA #$F8
	STA aobject_ycoord + 1
	LDA #$FF
	STA z:ztimer

@loop_3:
	JSR _explosion_timer
	BNE @loop_3
	JMP _stage_clear

@yellow_devil_defeated_palettes_table:
	.BYTE dark_gray, light_gray, black

@is_wily_machine_1_phase_2:
	LDX #$10
	STX z:zobject_ram_index
	JSR $AEFD
	LDA #$F8
	STA aobject_ycoord + 16
	STA aobject_ycoord + 1
	LDX #$03

@loop_4:
	STA aobject_ycoord + 18, X
	DEX
	BPL @loop_4
	LDA #$0F
	LDX #$07

@loop_5:
	STA abackground_palette_original + 4, X
	DEX
	BPL @loop_5
	LDA #$00
	STA abackground_palette_original + 5
	STA abackground_palette_original + 9
	JSR _update_background_palette
	JSR _sprites
	LDA #$02
	STA z:ztiles_bankswitch
	LDA #$B9
	LDX #$09
	LDY #$08
	JSR _tiles_update
	LDA #$B2
	LDX #$0A
	LDY #$08
	JSR _tiles_update
	LDA #$80
	STA z:ztimer
	INC aobject_frozen_timer
	INC aobject_frozen_timer + 17

@loop_6:
	JSR _explosion_timer
	BNE @loop_6
	LDX #$11
	STX z:zobject_ram_index
	LDA #objects_all_stages_clear
	JSR _generate_object_common
	LDA #can_collide_map | objects_temporary
	STA aobject_flag, X
	LDA #$02
	STA aobject_ycoord_speed, X
	INC z:zjoy1_force_pressed_flag
	JMP @return_stage_loop
