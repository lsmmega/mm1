_check_object_type:
@loop:
	CMP aobject_pointer, X
	BEQ @same

@none:
	INX
	CPX z:zsprites_pointer
	BNE @loop
	SEC
	RTS

@same:
	LDA #$F8
	CMP aobject_ycoord, X
	PHP
	LDA aobject_pointer, X
	PLP
	BEQ @none
	CLC
	RTS
