_check_object:
	LDA #$F8

@loop:
	CMP aobject_ycoord, X
	BEQ @none
	INX
	CPX z:zsprites_pointer
	BNE @loop
	SEC
	RTS

@none:
	CLC
	RTS
