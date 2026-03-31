_random_integer:
	STA z:zrandom_integer
	LDA z:zrandom
	SEC

@dec_loop:
	SBC z:zrandom_integer
	BCS @dec_loop
	ADC z:zrandom_integer
	RTS
