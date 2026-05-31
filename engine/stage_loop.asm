_stage_loop:
	LDA z:zcapsule_parameter
	BEQ @no_capsule
	JSR _refilling

@no_capsule:
	LDA z:zjoy1_pressed_bits
	AND #select_button | start_button
	BEQ _stage_loop_unpause
	AND #select_button
	BNE _stage_loop_pause

_open_menu_on_pause:
	LDA z:zweapon_firing
	BNE _stage_loop_firing
	JSR _open_menu_store

_continue_stage_loop:
	LDA aobject_flag
	AND #objects_temporary | objects_invisible | objects_right | objects_hitting_bullet
	ORA #can_collide_map
	STA aobject_flag

_stage_loop_firing:
	LDA #$00
	STA z:zpause
	STA aobject_pointer

_stage_loop_unpause:
	JSR _special_blockset_index
	JSR _megaman_on_stage
	LDA z:zrunning_type
	BEQ @on_water
	LDA z:zundo_running_type
	BNE @on_water
	track_queue track_jump_into_water

@on_water:
	LDA z:zrunning_type
	STA z:zundo_running_type
	LDA aobject_flag
	AND #%00001111
	CMP #can_collide_map
	BEQ @can_collide_map
	JSR _run_weapons_trajectory
	JSR _run_bosses_ai
	LDA z:zmegaman_invincibility_time
	BEQ @no_invincibility
	DEC z:zmegaman_invincibility_time

@no_invincibility:
	JSR _check_megaman_damaged
	JSR _check_weapons_collision
	JSR _run_objects

@can_collide_map:
	JSR _find_enemies
	JSR _sprites
	JSR _unfrozen
	LDA z:zscroll_end_direction
	BNE _run_scrolling

_back_to_stage_loop:
	JSR _nmi_wait
	JMP _stage_loop

_stage_loop_pause:
	track_queue track_pause
	LDA #$01
	STA z:zpause
	LDA z:zgutsman_stomp_timer
	PHA
	LDA z:zrunning_type
	PHA
	LDA z:zwater_delay
	PHA
	LDA #$00
	STA z:zgutsman_stomp_timer
	STA z:zrunning_type
	STA z:zwater_delay

@pause_loop:
	JSR _frozen_timer
	LDA z:zjoy1_pressed_bits
	AND #select_button | start_button
	BEQ @pause_loop
	PLA
	STA z:zwater_delay
	PLA
	STA z:zrunning_type
	PLA
	STA z:zgutsman_stomp_timer
	LDA z:zjoy1_pressed_bits
	AND #select_button
	BEQ @start_pressed
	JMP _continue_stage_loop

@start_pressed:
	JMP _open_menu_on_pause

_run_scrolling:
	CMP #$01
	BNE @not_scrolling_up
	LDA z:zteleport_flag
	BEQ @no_teleport
	JSR _teleporting

@no_teleport:
	LDA aobject_flag
	AND #objects_temporary
	BEQ @not_end_of_right
	LDA z:zscroll_end_direction

@not_scrolling_up:
	LDX z:zscreen_xcoord
	BNE @not_end_of_right
	LDX z:zscreen
	CPX z:zscreen_end_of_left
	BNE @not_end_of_left
	LDY z:zscroll_direction_index
	DEY
	JSR _scrolling_set
	LDY z:zscroll_end_direction
	AND screen_end_of_left_and_table, Y
	BNE _run_screen_left

@not_end_of_left:
	CPX z:zscreen_end_of_right
	BNE @not_end_of_right
	LDY z:zscroll_direction_index
	JSR _scrolling_set
	LDY z:zscroll_end_direction
	AND screen_end_of_right_and_table, Y
	BNE _run_screen_right

@not_end_of_right:
	LDA z:zscroll_end_direction
	CMP #$03
	BNE _update_screen_scrolling_done
	LDA #$00
	STA z:zscroll_end_direction
	LDA #$F8
	STA aobject_ycoord
	JMP _megaman_death

_update_screen_scrolling_done:
	LDA #$00
	STA z:zscroll_end_direction
	JMP _back_to_stage_loop

_run_screen_left:
	LDX z:zscreen_end_of_left
	DEX
	STX z:zscreen_end_of_right
	DEC z:zscroll_direction_index
	LDY z:zscroll_direction_index
	JSR _scrolling_set
	AND #%00011111
	STA z:zscreen_end_of_left
	TXA
	SEC
	SBC z:zscreen_end_of_left
	STA z:zscreen_end_of_left
	JSR _init_enemies_special_blockset
	LDA z:zscreen_end_of_right
	JSR _draw_entire_screen
	DEC aobject_screen
	JSR _init_sprites_index
	LDA z:zscroll_end_direction
	CMP #$04
	PHP
	BNE @not_force_left
	DEC z:zscreen

@not_force_left:
	JSR _switch_scrolling
	PLP
	BEQ @force_left
	DEC z:zscreen

@force_left:
	JSR _nmi_wait
	LDA z:zscreen_end_of_right
	SEC
	SBC #$01
	JSR _draw_entire_screen
	LDA #$00
	STA z:zspecial_enemies_index
	LDA #$01
	STA z:zobjects_scrolling_flag
	JMP _update_screen_scrolling_done

_run_screen_right:
	JSR _init_enemies_special_blockset
	LDX z:zscreen_end_of_right
	INX
	TXA
	PHA
	JSR _draw_entire_screen
	LDX z:zcurrent_stage
	LDA open_door_not_boss_screen_table, X
	CMP aobject_screen
	BNE @not_arrived_open_door_not_boss
	TXA
	ASL
	ASL
	ASL
	ASL
	TAX
	LDY #$00

@loop:
	LDA open_door_not_boss_background_palettes_table, X
	STA abackground_palette_original, Y
	INX
	INY
	CPY #$10
	BNE @loop
	JSR _update_background_palette
	LDA #$02
	STA z:zpalette_update_flag
	LDA #$AF
	STA z:zmusic_fade_out_rate
	JSR _open_door_not_boss

@not_arrived_open_door_not_boss:
	LDX z:zcurrent_stage
	LDA open_door_next_boss_screen_table, X
	CMP aobject_screen
	BNE @not_arrived_open_door_next_boss
	JSR _open_door_next_boss

@not_arrived_open_door_next_boss:
	INC aobject_screen
	JSR _init_sprites_index
	LDA z:zscroll_end_direction
	CMP #$04
	PHP
	BNE @not_force_right
	INC z:zscreen

@not_force_right:
	JSR _switch_scrolling
	PLP
	BEQ @force_right
	INC z:zscreen

@force_right:
	JSR _nmi_wait
	LDA z:zscreen_end_of_right
	CLC
	ADC #$02
	JSR _draw_entire_screen
	INC z:zscroll_direction_index
	LDY z:zscroll_direction_index
	JSR _scrolling_set
	PHA
	AND #%11100000
	BNE @not_scrolling_right_next_boss
	JSR _update_background_palette_alternative
	LDA #$48
	STA z:zpalette_update_flag
	LDA #$01
	STA z:zboss_ai_pointer
	LDA #$70
	STA z:ztimer
	LDA z:zcurrent_stage
	STA z:zcurrent_boss
	CMP #$06
	BCS @wily
	LDA #track_boss_fighting
	BNE @regular

@wily:
	LDA #track_wily_boss_fighting

@regular:
	JSR _track_queue
	LDX z:zcurrent_stage
	LDA @force_pressed_on_stage_table, X
	STA z:zjoy1_force_pressed_bits
	LDA #b_button | select_button | down_button | right_button
	STA z:zjoy1_force_pressed_flag

@not_scrolling_right_next_boss:
	PLA
	AND #%00011111
	STA z:zscreen_end_of_left
	PLA
	TAX
	CLC
	ADC z:zscreen_end_of_left
	STA z:zscreen_end_of_right
	STX z:zscreen_end_of_left
	LDA #$00
	STA z:zspecial_enemies_index
	STA z:zjoy1_pressed
	STA z:zjoy1_pressed_frame
	LDA #$41
	STA z:zobjects_scrolling_flag
	LDA z:zteleport_flag
	BEQ @not_teleport
	LDA #$10
	STA aobject_xcoord
	LDA #$B4
	STA aobject_ycoord
	LDA #can_collide_map | objects_right
	STA aobject_flag
	LDA #$00
	STA aobject_pointer
	STA aobject_frameset_timer
	STA aobject_timer
	STA z:zteleport_flag

@not_teleport:
	JMP _update_screen_scrolling_done

@force_pressed_on_stage_table:
	.BYTE $00         ;cutman
	.BYTE $00         ;iceman
	.BYTE down_button ;bombman
	.BYTE $00         ;fireman
	.BYTE up_button   ;elecman
	.BYTE $00         ;gutsman
	.BYTE $00         ;wily1
	.BYTE down_button ;wily2
	.BYTE $00         ;wily3
	.BYTE $00         ;wily4
	.BYTE $00         ;unknown

screen_end_of_left_and_table:
	.BYTE scroll_end, scroll_down, scroll_end, scroll_up

screen_end_of_right_and_table:
	.BYTE scroll_right, scroll_up, scroll_right, scroll_down, scroll_end
