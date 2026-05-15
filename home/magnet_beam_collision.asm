_magnet_beam_collision:
	LDA amagnet_beam_length, X
	AND #%01111100
	ASL
	ADC #$08
	ORA #$02
	STA z:z0C
	LDA aobject_flag, X
	AND #objects_right
	BEQ @left
	CLC
	LDA amagnet_beam_xcoord, X
	ADC z:z0C
	STA z:z0D
	LDA amagnet_beam_screen, X
	ADC #$00
	JMP @screen

@left:
	SEC
	LDA amagnet_beam_xcoord, X
	SBC z:z0C
	STA z:z0D
	LDA amagnet_beam_screen, X
	SBC #$00

@screen:
	STA z:z0C
	LDA amagnet_beam_ycoord, X
	STA z:z0E
	JSR _bankswitch_stage
	JSR _check_special_blockset_or_tsa_collision
	TAY
	JMP _bankswitch_05
