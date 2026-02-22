_recoil_elecman_thunder_beam:
	LDA #$4C
	STA z:z0C
	LDA #$00
	STA z:z0D
	LDA #$08
	STA z:z0E

@loop:
	LDX #$02
	LDA z:z0C
	JSR _check_object_type
	BCS @max
	JSR _recoil_thunder_beam_object

@max:
	INC z:z0C
	DEC z:z0E
	BNE @loop
	RTS

_recoil_thunder_beam:
	LDX #$05
	LDA #$00
	STA z:z0D

@loop:
	LDA aobject_ycoord, X
	CMP #$F8
	BEQ @skip
	JSR _recoil_thunder_beam_object

@skip:
	INX
	CPX #$0A
	BNE @loop
	RTS

_recoil_thunder_beam_object:
	LDA aobject_flag, X
	EOR #objects_right
	AND #%11110111
	STA aobject_flag, X
	LDY z:z0D
	LDA @ycoord_speed_fraction_table, Y
	STA aobject_ycoord_speed_fraction, X
	LDA @ycoord_speed_table, Y
	STA aobject_ycoord_speed, X
	LDA @xcoord_common_table, Y
	PHA
	AND #%11110000
	STA aobject_xcoord_speed_fraction, X
	PLA
	AND #%00001111
	STA aobject_xcoord_speed, X
	INC z:z0D
	RTS

@ycoord_speed_fraction_table:
	.BYTE $54, $80, $00, $80, $AC

@ycoord_speed_table:
	.BYTE $04, $02, $00, $BD, $FB

@xcoord_common_table:
	.BYTE $82, $54, $05, $54, $82
