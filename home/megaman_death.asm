_megaman_death:
	track_queue mute_sfx
	track_queue mute_music
	LDA #$20
	JSR _clear_timer
	track_queue track_megaman_death
	LDA #$00
	STA z:ztiles_address
	LDA #$7D
	STA z:zobject_pointer
	JSR _explosion
	LDA #$00
	STA z:ztrack_queue_pointer
	LDA #$F8
	STA aobject_ycoord
	LDA #$C0
	STA z:ztimer

@loop_1:
	JSR _explosion_timer
	BNE @loop_1
	JSR _nmi_disable
	LDA #$00
	STA z:zgutsman_stomp_timer
	STA z:zforce_screen_flag
	STA z:zmegaman_invincibility_time
	STA z:zrunning_type
	STA z:zwater_delay
	DEC z:z1up
	LDA z:z1up
	BMI @no_life
	JSR _tiles_init
	LDA #$00
	STA z:zcheckpoint_pointer
	STA z:ztiles_address
	LDA aobject_screen
	LDX z:zcurrent_stage
	CMP checkpoint_1_active_room_table, X
	BCC @skip
	LDY #$0C
	CMP checkpoint_2_active_room_table, X
	BCC @not_arrive_checkpoint_2_active
	LDY #$18

@not_arrive_checkpoint_2_active:
	TYA
	STA z:zcheckpoint_pointer
	CLC
	ADC z:zcurrent_stage
	TAX
	LDA checkpoint_0_respawn_room_table, X
	STA aobject_screen
	JSR _init_sprites_index

@loop_2:
	JSR _init_tileset_palette
	JSR _init_object_tiles
	LDA z:ztiles_address
	CMP #tiles_address_0a00
	BNE @loop_2
	JSR _init_tileset_palette
	LDA #white_cyan
	STA aobject_palette + 1
	LDA #light_azure
	STA aobject_palette + 2
	JSR _palette_update

@skip:
	LDA #$00
	STA z:zjoy2_pressed_bits
	stack_pointers $FF
	zbankswitch $05
	LDA z:zcheckpoint_pointer
	CMP #$0C
	BCS @not_checkpoint_0

@is_checkpoint_2:
	JMP _init_palette_special_blockset

@not_checkpoint_0:
	LDA z:zcurrent_stage
	CMP #stage_wily2
	BEQ @is_wily2
	CMP #stage_wily4
	BNE @not_wily4

@is_wily2:
	LDA z:zcheckpoint_pointer
	CMP #$0D
	BCS @is_checkpoint_2

@not_wily4:
	JMP _init_regular

@no_life:
	JMP _game_over
