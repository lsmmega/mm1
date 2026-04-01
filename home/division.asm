_255fraction_div_to_constants:
;A = divisor, X = dividend integer, Y = dividend fraction
	STA z:zdivisor_255mode
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
	SBC z:zdivisor_255mode
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

_constants_div_to_255fraction:
	LDA z:z05
	STA z:zdividend_integer
	LDA z:z04
	STA z:zdividend_fraction
	LDA z:z07
	STA z:zdivisor_constantsmode
	LDA z:z06
	STA z:z11
	LDA #$00
	STA z:zdiv_temp
	STA z:zdiv_temp + 3
	LDY #$10

@div_loop:
	ASL z:zdiv_temp + 3
	ROL z:zdividend_fraction
	ROL z:zdividend_integer
	ROL z:zdiv_temp
	SEC
	LDA z:zdividend_integer
	SBC z:zdiv_temp + 5
	TAX
	LDA z:zdiv_temp
	SBC z:zdivisor_constantsmode
	BCC @cannot_div
	STX z:zdividend_integer
	STA z:zdiv_temp
	INC z:zdiv_temp + 3

@cannot_div:
	DEY
	BNE @div_loop
	LDA z:zdiv_temp + 3
	STA z:z08
	LDA z:zdividend_fraction
	STA z:z09
	RTS
