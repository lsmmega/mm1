_back_to_stage_select:
	LDA #$1C
	LDX #$07

@loop:
	STA z:zmegaman_hp, X
	DEX
	BPL @loop
	LDA z:zstage_select_flag
	BNE _stage_start
	JSR _init_stage_select
