.MACRO farjmp B
	lda #<.BANK(B)
	sta mm1_bank00 + <.BANK(B)
	jmp B
.ENDMACRO