_enemies_immnue_hit:
	LDA aobject_flag, X
	AND #~objects_hitting_bullet
	STA aobject_flag, X
	LDX z:ztrack_queue_pointer
	BEQ @sfx_immnue_queue
	DEX
	LDA #track_enemy_hit

@loop:
	CMP atrack_queue, X
	BEQ @sfx_immnue_queue
	DEX
	BPL @loop
	LDX z:ztrack_queue_pointer

@sfx_immnue_queue:
	LDA #track_enemy_immune
	STA atrack_queue, X
	INX
	STX z:ztrack_queue_pointer
	LDX z:zobject_ram_index
	RTS
