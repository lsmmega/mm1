init_stage_select_tiles_table:
;bankswitch, ppu address length
	.BYTE $00, 2
	.BYTE $00, 2
	.BYTE $00, 2
	.BYTE $00, 1
	.BYTE $00, 1
	.BYTE $00, 3
	.BYTE $00, 3
	.BYTE $02, 1
	.BYTE $02, 1
	.BYTE $00, 8

init_stage_select_tiles_address_table:
	.WORD $9800
	.WORD $A800
	.WORD $A000
	.WORD $A400
	.WORD $A700
	.WORD $AC00
	.WORD $9C00
	.WORD $BA00
	.WORD $9700
	.WORD $B800

_init_stage_select:
	zbankswitch $06
	LDA #$00
	STA PPU_ADDRESS
	STA PPU_ADDRESS
	LDA #$00
	STA z:z0C

@mainloop:
	ASL
	TAX
	LDA init_stage_select_tiles_table, X
	TAY
	STA z:zcurrent_bankswitch
	STA uxrom_prg_bank, Y
	LDA init_stage_select_tiles_address_table, X
	STA z:z04
	LDA init_stage_select_tiles_address_table + 1, X
	STA z:z05
	LDA init_stage_select_tiles_table + 1, X
	TAX

@loop_1:
	LDY #$00

@loop_2:
	LDA (z04), Y
	STA PPU_DATA
	INY
	BNE @loop_2
	INC z:z05
	DEX
	BNE @loop_1
	INC z:z0C
	LDA z:z0C
	CMP #$0A
	BNE @mainloop
	zbankswitch $06
	JSR $BFF6 ;go to stage select
	JMP _bankswitch_05
