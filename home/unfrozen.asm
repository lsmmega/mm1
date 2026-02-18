_unfrozen:
	LDX #$1F

@loop:
	LDA aobject_frozen_timer, X
	BEQ @not_frozen
	DEC aobject_frozen_timer, X

@not_frozen:
	DEX
	BPL @loop
	RTS
