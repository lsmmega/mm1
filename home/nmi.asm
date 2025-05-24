NMI:
	.ORG $D4A8

	PHA
	TXA
	PHA
	TYA
	PHA
	LDA $1F
	BEQ label_1
	JMP label_2
label_1
	JSR $D495
	LDA $2002
	LDA #$00
	STA $2003
	LDA #$02
	STA $4014
	JSR $D673
	LDA $37
	BEQ label_3
	JSR $D60A
label_3
	LDA $5E
	BEQ label_4
	JSR $D5AB
label_4
	LDA $1B
	PHA
	LDA $1A
	PHA
	LDA $B4
	BEQ label_5
	LDA $B3
	STA $1B
	LDA $B2
	STA $1A
label_5
	LDA $FF
	AND #$FC
	STA $FF
	LDA $1B
	AND #$01
	ORA $FF
	STA $2000
	PHA
	LDA $2002
	LDX #$04
	LDA $47
	BEQ label_6
	DEC $47
	LSR
	BCC label_7
	AND #$03
	TAX
label_7
	LDA $0400
	CMP #$09
	BEQ label_6
	CMP #$6F
	BEQ label_6
	LDA $0420
	AND #$F0
	ORA #$02
	STA $0420
label_6
	CLC
	LDA $1A
	ADC label_8,X
	STA $2005
	CLC
	LDA $1E
	ADC label_9,X
	STA $2005
	LDA $FE
	ORA #$1E
	STA $FE
	STA $2001
	PLA
	ORA #$80
	STA $FF
	STA $2000
	PLA
	STA $1A
	PLA
	STA $1B
	LDA #$01
	STA $1F
	INC $23
label_2
	LDA #$04
	STA $C004
	JSR $9000
label_14
	LDX $45
	BEQ label_10
	LDA $057F,X
	CMP #$FD
	BCS label_11
	CMP #$33
	BCS label_12
label_11
	BNE label_13
	LDY $A7
label_13
	JSR $9003
label_12
	DEC $45
	BNE label_14
label_10
	LDA $42
	TAX
	STA $C000,X
	LDA $0D
	EOR $46
	ADC $23
	LSR
	STA $46
	PLA
	TAY
	PLA
	TAX
	PLA
	RTI
label_8
	BRK
	PHP
	BRK
	SED
	BRK
label_9
	INX
	BRK
	PHP
	BRK
	BRK
