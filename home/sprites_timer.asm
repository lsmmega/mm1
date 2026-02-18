_sprites_timer:
	STA z:ztimer

@loop:
	JSR _sprites
	JSR _nmi_wait
	DEC z:ztimer
	BNE @loop
	RTS
