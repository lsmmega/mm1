_joy:
	LDX #$01
	STX JOY1
	DEX
	STX JOY1
	INX

@loop_1:
	LDY #$08

@loop_2:
	LDA JOY1, X
	STA zjoy1_pressed_bits
	LSR
	ORA zjoy1_pressed_bits
	LSR
	ROR zjoy1_pressed, X
	DEY
	BNE @loop_2
	DEX
	BPL @loop_1
	RTS
