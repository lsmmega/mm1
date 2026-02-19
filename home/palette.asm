_palette_update:
	LDA z:zpalette_update_flag
	AND #%00000111
	BNE @skip
	LDX z:zpalette_update_original
	LDY z:zpalette_update_original + 1
	LDA z:zpalette_update_flag
	AND #%00001000
	BEQ @palette_update_original
	LDX z:zpalette_update_alternative
	LDY z:zpalette_update_alternative + 1

@palette_update_original:
	STX z:zpalette_update_address
	STY z:zpalette_update_address + 1
	LDA z:zpalette_update_type
	PHA
	JSR _palette_update_do
	PLA
	STA z:zpalette_update_type

@skip:
	DEC z:zpalette_update_flag
	BNE @done
	LDA z:zpalette_update_original
	STA z:zpalette_update_address
	LDA z:zpalette_update_original + 1
	STA z:zpalette_update_address + 1
	LDA z:zpalette_update_type
	JSR _palette_update_do
	LDA z:zboss_ai_pointer
	BEQ @done
	CMP #5
	BCS @done
	INC z:zboss_ai_pointer

@done:
	RTS

_palette_update_do:
	PHA
	AND #%11110000
	TAX
	LDA #$3F
	STA PPU_ADDRESS
	PLA
	ASL
	AND #%00010000
	STA PPU_ADDRESS
	LDY #$00

@loop:
	LDA (zpalette_update_address), Y
	STA PPU_DATA
	INY
	DEX
	BNE @loop
	LDA #$3F
	STA PPU_ADDRESS
	STX PPU_ADDRESS
	STX PPU_ADDRESS
	STX PPU_ADDRESS
	STX z:zpalette_update_type
	RTS
