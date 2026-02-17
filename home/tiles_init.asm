_tiles_init:
	JSR _bankswitch_stage
	LDA z:zcurrent_stage
	CMP #stage_wily1
	BCC @not_wily
	LDA _wily_stage_tiles_init
	BNE @continue

@not_wily:
	LDA _regular_stage_tiles_init

@continue:
	STA z:z0C
	LDA #$00
	STA PPU_ADDRESS
	STA PPU_ADDRESS
	STA z:z0D

@loop_3:
	JSR _bankswitch_stage
	LDY z:z0D
	LDA z:zcurrent_stage
	CMP #stage_wily1
	BCC @_not_wily
	LDA _wily_stage_tiles_init + 1, Y
	LDX _wily_stage_tiles_init + 2, Y
	BNE @_continue

@_not_wily:
	LDX _regular_stage_tiles_init + 2, Y
	LDA _regular_stage_tiles_init + 1, Y

@_continue:
	JSR _tiles_address

@loop_2:
	LDY #$00

@loop_1:
	LDA (z04), Y
	STA PPU_DATA
	INY
	BNE @loop_1
	INC z:z05
	DEX
	BNE @loop_2
	INC z:z0D
	INC z:z0D
	DEC z:z0C
	BNE @loop_3
	JMP _bankswitch_05
