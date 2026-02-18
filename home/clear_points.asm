_clear_points:
	LDY #$03
	CLC
	LDA #$01

@loop:
	ADC z:zundo_clear_points,X
	CMP #10
	BCC @l10
	SBC #10

@l10:
	STA z:zundo_clear_points,X
	LDA #$00
	INX
	DEY
	BNE @loop
	LDA #$10
	STA z:z05
	JSR _score_addition
	JSR _sprites
	LDA z:znmi_frame
	AND #%00000011
	BNE @skip
	track_queue track_points

@skip:
	RTS
