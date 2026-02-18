_timer:
	STA z:ztimer

@loop:
	JSR _nmi_wait
	DEC z:ztimer
	BNE @loop
	RTS
