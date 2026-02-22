_spawn_tiles:
	LDA z:zcurrent_bankswitch
	PHA
	LDA z:zspawn_tiles_size
	BNE @in_process
	LDX z:z01
	STX z:zspawn_tiles_index
	LDA #$10
	STA z:zspawn_tiles_size

@in_process:
	LDA z:z04
	PHA
	LDA z:z05
	PHA
	DEC z:zspawn_tiles_size
	LDX z:zspawn_tiles_index
	LDA spawn_tiles_table, X
	STA aobject_ppu_address
	LDA spawn_tiles_table + 1, X
	JSR _tiles_address
	LDA z:zspawn_tiles_size
	ASL
	ASL
	ASL
	ASL
	STA z:z04
	STA aobject_ppu_address + 1
	LDY #$0F

@loop:
	LDA (z04), Y
	STA aobject_ppu_data, Y
	DEY
	BPL @loop
	LDA #$10
	STA z:zobject_tiles_update_size
	PLA
	STA z:z05
	PLA
	STA z:z04
	PLA
	TAX
	STA uxrom_prg_bank, X
	RTS

spawn_tiles_table:
	.BYTE $08, tiles_address_9b00
	.BYTE $08, tiles_address_a800
	.BYTE $09, tiles_address_a000
	.BYTE $0A, tiles_address_a100
	.BYTE $09, tiles_address_ab00
	.BYTE $0A, tiles_address_ac00
	.BYTE $0B, tiles_address_9800
	.BYTE $00, tiles_address_be00
	.BYTE $01, tiles_address_b300
	.BYTE $02, tiles_address_b400
