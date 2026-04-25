_jump_to_ending:
	zbankswitch $06
	JMP _ending_jmp

_got_megaman_ending_landing_ycoord:
	JSR _checkpoint_ycoord
	JMP _return_to_ending_bank

_ending_generate_object:
	JMP _generate_object_common

_ending_objects_xcoord_move:
	JSR _bankswitch_05
	JSR $9E6D
	JSR $988F

_ending_objects_no_xcoord_move:
	JSR _sprites
	JSR _nmi_wait
	INC z:zending_frame
	LDA z:zending_frame
	CMP #$3E
	BNE _return_to_ending_bank
	INC z:zending_timer
	LDA #$00
	STA z:zending_frame

_return_to_ending_bank:
	zbankswitch $06
	RTS

_ending_to_stage_select:
	LDA #$00
	STA z:zcurrent_stage
	JMP _ending_to_stage_select_jmp
