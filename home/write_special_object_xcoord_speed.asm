_write_special_object_xcoord_speed:
	zbankswitch $06
	LDA aobject_pointer, X
	LDY #$06

@loop:
	CMP xcoord_speed_with_special_object_table, Y
	BEQ @is_special_object_id
	DEY
	BPL @loop
	LDY #$00
	JMP _write_special_object_xcoord_speed_continue

@is_special_object_id:
	LDA index_xcoord_speed_with_special_object_table, Y
	TAY
	JMP _write_special_object_xcoord_speed_continue

_write_special_object_xcoord_speed_common:
	zbankswitch $06

_write_special_object_xcoord_speed_continue:
	LDA special_object_xcoord_speed_table, Y
	PHA
	AND #%11110000
	STA aobject_xcoord_speed_fraction, X
	PLA
	AND #%00001111
	STA aobject_xcoord_speed, X
	JMP _bankswitch_05
