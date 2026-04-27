_objects_scrolling_right:
	LDA #$41
	STA z:zobjects_scrolling_flag
	LDX #$00
	STX z:zscreen_update_flag
	STX z:z0D
	LDX aobject_screen
	INX
	STX z:z05
	LDA aobject_xcoord
	STA z:z04

@loop:
	LDA z:z05
	CMP z:zscreen_end_of_right
	BEQ @next_end
	BCS _objects_scrolling_skip_common

@next_end:
	LDA z:z04
	AND #%00000011
	BNE @not_draw
	JSR _update_stage_screen

@not_draw:
	INC z:z04
	BNE @nz
	INC z:z05

@nz:
	DEC z:z0C
	BNE @loop

_objects_scrolling_skip_common:
	RTS

_objects_scrolling_left:
	LDA #$01
	STA z:zobjects_scrolling_flag
	LDA #$00
	STA z:zscreen_update_flag
	STA z:z0D
	LDX aobject_screen
	DEX
	STX z:z05
	LDA aobject_xcoord
	STA z:z04

@loop:
	LDA z:z05
	BMI _objects_scrolling_skip_common
	CMP z:zscreen_end_of_left
	BCC @skip
	LDA z:z04
	AND #%00000011
	BNE @not_draw
	LDA z:z04
	AND #%00010000
	BEQ @draw
	LDA z:zending_screen_flag
	BNE @not_draw

@draw:
	JSR _update_stage_screen

@not_draw:
	LDA z:z04
	BNE @nz
	DEC z:z05

@nz:
	DEC z:z04
	DEC z:z0C
	BNE @loop

@skip:
	RTS
