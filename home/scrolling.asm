_xycoord_to_ppu_address:
	LDX #$20
	LDY #$23
	LDA z:z05
	AND #%00000001
	BEQ @left
	LDX #$24
	LDY #$27

@left:
	STX z:z10
	STY z:z09
	LDA #$00
	STA z:z07
	LDA z:z04
	AND #%00011111
	ASL
	ASL
	ASL
	ASL
	ROL z:z07
	ASL 
	ROL z:z07
	STA z:z06
	LDA z:z04
	AND #%11100000
	LSR
	LSR
	LSR
	ORA z:z06
	LDX z:z0D
	STA ascreen_ppu_address + 1, X
	LDA z:z10
	ORA z:z07
	STA ascreen_ppu_address, X
	INX
	INX
	RTS

_update_16x16tiles_screen:
	LDA #$02
	STA z:z0E

@loop_2:
	LDA #$02
	STA z:z0F

@loop_1:
	LDA (z06), Y
	ASL
	ASL
	CLC
	STA ascreen_ppu_data - 2, X
	ADC #$01
	STA ascreen_ppu_data - 1, X
	ADC #$01
	STA ascreen_ppu_data + 2, X
	ADC #$01
	STA ascreen_ppu_data + 3, X
	INX
	INX
	INY
	DEC z:z0F
	BNE @loop_1
	INX
	INX
	INX
	INX
	DEC z:z0E
	BNE @loop_2
	RTS

_attributes_to_ppu_address:
	LDA z:z04
	ROL
	PHA
	ROL
	ROL
	ROL
	AND #%00000111
	STA z:z08
	PLA
	AND #%00111000
	ORA z:z08
	ORA #%11000000
	STA ascreen_ppu_address + 1, X
	LDA z:z09
	STA ascreen_ppu_address, X
	INX
	INX
	RTS
