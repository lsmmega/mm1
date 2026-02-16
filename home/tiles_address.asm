_tiles_address:
	PHA
	AND #%11111100
	LSR
	LSR
	ORA #$80
	STA z:z05
	LDA #$00
	STA z:z04
	PLA
	AND #%00000011
	TAY
	STA z:zcurrent_bankswitch
	STA uxrom_prg_bank, Y
	RTS
