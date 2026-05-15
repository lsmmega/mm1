_super_arm_collision:
	LDA z:zweapon_firing
	BNE @skip
	LDA aobject_flag
	LDX #$00
	AND #objects_right
	BEQ @left
	LDX #$02

@left:
	CLC
	LDA aobject_xcoord
	ADC weapons_special_blockset_collision_xcoord_table, X
	STA z:z0D
	LDA aobject_screen
	ADC weapons_special_blockset_collision_xcoord_table + 1, X
	STA z:z0C
	LDA aobject_ycoord
	STA z:z0E
	LDY z:zspecial_blockset_index
	JSR _special_blockset_collision
	CMP #$82
	BEQ @detected
	LDY #$FF
	CPY z:zsuper_arm_block_index
	BEQ @skip
	STY z:zsuper_arm_block_index

@4_frames:
	LDA #$F8
	STA aobject_ycoord + 5

@skip:
	RTS

@detected:
	STY z:zsuper_arm_block_index
	LDA z:znmi_frame
	AND #%00000100
	BNE @4_frames
	LDX #$05
	LDA #$02
	JSR _set_weapon_attributes
	LDY z:zsuper_arm_block_index
	CLC
	LDA aspecial_blockset_x1coord, Y
	ADC #$10
	STA aobject_xcoord, X
	LDA aspecial_blockset_y1coord, Y
	CLC
	ADC #$0F
	STA aobject_ycoord, X
	LDA #$6C
	STA aobject_pointer, X
	LDA aobject_flag, X
	AND #~(can_collide_map | objects_right)
	STA aobject_flag, X
	RTS

_find_replace_special_blockset:
	LDA z:zscreen_update_flag
	ASL
	ASL
	STA z:z0D
	ASL
	ASL
	CLC
	ADC z:zscreen_update_flag
	CLC
	ADC z:z0D
	STA z:z0D
	LDA aspecial_blockset_y1coord, Y
	LSR
	LSR
	LSR
	ORA aspecial_blockset_x1coord, Y
	STA z:z04
	LDA aspecial_blockset_screen, Y
	STA z:z05
	RTS

weapons_special_blockset_collision_xcoord_table:
	.BYTE -9, -1, +8, +0

_thunder_beam_collision:
	LDA #$FF
	STA z:zweapon_timer
	LDA #$04
	STA aspecial_blockset_type, Y
	LDA #$00
	STA z:zobject_ram_index
	TYA
	PHA
	JSR _find_replace_special_blockset
	JSR _update_stage_screen
	PLA
	TAY
	LDA aspecial_blockset_y1coord, Y
	STA z:z03
	LDA aspecial_blockset_x1coord, Y
	STA z:z00
	LDA aspecial_blockset_screen, Y
	STA z:z01
	LDA aobject_flag + 5
	AND #objects_right
	ORA #can_collide_megaman_bullet
	STA z:z02
	LDX #$05
	LDY #$00

@loop_1:
	STY z:z0C
	JSR _special_blockset_fragment
	INC z:z0C
	LDY z:z0C
	INX
	CPX #$09
	BNE @loop_1
	LDX #$09
	LDA #$F8

@loop_2:
	STA aobject_ycoord, X
	INX
	CPX #$10
	BNE @loop_2
	track_queue track_throw_boulder
	RTS

_special_blockset_fragment:
	CLC
	LDA z:z00
	ADC @fragment_xcoord, Y
	STA aobject_xcoord, X
	LDA z:z01
	ADC #$00
	STA aobject_screen, X
	CLC
	LDA z:z03
	ADC @fragment_ycoord, Y
	STA aobject_ycoord, X
	LDA @fragment_xcoord_speed, Y
	STA aobject_xcoord_speed, X
	LDA @fragment_ycoord_speed, Y
	STA aobject_ycoord_speed, X
	LDA z:z02
	STA aobject_flag, X
	LDY z:zcurrent_stage
	LDA @fragment_object, Y
	STA aobject_pointer, X
	LDA #$00
	STA aobject_xcoord_speed_fraction, X
	STA aobject_ycoord_speed_fraction, X
	STA aobject_frameset_timer, X
	STA aobject_timer, X
	STA aobject_frozen_timer, X
	RTS

@fragment_xcoord:
	.BYTE $08, $18, $08, $18

@fragment_ycoord:
	.BYTE $08, $08, $18, $18

@fragment_xcoord_speed:
	.BYTE $04, $04, $03, $03

@fragment_ycoord_speed:
	.BYTE $02, $00, $02, $00

@fragment_object:
	.BYTE $6D ;cutman
	.BYTE $6D ;iceman
	.BYTE $6D ;bombman
	.BYTE $6D ;fireman
	.BYTE $6D ;elecman
	.BYTE $56 ;gutsman
	.BYTE $6D ;wily1
	.BYTE $6D ;wily2
	.BYTE $6D ;wily3
	.BYTE $56 ;wily4
	.BYTE $6D ;unknown
