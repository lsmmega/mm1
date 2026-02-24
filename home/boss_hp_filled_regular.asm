_boss_hp_filled_regular:
@loop:
	LDA aboss_hp
	CMP #$1C
	BEQ @done
	JSR _boss_hp_filled
	JSR _sprites
	JSR _nmi_wait
	JMP @loop

@done:
	RTS
