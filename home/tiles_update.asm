_tiles_update:
	STY z:ztiles_update_20size
	STA z:ztiles_address + 1
	STX aobject_ppu_address
	LDX #$00

@loop_2:
	STX z:ztiles_address
	STX aobject_ppu_address + 1
	LDX z:ztiles_bankswitch
	TXA
	STA z:zcurrent_bankswitch
	STA uxrom_prg_bank, X
	LDY #$20
	STY z:zobject_tiles_update_size

@loop_1:
	LDA (ztiles_address), Y
	STA aobject_ppu_data, Y
	DEY
	BPL @loop_1
	zbankswitch $05
	JSR _nmi_wait
	CLC
	LDA z:ztiles_address
	ADC #$20
	TAX
	PHP
	LDA z:ztiles_address + 1
	ADC #$00
	STA z:ztiles_address + 1
	PLP
	LDA aobject_ppu_address
	ADC #$00
	STA aobject_ppu_address
	DEC z:ztiles_update_20size
	BNE @loop_2
	RTS
