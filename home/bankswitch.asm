_bankswitch_stage:
	PHP
	PHA
	TXA
	PHA
	LDA z:zcurrent_stage
	CMP #$06
	BCC @non_wily
	SBC #$06

@non_wily:
	TAX
	STA z:zcurrent_bankswitch
	STA uxrom_prg_bank, X
	PLA
	TAX
	PLA
	PLP
	RTS

_bankswitch_05:
	PHP
	PHA
	zbankswitch $05
	PLA
	PLP
	RTS
