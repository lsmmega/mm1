_open_door_not_boss:
	LDX z:zcurrent_stage
	LDA @open_door_not_boss_index_table, X
	JMP draw_mapdoor_common

@open_door_not_boss_index_table:
	.BYTE cutman_wily1_door_0 - cutman_wily1_door   ;cutman
	.BYTE iceman_wily2_door_0 - iceman_wily2_door   ;iceman
	.BYTE bombman_wily3_door_0 - bombman_wily3_door ;bombman
	.BYTE fireman_wily4_door_0 - fireman_wily4_door ;fireman
	.BYTE elecman_door_0 - elecman_door             ;elecman
	.BYTE gutsman_door_0 - gutsman_door             ;gutsman

_open_door_next_boss:
	LDX z:zcurrent_stage
	LDA @open_door_next_boss_index_table, X
	JMP draw_mapdoor_common

@open_door_next_boss_index_table:
	.BYTE cutman_wily1_door_1 - cutman_wily1_door   ;cutman
	.BYTE iceman_wily2_door_1 - iceman_wily2_door   ;iceman
	.BYTE bombman_wily3_door_0 - bombman_wily3_door ;bombman
	.BYTE fireman_wily4_door_1 - fireman_wily4_door ;fireman
	.BYTE elecman_door_0 - elecman_door             ;elecman
	.BYTE gutsman_door_1 - gutsman_door             ;gutsman
	.BYTE cutman_wily1_door_3 - cutman_wily1_door   ;wily1
	.BYTE iceman_wily2_door_0 - iceman_wily2_door   ;wily2
	.BYTE bombman_wily3_door_0 - bombman_wily3_door ;wily3
	.BYTE fireman_wily4_door_3 - fireman_wily4_door ;wily4
	.BYTE elecman_door_2 - elecman_door             ;unknown

close_door_index_table:
	.BYTE cutman_wily1_door_2 - cutman_wily1_door   ;cutman
	.BYTE iceman_wily2_door_2 - iceman_wily2_door   ;iceman
	.BYTE bombman_wily3_door_1 - bombman_wily3_door ;bombman
	.BYTE fireman_wily4_door_2 - fireman_wily4_door ;fireman
	.BYTE elecman_door_1 - elecman_door             ;elecman
	.BYTE gutsman_door_2 - gutsman_door             ;gutsman
	.BYTE cutman_wily1_door_3 - cutman_wily1_door   ;wily1
	.BYTE iceman_wily2_door_3 - iceman_wily2_door   ;wily2
	.BYTE bombman_wily3_door_2 - bombman_wily3_door ;wily3
	.BYTE fireman_wily4_door_3 - fireman_wily4_door ;wily4
	.BYTE elecman_door_3 - elecman_door             ;unknown

_close_door:
	LDX z:zcurrent_stage
	CPX #stage_wily4
	BEQ _close_door_is_wily_4
	LDA close_door_index_table, X

draw_mapdoor_common:
	INC aobject_frozen_timer
	JSR _bankswitch_stage
	PHA
	track_queue track_door
	PLA
	TAX
	LDA mapdoorset_table, X
	STA z:zobject_pointer
	INX
	STX z:ztiles_address

@loop:
	JSR _bankswitch_stage
	LDX z:ztiles_address
	LDA #$00
	STA z:z0D
	LDA aobject_screen
	STA z:z05
	LDA mapdoorset_table, X
	STA z:z04
	INX
	STX z:ztiles_address
	JSR _xycoord_to_ppu_address
	LDY z:ztiles_address
	LDA mapdoorset_table, Y
	ASL
	ASL
	ADC #<mapdoorset_16x16_tiles_table
	STA z:z06
	LDA #>mapdoorset_16x16_tiles_table
	STA z:z07
	LDY #$00
	JSR _update_16x16tiles_screen
	JSR _attributes_to_ppu_address
	LDX z:ztiles_address
	LDY mapdoorset_table, X
	LDA mapdoorset_attributes_table, Y
	STA ascreen_ppu_attribute_data
	INX
	STX z:ztiles_address
	LDA #$01
	STA zscreen_update_flag
	LDA #$06
	JSR _sprites_timer
	DEC z:zobject_pointer
	BNE @loop
	track_queue mute_sfx
	LDA #$00
	STA aobject_frozen_timer

_close_door_is_wily_4:
	JMP _bankswitch_05
