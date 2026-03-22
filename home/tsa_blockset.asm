_check_object_ycoord_collision_with_background:
	.FEATURE FORCE_RANGE
	JSR _bankswitch_stage
	LDA z:z01
	STA z:z0C
	LDA z:z00
	STA z:z0D
	LDX z:zobject_ram_index
	BNE @not_megaman
	LDX #$02

@loop:
	CLC
	LDA z:z03
	ADC @collision_ycoord, X
	STA z:z0E
	JSR _check_special_blockset_or_tsa_collision
	STA z:ztsa_blockset_pointers, X
	DEX
	BPL @loop
	JSR _tsa_ycoord
	JMP _bankswitch_05

@collision_ycoord:
	.BYTE -12, -4, +11 ;top, middle, bottom

@not_megaman:
	LDX z:zobject_ram_index
	LDY aobject_pointer, X
	CPY #$FF
	BNE @no_item_dropped
	LDY aobject_id, X
	LDA enemies_collision_ycoord, Y
	BNE @nz

@no_item_dropped:
	LDA non_enemies_collision_ycoord, Y

@nz:
	PHA
	EOR #%11111111
	CLC
	ADC #$01
	CLC
	ADC z:z03
	STA z:z0E
	JSR _check_special_blockset_or_tsa_collision
	CMP #block
	BEQ @is_block_with_pull
	PLA
	SEC
	SBC #$01
	CLC
	ADC z:z03
	STA z:z0E
	JSR _check_special_blockset_or_tsa_collision
	CMP #block
	BEQ @is_block_without_pull
	LDA #background
	STA z:ztsa_blockset_pointers
	JMP _bankswitch_05

@is_block_with_pull:
	PLA

@is_block_without_pull:
	LDA #block
	STA z:ztsa_blockset_pointers
	JMP _bankswitch_05
	LDA #$00
	STA z:zladder_flag
	LDA aobject_xcoord
	STA z:z00
	LDA aobject_screen
	STA z:z01
	LDA aobject_ycoord
	STA z:z03
	JSR _check_object_ycoord_collision_with_background
	SEC
	LDA aobject_ycoord_fraction
	SBC aobject_ycoord_speed_fraction
	LDA aobject_ycoord
	SBC aobject_ycoord_speed
	LDX aobject_ycoord_speed
	BMI @negative_1
	SEC
	SBC #$0C
	JMP @continue_1

@negative_1:
	CLC
	ADC #$0C

@continue_1:
	STA z:z0E
	JSR _bankswitch_stage
	JSR _check_special_blockset_or_tsa_collision
	CMP #ladder
	BNE @not_ladder
	LDA z:zladder_flag
	LDX aobject_ycoord_speed
	BMI @negative_2
	ORA #$10
	BNE @continue_2

@negative_2:
	ORA #$01

@continue_2:
	STA z:zladder_flag

@not_ladder:
	JMP _bankswitch_05

_check_object_xcoord_collision_with_background:
	JSR _bankswitch_stage
	LDA z:z03
	STA z:z0E
	LDX z:zobject_ram_index
	BNE @not_megaman
	LDA #$00
	STA z:ztsa_blockset_pointers + 1
	LDX #$03

@loop:
	CLC
	LDA z:z00
	ADC @collision_xcoord, X
	STA z:z0D
	LDA z:z01
	ADC @collision_xcoord - 1, X
	STA z:z0C
	JSR _check_special_blockset_or_tsa_collision
	DEX
	STA z:ztsa_blockset_pointers, X
	DEX
	BPL @loop
	JSR _tsa_xcoord
	JMP _bankswitch_05

@collision_xcoord:
	.BYTE +0, +7, -1, -7 ;right, left, each 2 bytes

@not_megaman:
	LDX z:zobject_ram_index
	LDY aobject_pointer, X
	CPY #$FF
	BNE @no_item_dropped
	LDY aobject_id, X
	LDA enemies_collision_xcoord, Y
	BNE @nz

@no_item_dropped:
	LDA non_enemies_collision_xcoord, Y

@nz:
	SEC
	SBC #$01
	STA z:z0F
	CLC
	LDA z:z00
	ADC z:z0F
	STA z:z0D
	LDA z:z01
	ADC #$00
	STA z:z0C
	JSR _check_special_blockset_or_tsa_collision
	CMP #block
	BEQ @is_solid
	CMP #ice
	BEQ @is_solid
	SEC
	LDA z:z00
	SBC z:z0F
	STA z:z0D
	LDA z:z01
	SBC #$00
	STA z:z0C
	JSR _check_special_blockset_or_tsa_collision
	CMP #block
	BEQ @is_solid
	CMP #ice
	BEQ @is_solid
	LDA #background
	STA z:ztsa_blockset_pointers + 1
	JMP _bankswitch_05

@is_solid:
	LDA #block
	STA z:ztsa_blockset_pointers + 1
	JMP _bankswitch_05

_check_special_blockset_or_tsa_collision:
	LDY z:zspecial_blockset_index
	JSR _special_blockset_collision
	CMP #$00
	BEQ @not_special_blockset_collision
	RTS

@not_special_blockset_collision:
	LDA z:z0E
	CMP #$F0
	BCC @find_tsa_blockset
	LDY z:zobject_ram_index
	LDA aobject_ycoord, Y
	CMP #$F1
	BCS @zycoord
	CMP #$80
	BCS @find_tsa_blockset

@zycoord:
	LDA #$00
	STA z:z0E

@find_tsa_blockset:
	LDY z:z0C
	LDA stage_screen_id, Y
	ASL
	TAY
	LDA stage_screen_id_pointers, Y
	STA z:z04
	LDA stage_screen_id_pointers + 1, Y
	STA z:z05
	LDA z:z0D
	LSR
	LSR
	AND #%00111000
	STA z:z07
	LDA z:z0E
	ROL
	ROL
	ROL
	ROL
	AND #%00000111
	ORA z:z07
	TAY
	LDA (z04), Y
	LDY #$00
	STY z:z09
	ASL
	ROL z:z09
	ASL
	ROL z:z09
	TAY
	LDA z:z0E
	AND #%00010000
	BEQ @is_entire_yblockset
	INY

@is_entire_yblockset:
	LDA z:z0D
	AND #%00010000
	BEQ @is_entire_xblockset
	INY
	INY

@is_entire_xblockset:
	LDA #<stage_tsa_blockset
	STA z:z08
	LDA #>stage_tsa_blockset
	ORA z:z09
	STA z:z09
	LDA (z08), Y
	AND #%11000000
	LDY z:zcurrent_stage
	STY z:z06
	ASL
	ROL z:z06
	ASL
	ROL z:z06
	LDY z:z06
	LDA @tsa_block_type_index, Y
	CMP #ladder
	BNE @not_ladder
	LDA z:zobject_ram_index
	BNE @not_megaman
	LDA z:z0D
	AND #%11110000
	STA z:zladder_upper_xcoord

@not_megaman:
	LDA #ladder

@not_ladder:
	RTS

@tsa_block_type_index:
;tsa block type index
	.BYTE background, block, ladder,     spike      ;cutman
	.BYTE background, block, ice,        water      ;iceman
	.BYTE background, block, ladder,     spike      ;bombman
	.BYTE background, block, ladder,     $06        ;fireman
	.BYTE background, block, ladder,     background ;elecman
	.BYTE background, block, spike,      background ;gutsman
	.BYTE background, block, spike,      ladder     ;wily1
	.BYTE background, block, ladder,     spike      ;wily2
	.BYTE background, block, background, background ;wily3
	.BYTE background, block, spike,      ladder     ;wily4
	.BYTE background, block, background, background ;unknown
