_refilling:
	LDX #$00
	AND #%10000000
	BEQ @is_life_capsule
	LDX z:zcurrent_weapon
	BEQ @skip

@is_life_capsule:
	LDA z:zcapsule_parameter
	AND #%01111111
	STA z:ztimer

@loop:
	LDA z:znmi_frame
	AND #%00000011
	BNE @4_frames
	LDA z:znmi_frame
	AND #%00000111
	BNE @8_frames
	TXA
	PHA
	track_queue track_refill
	PLA
	TAX

@8_frames:
	LDA z:zmegaman_hp, X
	CMP #$1C
	BEQ @skip
	INC z:zmegaman_hp, X
	DEC z:ztimer
	BEQ @done

@4_frames:
	TXA
	PHA
	JSR _refilling_timer
	PLA
	TAX
	JMP @loop

@done:
	JSR _refilling_timer

@skip:
	LDA #$00
	STA z:zcapsule_parameter
	STA z:zjoy1_pressed
	RTS

_refilling_timer:
	INC aobject_frozen_timer
	JSR _short_frozen
	JSR _sprites
	JSR _unfrozen
	JSR _nmi_wait
	RTS
