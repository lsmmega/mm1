.MACRO zbankswitch b
	LDA #b
	STA z:zcurrent_bankswitch
	STA uxrom_prg_bank + b
.ENDMACRO

.MACRO farjmp b
	LDA #<.BANK (b)
	STA uxrom_prg_bank + <.BANK (b)
	JMP b
.ENDMACRO

.MACRO farjsr b
	LDA #<.BANK (b)
	STA uxrom_prg_bank + <.BANK (b)
	JSR b
.ENDMACRO
