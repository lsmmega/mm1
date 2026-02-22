_explosion_timer:
	LDA z:zobject_ram_index
	BNE @not_megaman
	JSR _run_bosses_ai

@not_megaman:
	JSR _run_enemies_ai
	JSR _sprites
	JSR _nmi_wait
	DEC z:ztimer
	RTS
