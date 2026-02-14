_short_frozen:
	LDX #$01

@loop:
	LDA aobject_ycoord, X
	CMP #$F8
	BEQ @not_hidden
	INC aobject_frozen_timer, X

@not_hidden:
	INX
	CPX #$20
	BNE @loop
	RTS
