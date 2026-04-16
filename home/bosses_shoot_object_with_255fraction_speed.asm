_bosses_shoot_object_with_255fraction_speed:
	PHP
	BCS @right_1
	LDA z:z03
	EOR #%11111111
	STA z:z03

@right_1:
	LDA z:z02
	STX z:z0C
	CMP z:z03
	BCC @xcoord_disance_shorter_than_ycoord_distance
	LDA z:z01
	STA aobject_xcoord_speed, X
	STA z:z07
	LDA z:z00
	STA aobject_xcoord_speed_fraction, X
	STA z:z06
	LDA z:z02
	JSR @constants_div_to_255fraction
	LDA z:z09
	STA z:z07
	LDA z:z08
	STA z:z06
	LDA z:z03
	JSR @constants_div_to_255fraction
	LDX z:z0C
	LDA z:z09
	STA aobject_ycoord_speed, X
	LDA z:z08
	STA aobject_ycoord_speed_fraction, X
	JMP @continue

@xcoord_disance_shorter_than_ycoord_distance:
	LDA z:z01
	STA aobject_ycoord_speed, X
	STA z:z07
	LDA z:z00
	STA aobject_ycoord_speed_fraction, X
	STA z:z06
	LDA z:z03
	JSR @constants_div_to_255fraction
	LDA z:z09
	STA z:z07
	LDA z:z08
	STA z:z06
	LDA z:z02
	JSR @constants_div_to_255fraction
	LDX z:z0C
	LDA z:z09
	STA aobject_xcoord_speed, X
	LDA z:z08
	STA aobject_xcoord_speed_fraction, X

@continue:
	PLP
	BCS @right_2
	LDA aobject_ycoord_speed, X
	EOR #%11111111
	PHA
	LDA aobject_ycoord_speed_fraction, X
	EOR #%11111111
	ADC #$01
	STA aobject_ycoord_speed_fraction, X
	PLA
	ADC #$00
	STA aobject_ycoord_speed, X

@right_2:
	RTS

@constants_div_to_255fraction:
	STA z:z05
	LDA #$00
	STA z:z04
	JSR _constants_div_to_255fraction
	RTS
