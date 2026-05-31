_teleporting:
	JSR _init_enemies_special_blockset
	LDA #$14
	STA aobject_pointer
	LDA #$00
	STA aobject_frameset_timer

@loop:
	LDA #$01
	JSR _sprites_timer
	LDA aobject_frameset_timer
	BNE @loop
	LDA #$F8
	STA aobject_ycoord
	LDA #$01
	JSR _sprites_timer
	JMP _run_screen_right
