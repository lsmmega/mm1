_object_tile_prewrite:
	TAX
	STA z:zcurrent_bankswitch
	STA uxrom_prg_bank, X
	LDX #$00

@loop:
	LDA (z06), Y
	STA aobject_ppu_data, X
	INY
	INX
	CPX #$10
	BNE @loop
	zbankswitch $06
	RTS
