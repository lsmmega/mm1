_object_tile_update:
	CMP #$FF
	BEQ @yellow_devil
	LDA aobject_ppu_address
	STA PPU_ADDRESS
	LDA aobject_ppu_address + 1
	STA PPU_ADDRESS
	LDX #$00

@loop_1:
	LDA aobject_ppu_data, X
	STA PPU_DATA
	INX
	DEC z:zobject_tile_update_size
	BNE @loop_1
	RTS

@yellow_devil:
	LDX #$00
	LDY #$00

@loop_2:
	LDA aobject_ppu_address, X
	STA PPU_ADDRESS
	LDA aobject_ppu_address + 1, X
	STA PPU_ADDRESS
	LDA aobject_ppu_data + 18, Y
	STA PPU_DATA
	LDA aobject_ppu_data + 19, Y
	STA PPU_DATA
	INY
	INY
	TYA
	AND #%00000011
	BEQ @yellow_devil_2xobject_tile
	CLC
	LDA aobject_ppu_address + 1, X
	ADC #$20
	STA aobject_ppu_address + 1, X
	LDA aobject_ppu_address, X
	ADC #$00
	STA aobject_ppu_address, X
	BNE @loop_2

@yellow_devil_2xobject_tile:
	INX
	INX
	DEC z:zyellow_devil_object_tile_flag
	BNE @loop_2
	LDA #$00
	STA z:zobject_tile_update_size
	RTS
