_object_clear:
	LDA #$F8
	LDX #$1F

@loop:
	STA aobject_ycoord, X
	DEX
	BNE @loop
	RTS
