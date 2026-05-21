_init_palette_special_blockset:
	JSR _init_stage_palette_special_blockset

_init_regular:
	CLC
	LDA z:zcheckpoint_pointer
	ADC z:zcurrent_stage
	PHA
	TAX
	LDA checkpoint_0_respawn_room_table, X
	STA z:zscreen_end_of_left
	PHA
	LDA z:zcheckpoint_pointer
	BEQ @start_1
	LDA stages_checkpoints_end_of_screen_left_table - $0C, X
	STA z:zscreen_end_of_left

@start_1:
	LDA z:zscreen_end_of_left
	CLC
	ADC #$01
	STA z:zscreen
	JSR _draw_entire_screen
	PLA
	STA aobject_screen
	JSR _draw_entire_screen
	PLA
	TAX
	LDA stages_checkpoints_enemies_index_table, X
	STA z:zending_update_object_palette_index
	CLC
	ADC #$01
	STA z:zenemies_index
	LDA stages_checkpoints_scroll_direction_index_table, X
	STA z:zscroll_direction_index
	TAY
	JSR _scrolling_set
	AND #%00011111
	CLC
	ADC z:zscreen_end_of_left
	STA z:zscreen_end_of_right
	LDA aobject_screen
	STA z:zscreen
	LDA #$00
	STA z:zscreen_xcoord
	STA z:zcurrent_weapon
	STA z:zboss_ai_pointer
	STA z:zspecial_enemies_index
	STA z:zice_xcoord_speed_fraction
	STA z:zice_xcoord_speed
	STA aboss_hp
	LDX #$0F

@loop_1:
	STA z:zenemies_screen_thread, X
	STA amagnet_beam_length, X
	STA amagnet_beam_timer, X
	DEX
	BPL @loop_1
	LDA z:zcheckpoint_pointer
	BEQ @start_2
	CLC
	ADC z:zcurrent_stage
	TAX
	LDA stages_checkpoints_end_of_screen_right_table - $0C, X
	STA z:zscreen_end_of_right
	CPX #$08

@start_2:
	LDY #$00
	LDX #$40
	JSR _init_sprites
	LDA #$20
	STA z:zsprites_pointer
	JSR _init_enemies_special_blockset
	LDX z:zcurrent_stage
	LDA stages_track_queue_table, X
	JSR _track_queue
	LDA #$80
	STA aobject_xcoord
	STA z:zobject_in_process_xcoord
	LDA #$04
	STA aobject_ycoord
	LDA z:zppu_ctrl
	ORA #nmi_enable
	STA z:zppu_ctrl
	STA PPU_CTRL
	STA z:znmi_wait
	LDA z:zcurrent_stage
	CMP #$0B
	BNE @not_ending
	JMP _jump_to_ending

@not_ending:
	LDA #$1C
	STA z:zmegaman_hp
	LDX #$13

@loop_2:
	LDA ready_oam_coord_table, X
	STA aoam_y, X
	DEX
	BPL @loop_2
	LDA #$C0
	STA z:ztimer

@loop_3:
	JSR _nmi_wait
	DEC z:ztimer
	BNE @loop_3
	LDY #$00
	STY z:zmegaman_invincibility_time
	STY aobject_timer
	LDX #$40
	JSR _init_sprites
	JSR _checkpoint_ycoord
	LDA #$01
	STA z:zobjects_scrolling_flag
	LDA #$00
	STA aobject_pointer
