_sprites_tiles_set:
	LDA z:ztiles_address
	CMP #$29
	BNE @continue
	RTS

@continue:
	INC z:ztiles_address
	JSR _bankswitch_stage
	LSR
	ROR aobject_ppu_address + 1
	LSR
	ROR aobject_ppu_address + 1
	LSR
	ROR aobject_ppu_address + 1
	PHA
	CLC
	ADC #$08
	STA aobject_ppu_address
	PLA
	CMP #5
	PHP
	CLC
	ADC z:zsprites_tiles_palette_index
	TAX
	PLP
	BEQ @tiles_done
	LDA sprites_tiles_set, X
	JSR _tiles_address
	LDA aobject_ppu_address + 1
	AND #%11100000
	STA aobject_ppu_address + 1
	STA z:z04
	LDY #$1F

@loop_1:
	LDA (z04), Y
	STA aobject_ppu_data, Y
	DEY
	BPL @loop_1
	LDA #$20
	STA z:zobject_tiles_update_size
	JMP _bankswitch_05

@tiles_done:
	LDY #$00

@loop_2:
	LDA sprites_tiles_set, X
	STA aobject_palette + 9, Y
	INX
	INY
	CPY #$07
	BEQ @palette_done
	CPY #$03
	BNE @loop_2
	INY
	BNE @loop_2

@palette_done:
	JSR _update_object_palette
	JMP _bankswitch_05
