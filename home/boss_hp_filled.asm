_boss_hp_filled:
	LDA z:znmi_frame
	AND #%00000001
	BNE @skip
	LDA aboss_hp
	CMP #$1C
	BEQ @max
	INC aboss_hp
	LDA z:znmi_frame
	AND #%00000111
	BNE @skip
	track_queue track_refill

@skip:
	RTS

@max:
	track_queue mute_sfx
	RTS
