_no_damage_collision:
	LDA z:zweapon_firing
	CMP #$C7
	BNE @no_magnet_beam
	LDX #$00

@loop_1:
	LDA amagnet_beam_timer, X
	BEQ @skip
	LDA amagnet_beam_screen, X
	STA z:z07
	LDA amagnet_beam_xcoord, X
	STA z:z06
	LDA amagnet_beam_length, X
	AND #%01111100
	ASL
	ADC #$10
	STA z:z09
	LDA amagnet_beam_ycoord, X
	STA z:z08
	JSR @check_collision
	BCS @magnet_beam_collided

@skip:
	INX
	CPX #$10
	BNE @loop_1

@no_magnet_beam:
	LDX z:zfoot_holder_index
	BEQ @no_foot_holder
	DEX

@loop_2:
	LDA afoot_holder_screen, X
	STA z:z07
	LDA afoot_holder_xcoord, X
	STA z:z06
	LDA #$14
	STA z:z09
	LDA afoot_holder_ycoord, X
	STA z:z08
	JSR @check_collision
	BCS @foot_holder_collided
	DEX
	BPL @loop_2

@no_foot_holder:
	LDA #$00
	RTS

@foot_holder_collided:
	PHA
	LDA afoot_holder_flag, X
	ORA #$80
	STA z:zcurrent_foot_holder_flag
	PLA

@magnet_beam_collided:
	RTS

@check_collision:
	CLC
	LDA aobject_ycoord
	ADC #$0E
	STA z:z04
	CMP z:z08
	BCS @not_collision
	SEC
	LDA aobject_ycoord_fraction
	SBC aobject_ycoord_speed_fraction
	LDA z:z04
	SBC aobject_ycoord_speed
	CMP z:z08
	BCC @not_collision
	SEC
	LDA aobject_xcoord
	SBC z:z06
	STA z:z04
	LDA aobject_screen
	SBC z:z07
	BCC @left
	BNE @not_collision
	BEQ @right

@left:
	EOR #%11111111
	BNE @not_collision
	LDA z:z04
	EOR #%11111111
	ADC #$01
	STA z:z04

@right:
	LDA z:z09
	CMP z:z04
	BCC @not_collision
	SEC
	LDA z:z08
	SBC #$10
	SEC
	RTS

@not_collision:
	CLC
	RTS
