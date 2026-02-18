_score_addition:
	LDA z:z05
	AND #%00001111
	STA z:zscore_addition
	LDA z:z05
	LSR
	LSR
	LSR
	LSR
	STA z:zscore_addition + 1
	LDX #$00
	STX z:zscore_addition + 2
	STX z:zscore_addition + 3
	STX z:zscore_addition + 4
	LDY #$05
	CLC

@loop:
	LDA z:zscore + 2, X
	ADC z:zscore_addition, X
	CMP #10
	BCC @l10
	SBC #10

@l10:
	STA z:zscore + 2, X
	INX
	DEY
	BNE @loop
	RTS
