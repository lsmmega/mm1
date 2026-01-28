init_sprites:
	LDA #$F8

@loop:
	STA oam_hi_addr << 8, Y
	INY
	INY
	INY
	INY
	DEX
	BNE @loop
	RTS
