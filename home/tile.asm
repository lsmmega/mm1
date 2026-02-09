_tile_update:
	CMP #$FF
	BEQ @yellow_devil
	LDA appu_address
	STA PPU_ADDRESS
	LDA appu_address + 1
	STA PPU_ADDRESS
	LDX #$00

@loop_1:
	LDA appu_data, X
	STA PPU_DATA
	INX
	DEC z:ztile_update_size
	BNE @loop_1
	RTS

@yellow_devil:
	LDX #$00
	LDY #$00

@loop_2:
	LDA appu_address, X
	STA PPU_ADDRESS
	LDA appu_address + 1, X
	STA PPU_ADDRESS
	LDA appu_data + 18, Y
	STA PPU_DATA
	LDA appu_data + 19, Y
	STA PPU_DATA
	INY
	INY
	TYA
	AND #%00000011
	BEQ @yellow_devil_2xtile
	CLC
	LDA appu_address + 1, X
	ADC #$20
	STA appu_address + 1, X
	LDA appu_address, X
	ADC #$00
	STA appu_address, X
	BNE @loop_2

@yellow_devil_2xtile:
	INX
	INX
	DEC z:zyellow_devil_tile_flag
	BNE @loop_2
	LDA #$00
	STA z:ztile_update_size
	RTS
