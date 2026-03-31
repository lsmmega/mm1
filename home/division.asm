_division:
;A = divisor, X = dividend integer, Y = dividend fraction
	STA z:zdivisor
	STX z:zdividend_integer
	STY z:zdividend_fraction
	LDA #$00
	STA z:zdiv_temp
	LDY #$10

@div_loop:
	ASL z:zdividend_fraction
	ROL z:zdividend_integer
	ROL z:zdiv_temp
	LDA z:zdiv_temp
	SEC
	SBC z:zdivisor
	BCC @cannot_div
	STA z:zdiv_temp
	INC z:zdividend_fraction

@cannot_div:
	DEY
	BNE @div_loop
	LDA z:zdividend_integer
	STA z:z05
	LDA z:zdividend_fraction
	STA z:z04
	RTS
