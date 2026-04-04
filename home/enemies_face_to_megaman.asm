_enemies_face_to_megaman:
	LDA aobject_flag, X
	AND #~objects_right
	STA aobject_flag, X
	SEC
	LDA aobject_xcoord
	SBC aobject_xcoord, X
	TAY
	LDA aobject_screen
	SBC aobject_screen, X
	BCC @face_left
	LDA aobject_flag, X
	ORA #objects_right
	STA aobject_flag, X
	TYA
	RTS

@face_left:
	TYA
	EOR #%11111111
	ADC #$01
	RTS
