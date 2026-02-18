_open_menu_store:
	zbankswitch $06
	LDA z:zcurrent_boss
	CMP #$0A
	BEQ @is_wily_machine_1
	LDA z:zcurrent_stage
	CMP #stage_wily4
	BNE @not_wily_4
	CMP z:zcurrent_boss
	BEQ @is_wily_machine_1

@not_wily_4:
	CMP #stage_wily1
	BNE @not_wily1

@is_wily_machine_1:
	LDA z:zboss_ai_pointer
	BEQ @no_boss
	INC z:zscreen

@not_wily1:
@no_boss:
	JMP __open_menu_store
