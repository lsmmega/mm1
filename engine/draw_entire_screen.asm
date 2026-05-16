_draw_entire_screen:
	STA z:z05
	LDX #$FF
	STX z:z04
	LDA #$00
	STA z:zobject_ram_index

@loop:
	LDA #$00
	STA z:z0D
	STA z:zscreen_update_flag
	LDA #$08
	STA z:z0C
	JSR _objects_scrolling_left_common
	LDA z:zppu_ctrl
	AND #nmi_enable
	BEQ @disable
	JSR _nmi_wait
	JMP @enable

@disable:
	JSR _screen_update

@enable:
	LDA z:z04
	CMP #$FF
	BNE @loop
	RTS
