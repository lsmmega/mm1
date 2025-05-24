RESET:
IRQ:
	.ORG $C008

	SEI
	LDA #$01
	STA $2000
	LDA #$06
	STA $2001
	LDA #$05
	STA $C005
	JMP $9000
	LDA $95
	BNE label_1
	LDA $14
	STA $16
	LDA $15
	STA $17
label_1
	LDA #$00
	STA $1F
label_2
	LDA $1F
	BEQ label_2
	LDA $68
	BEQ label_3
	LDA $69
	STA $14
	JMP label_4
label_3
	LDA $95
	BNE label_5
	TYA
	PHA
	TXA
	PHA
	JSR $D58D
	PLA
	TAX
	PLA
	TAY
	LDA $14
label_4
	EOR $16
	AND $14
	STA $18
	LDA $15
	EOR $17
	AND $15
	STA $19
label_5
	RTS
