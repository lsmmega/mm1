_enemies_one_shoot:
@loop:
	LDA aobject_pointer, X
	CMP #$FF
	BNE @skip
	LDA z:z0C
	CMP aobject_id, X
	BEQ @hidden


@skip:
@continue:
	INX
	CPX #$20
	BCC @loop
	RTS


@hidden:
	LDA aobject_ycoord, X
	CMP #$F8
	BEQ @continue
	CLC
	RTS
