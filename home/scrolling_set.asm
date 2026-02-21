_scrolling_set:
	JSR _bankswitch_stage
	CPY #$00
	BMI @negative
	LDA stage_scroll_set, Y
	JMP _bankswitch_05

@negative:
	LDA #$00
	JMP _bankswitch_05
