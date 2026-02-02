_nmi_wait:
	LDA z:zwater_delay
	BNE @yes
	LDA z:zjoy1_pressed
	STA z:zjoy1_pressed_frame
	LDA z:zjoy2_pressed
	STA z:zjoy2_pressed_frame

@yes:
	LDA #$00
	STA z:znmi_wait

@loop:
	LDA z:znmi_wait
	BEQ @loop
	LDA z:zjoy1_force_pressed_flag
	BEQ @no
	LDA z:zjoy1_force_pressed_bits
	STA z:zjoy1_pressed
	JMP @skip

@no:
	LDA z:zwater_delay
	BNE @_yes
	TYA
	PHA
	TXA
	PHA
	JSR _joy
	PLA
	TAX
	PLA
	TAY
	LDA z:zjoy1_pressed

@skip:
	EOR z:zjoy1_pressed_frame
	AND z:zjoy1_pressed
	STA z:zjoy1_pressed_bits
	LDA z:zjoy2_pressed
	EOR z:zjoy2_pressed_frame
	AND z:zjoy2_pressed
	STA z:zjoy2_pressed_bits

@_yes:
	RTS
