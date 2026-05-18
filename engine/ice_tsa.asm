_ice_tsa_move:
	LDY #$00
	LDA aobject_pointer
	LDX #$08

@loop:
	CMP @special_object_id_table, X
	BEQ @yes
	DEX
	BPL @loop
	LDA z:zjoy1_pressed
	AND #left_button | right_button
	BEQ @regular
	LDY #$07
	BNE @regular

@yes:
	LDY @special_object_id_index_xcoord_speed_table, X

@regular:
	LDX #$00
	JSR _write_special_object_xcoord_speed_common
	LDA z:zice_flag
	BNE @ice
	LDA z:zice_xcoord_speed_fraction
	ORA z:zice_xcoord_speed
	BEQ @zero
	BNE @slowing

@ice:
	LDA z:zjoy1_pressed
	AND #left_button | right_button
	BEQ @slowing
	AND #right_button
	BEQ @left
	LDA z:zice_toward
	BNE @megaman_move_on_ice
	BEQ @slowing

@left:
	LDA z:zice_toward
	BEQ @megaman_move_on_ice

@slowing:
	LDX #$00
	LDA aobject_pointer
	CMP #$09
	BNE @not_jump
	LDX #$02

@not_jump:
	SEC
	LDA z:zice_xcoord_speed_fraction
	SBC @ice_xcoord_speed_table, X
	STA z:zice_xcoord_speed_fraction
	LDA z:zice_xcoord_speed
	SBC @ice_xcoord_speed_table + 1, X
	STA z:zice_xcoord_speed
	LDX #$00
	BCS @not_negative_1
	LDA #$00
	STA z:zice_xcoord_speed_fraction
	STA z:zice_xcoord_speed
	BEQ @zero

@not_negative_1:
	LDA z:zice_xcoord_speed
	STA aobject_xcoord_speed
	LDA z:zice_xcoord_speed_fraction
	STA aobject_xcoord_speed_fraction
	JMP @check_foot_holder

@megaman_move_on_ice:
	SEC
	LDA aobject_xcoord_speed_fraction
	SBC z:zice_xcoord_speed_fraction
	LDA aobject_xcoord_speed
	SBC z:zice_xcoord_speed
	BCC @slowing
	LDA aobject_xcoord_speed
	STA z:zice_xcoord_speed
	LDA aobject_xcoord_speed_fraction
	STA z:zice_xcoord_speed_fraction

@zero:
	LDA aobject_flag
	AND #objects_right
	STA z:zice_toward

@check_foot_holder:
	LDA z:zcurrent_foot_holder_flag
	BPL @megaman_not_landing
	AND #%01111111
	STA z:zentire_toward
	LDA aobject_flag
	AND #objects_right
	CMP z:zentire_toward
	BEQ @ture
	SEC
	LDA aobject_xcoord_speed_fraction
	SBC z:zalternative_xcoord_speed_fraction
	STA aobject_xcoord_speed_fraction
	LDA aobject_xcoord_speed
	SBC z:zalternative_xcoord_speed
	STA aobject_xcoord_speed
	BCS @not_negative_2
	LDA aobject_xcoord_speed_fraction
	EOR #%11111111
	ADC #$01
	STA aobject_xcoord_speed_fraction
	LDA aobject_xcoord_speed
	EOR #%11111111
	ADC #$00
	STA aobject_xcoord_speed
	JMP @done

@not_negative_2:
	LDA aobject_flag, X
	AND #objects_right
	STA z:zentire_toward
	JMP @done

@ture:
	CLC
	LDA aobject_xcoord_speed_fraction
	ADC z:zalternative_xcoord_speed_fraction
	STA aobject_xcoord_speed_fraction
	LDA aobject_xcoord_speed
	ADC z:zalternative_xcoord_speed
	STA aobject_xcoord_speed

@done:
	LDA #$00
	STA z:zcurrent_foot_holder_flag
	RTS

@megaman_not_landing:
	LDA z:zice_toward
	STA z:zentire_toward
	RTS

@ice_xcoord_speed_table:
	.BYTE $04, $00
	.BYTE $80, $00

@special_object_id_table:
	.BYTE $00
	.BYTE $03
	.BYTE $06
	.BYTE $0C
	.BYTE $0F
	.BYTE $12
	.BYTE $13
	.BYTE $14
	.BYTE $6E

@special_object_id_index_xcoord_speed_table:
	.BYTE $00
	.BYTE $01
	.BYTE $08
	.BYTE $03
	.BYTE $00
	.BYTE $09
	.BYTE $01
	.BYTE $00
	.BYTE $00
