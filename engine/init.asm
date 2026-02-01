_init:
	stack_pointers $FF
	LDX #$01

@loop_1:
	LDA PPU_STATUS
	BPL @loop_1

@loop_2:
	LDA PPU_STATUS
	BMI @loop_2
	DEX
	BPL @loop_1
	TXS
	LDA #$00
	LDY #$00

@loop_3:
	STA a:z00, Y
	INY
	BNE @loop_3
	LDA #$01
	STA z:z05

@loop_4:
	LDA #$00

@loop_5:
	STA (z04), Y
	INY
	BNE @loop_5
	INC z:z05
	LDA z:z05
	CMP #$08
	BNE @loop_4
