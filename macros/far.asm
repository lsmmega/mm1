.MACRO farjmp b
	LDA #<.BANK (b)
	STA uxrom_prg_bank + <.BANK (b)
	JMP b
.ENDMACRO
