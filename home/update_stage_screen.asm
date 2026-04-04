_update_stage_screen:
	JSR _bankswitch_stage
	INC z:zscreen_update_flag
	JSR _xycoord_to_ppu_address
	LDA z:z0C
	PHA
	LDA z:z0D
	PHA
	LDA z:z0E
	PHA
	LDA z:z05
	PHA
	STA z:z0C
	LDA z:z04
	AND #%11100000
	STA z:z0D
	LDA z:z04
	AND #%00011111
	ASL
	ASL
	ASL
	STA z:z0E
	LDY #$00
	JSR _special_blockset_collision
	TAY
	PLA
	STA z:z05
	PLA
	STA z:z0E
	PLA
	STA z:z0D
	PLA
	STA z:z0C
	CPY #$84
	BNE @no_block_remove
	LDY z:zcurrent_stage
	LDA z:z05
	CMP @special_room_id_table, Y
	BNE @not_special_room
	LDA @special_room_16x16tiles_id_table, Y
	BNE @done

@special_room_16x16tiles_id_table:
	.BYTE $5B ;cutman
	.BYTE $00 ;iceman
	.BYTE $00 ;bombman
	.BYTE $00 ;fireman
	.BYTE $60 ;elecman
	.BYTE $2B ;gutsman
	.BYTE $8D ;wily1
	.BYTE $01 ;wily2
	.BYTE $9C ;wily3
	.BYTE $94 ;wily4
	.BYTE $01 ;unknown
	.BYTE $01 ;unknown

@not_special_room_16x16tiles_id_table:
	.BYTE $01 ;cutman
	.BYTE $01 ;iceman
	.BYTE $01 ;bombman
	.BYTE $01 ;fireman
	.BYTE $01 ;elecman
	.BYTE $01 ;gutsman
	.BYTE $8D ;wily1
	.BYTE $01 ;wily2
	.BYTE $9C ;wily3
	.BYTE $94 ;wily4
	.BYTE $01 ;unknown
	.BYTE $01 ;unknown

@special_room_id_table:
	.BYTE $17 ;cutman
	.BYTE $17 ;iceman
	.BYTE $17 ;bombman
	.BYTE $13 ;fireman
	.BYTE $17 ;elecman
	.BYTE $12 ;gutsman
	.BYTE $27 ;wily1
	.BYTE $28 ;wily2
	.BYTE $2F ;wily3
	.BYTE $23 ;wily4

@not_special_room:
	LDA @not_special_room_16x16tiles_id_table, Y
	BNE @done

@no_block_remove:
	LDY z:z05
	LDA stage_screen_id, Y
	ASL
	TAY
	LDA stage_screen_id_pointers, Y
	STA z:z06
	LDA stage_screen_id_pointers + 1, Y
	STA z:z07
	LDA z:z04
	LSR
	LSR
	TAY
	LDA (z06), Y

@done:
	PHA
	LDY #$00
	STY z:z07
	ASL
	ROL z:z07
	ASL
	ROL z:z07
	TAY
	LDA #$00
	STA z:z06
	LDA #$80
	ORA z:z07
	STA z:z07
	JSR _update_16x16tiles_screen
	JSR _attributes_to_ppu_address
	PLA
	TAY
	LDA stage_tsa_attributes, Y
	STA ascreen_ppu_address, X
	INX
	STX z:z0D
	JMP _bankswitch_05
