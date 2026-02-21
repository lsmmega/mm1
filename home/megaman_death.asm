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
	JSR _sprites_tiles_set
	JSR _init_object_tiles
	LDA z:ztiles_address
	CMP #$28
	BNE @loop_2
	JSR _sprites_tiles_set
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

checkpoint_1_active_room_table:
	.BYTE $0A ;cutman
	.BYTE $0A ;iceman
	.BYTE $0E ;bombman
	.BYTE $08 ;fireman
	.BYTE $07 ;elecman
	.BYTE $0A ;gutsman
	.BYTE $22 ;wily1
	.BYTE $24 ;wily2
	.BYTE $2F ;wily3
	.BYTE $1D ;wily4
	.BYTE $1D ;unused
	.BYTE $1D ;unused

checkpoint_2_active_room_table:
	.BYTE $14 ;cutman
	.BYTE $14 ;iceman
	.BYTE $14 ;bombman
	.BYTE $10 ;fireman
	.BYTE $14 ;elecman
	.BYTE $0F ;gutsman
	.BYTE $27 ;wily1
	.BYTE $29 ;wily2
	.BYTE $2F ;wily3
	.BYTE $21 ;wily4
	.BYTE $1C ;unused

checkpoint_0_respawn_room_table:
	.BYTE $00 ;cutman
	.BYTE $00 ;iceman
	.BYTE $00 ;bombman
	.BYTE $00 ;fireman
	.BYTE $00 ;elecman
	.BYTE $00 ;gutsman
	.BYTE $18 ;wily1
	.BYTE $18 ;wily2
	.BYTE $18 ;wily3
	.BYTE $14 ;wily4
	.BYTE $18 ;unused
	.BYTE $1E ;unused

;checkpoint 1 respawn room table
	.BYTE $0A ;cutman
	.BYTE $0A ;iceman
	.BYTE $0E ;bombman
	.BYTE $08 ;fireman
	.BYTE $07 ;elecman
	.BYTE $0A ;gutsman
	.BYTE $22 ;wily1
	.BYTE $24 ;wily2
	.BYTE $2E ;wily3
	.BYTE $1D ;wily4
	.BYTE $1D ;unused
	.BYTE $1D ;unused

;checkpoint 2 respawn room table
	.BYTE $14 ;cutman
	.BYTE $14 ;iceman
	.BYTE $14 ;bombman
	.BYTE $10 ;fireman
	.BYTE $14 ;elecman
	.BYTE $0F ;gutsman
	.BYTE $26 ;wily1
	.BYTE $28 ;wily2
	.BYTE $2E ;wily3
	.BYTE $21 ;wily4
	.BYTE $20 ;unused
