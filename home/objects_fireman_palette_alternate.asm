_objects_fireman_palette_alternate:
	LDA z:znmi_frame
	AND #%00000111
	BNE @skip
	DEC aobject_timer, X
	LDA aobject_timer, X
	CMP #$03
	BCC @not_negative
	LDA #$02

@not_negative:
	STA aobject_timer, X
	TAY
	LDA z:zcurrent_stage
	CMP #stage_fireman
	BEQ @is_fireman_stage
	CLC
	TYA
	ADC #$05
	TAY

@is_fireman_stage:
	LDX #$00

@loop:
	LDA @palette_alternate_table, Y
	STA abackground_palette_original + 13, X
	INY
	INX
	CPX #$03
	BNE @loop
	LDX z:zobject_ram_index
	JSR _update_background_palette

@skip:
	RTS

@palette_alternate_table:
	.BYTE white_red,   light_red,  dark_red,    white_red,   light_red
	.BYTE white_azure, white_rose, white_green, white_azure, white_rose
