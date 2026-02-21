_checkpoint_ycoord:
	CLC
	LDA z:zcurrent_stage
	ADC z:zcheckpoint_pointer
	TAX
	LDA #$14
	STA aobject_pointer
	LDA #can_collide_map | objects_right
	STA aobject_flag
	LDA checkpoint_0_ycoord, X
	STA z:ztiles_address

@loop:
	LDX #$00
	STX aobject_frameset_timer
	CLC
	LDA aobject_ycoord
	ADC #$10
	STA aobject_ycoord
	JSR _sprites
	JSR _nmi_wait
	LDA aobject_ycoord
	LDX z:zcurrent_stage
	CMP z:ztiles_address
	BNE @loop
	LDA #$00
	STA aobject_ycoord_speed
	JMP _bankswitch_05

checkpoint_0_ycoord:
	.BYTE $94 ;cutman
	.BYTE $B4 ;iceman
	.BYTE $B4 ;bombman
	.BYTE $B4 ;fireman
	.BYTE $C4 ;elecman
	.BYTE $B4 ;gutsman
	.BYTE $B4 ;wily1
	.BYTE $74 ;wily2
	.BYTE $B4 ;wily3
	.BYTE $94 ;wily4
	.BYTE $84 ;unused
	.BYTE $64 ;unused

;checkpoint 1 ycoord
	.BYTE $94 ;cutman
	.BYTE $C4 ;iceman
	.BYTE $B4 ;bombman
	.BYTE $94 ;fireman
	.BYTE $94 ;elecman
	.BYTE $54 ;gutsman
	.BYTE $24 ;wily1
	.BYTE $64 ;wily2
	.BYTE $B4 ;wily3
	.BYTE $B4 ;wily4
	.BYTE $B4 ;unused
	.BYTE $B4 ;unused

;checkpoint 2 ycoord
	.BYTE $94 ;cutman
	.BYTE $94 ;iceman
	.BYTE $94 ;bombman
	.BYTE $94 ;fireman
	.BYTE $94 ;elecman
	.BYTE $94 ;gutsman
	.BYTE $B4 ;wily1
	.BYTE $94 ;wily2
	.BYTE $B4 ;wily3
	.BYTE $B4 ;wily4
	.BYTE $B4 ;unused
