_init_enemies_special_blockset:
	LDX #$1F
	LDA #$F8

@loop_1:
	STA aobject_ycoord + 1, X
	DEX
	BPL @loop_1
	LDX #$0F
	LDA #$FF

@loop_2:
	STA z:zenemies_screen_thread, X
	DEX
	BPL @loop_2
	LDA z:zcurrent_stage
	CMP #$01
	BEQ @iceman
	CMP #$04
	BEQ @elecman
	CMP #$03
	BEQ @fireman
	CMP #$06
	BEQ @wily_1
	RTS

@iceman:
	LDA #$66
	BNE @continue

@elecman:
	LDA #$2A

@continue:
@loop_3:
	STA z:z0E
	LDA #$00
	STA z:z0C
	LDA z:z0E
	JSR _replace_special_blockset
	SEC
	LDA z:z0E
	SBC #$06
	BPL @loop_3
	RTS

@wily_1:
	LDA #$1E

@loop_4:
	STA z:z0C
	JSR _fire_block_restored
	LDA z:z0C
	CMP #$2A
	BEQ @done_1
	CLC
	ADC #$06
	BNE @loop_4

@done_1:
	RTS

@fireman:
	LDA #$54

@loop_5:
	STA z:z0C
	JSR _fire_block_restored
	SEC
	LDA z:z0C
	SBC #$06
	BPL @loop_5
	LDA z:zscreen
	CMP #$0F
	BCS @done_2
	LDA #$FF
	STA aobject_pointer + $10
	LDA #$32
	STA aobject_id + $10
	LDA #objects_invisible
	STA aobject_flag + $10
	LDX #$10
	JSR _clean_objects_speed
	STA aobject_frameset_timer + $10
	STA aobject_timer + $10
	LDA #$E0
	STA aobject_ycoord + $10

@done_2:
	RTS
