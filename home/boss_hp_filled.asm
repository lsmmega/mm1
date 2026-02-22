_boss_hp_filled:
	LDA z:znmi_frame
	AND #%00000001
	BNE @skip
	LDA aobject_hp + 1
	CMP #$1C
	BEQ @max
	INC aobject_hp + 1
	LDA z:znmi_frame
	AND #%00000111
	BNE @skip
	track_queue track_refill

@skip:
	RTS

@max:
	track_queue mute_sfx
	RTS
