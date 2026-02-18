_frozen_timer:
	STA z:ztimer

@loop:
	INC aobject_frozen_timer
	JSR _short_frozen
	JSR _sprites
	JSR _unfrozen
	JSR _nmi_wait
	DEC z:ztimer
	BNE @loop
	LDA #$00
	STA aobject_frozen_timer
	RTS
