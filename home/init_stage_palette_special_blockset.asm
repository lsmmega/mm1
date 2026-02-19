_init_stage_palette_special_blockset:
	JSR _bankswitch_stage
	LDA z:zcurrent_stage
	CMP #stage_wily1
	BCC @not_wily_palette
	LDA #<wily_palette
	STA z:zpalette_update_address
	LDA #>wily_palette
	STA z:zpalette_update_address + 1
	JMP @continue_palette

@not_wily_palette:
	LDA #<regular_palette
	STA z:zpalette_update_address
	LDA #>regular_palette
	STA z:zpalette_update_address + 1

@continue_palette:
	LDA #$20
	JSR _palette_update_do
	LDY #$2F

@loop_palette:
	LDA (zpalette_update_address), Y
	STA abackground_palette_original, Y
	DEY
	BPL @loop_palette
	LDA z:zcurrent_stage
	CMP #stage_wily1
	BCC @not_wily_special_blockset
	LDA #<wily_special_blockset
	STA z:z04
	LDA #>wily_special_blockset
	STA z:z05
	BNE @continue_special_blockset

@not_wily_special_blockset:
	LDA #<regular_special_blockset
	STA z:z04
	LDA #>regular_special_blockset
	STA z:z05

@continue_special_blockset:
	LDY #$01
	LDA (z04), Y
	ASL
	STA ano_of_special_blockset
	ASL
	CLC
	ADC ano_of_special_blockset
	TAY
	INY

@loop_special_blockset:
	LDA (z04), Y
	STA ano_of_special_blockset - 1, Y
	DEY
	BNE @loop_special_blockset
	JMP _bankswitch_05
