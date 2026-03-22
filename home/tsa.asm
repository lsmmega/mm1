_tsa_ycoord:
	LDX #$02
	LDY #$00
	LDA aobject_flag
	AND #~objects_invisible
	STA aobject_flag

@loop:
	LDA z:ztsa_blockset_pointers, X
	BPL @not_special_blockset
	AND #%01111111
	CMP #$03
	BNE @not_door
	LDA #$02
	STA z:zscroll_end_direction
	BNE @as_block

@not_door:
	CMP #$04
	BEQ @inner_done
	BNE @as_block

@not_special_blockset:
	CMP #block
	BEQ @as_block
	CMP #ice
	BNE @not_ice

@as_block:
	LDY #block
	BNE @done

@not_ice:
	CMP #spike
	BEQ @is_spike
	CMP #ladder
	BNE @not_ladder
	LDA z:zladder_flag
	ORA @ladder_flag_table, X
	STA z:zladder_flag
	JMP @inner_done

@not_ladder:
	CMP #water
	BNE @inner_done
	STA z:zrunning_type

@inner_done:
	DEX
	BPL @loop

@done:
	TYA
	RTS

@ladder_flag_table:
	.BYTE 1 << 3, 1 << 2, 1 << 1

@is_spike:
	JMP _megaman_death

_tsa_xcoord:
	LDX #$02
	LDA #$00
	STA z:zice_flag

@loop:
	LDY z:ztsa_blockset_pointers, X
	BPL @not_special_blockset
	CPY #$84
	BNE @as_block
	BEQ @inner_done

@not_special_blockset:
	CPY #spike
	BEQ @is_spike
	CPY #block
	BEQ @as_block
	CPY #ice
	BNE @inner_done
	STA z:zice_flag

@as_block:
	ORA #%00000001

@inner_done:
	DEX
	BPL @loop
	TAY
	LDX z:zobject_ram_index
	BNE @done
	TYA
	BNE @done
	LDA aobject_ycoord_speed
	BPL @done
	LDA z:zladder_flag
	CMP #$01
	BNE @done
	LDY #block

@done:
	TYA
	RTS

@is_spike:
	JMP _megaman_death
