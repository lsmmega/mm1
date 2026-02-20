_object_tiles_update:
	CMP #$FF
	BEQ _object_tiles_update_yellow_devil

_init_object_tiles:
	LDA aobject_ppu_address
	STA PPU_ADDRESS
	LDA aobject_ppu_address + 1
	STA PPU_ADDRESS
	LDX #$00

@loop_1:
	LDA aobject_ppu_data, X
	STA PPU_DATA
	INX
	DEC z:zobject_tiles_update_size
	BNE @loop_1
	RTS

_object_tiles_update_yellow_devil:
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
	BEQ @yellow_devil_2xobject_tiles
	CLC
	LDA aobject_ppu_address + 1, X
	ADC #$20
	STA aobject_ppu_address + 1, X
	LDA aobject_ppu_address, X
	ADC #$00
	STA aobject_ppu_address, X
	BNE @loop_2

@yellow_devil_2xobject_tiles:
	INX
	INX
	DEC z:zyellow_devil_object_tiles_flag
	BNE @loop_2
	LDA #$00
	STA z:zobject_tiles_update_size
	RTS
