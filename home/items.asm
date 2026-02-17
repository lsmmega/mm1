_get_items:
	SEC
	SBC #objects_score_ball
	ASL
	TAY
	LDA #$F8
	STA aobject_ycoord, X
	LDA @jumptable, Y
	STA z:z04
	LDA @jumptable + 1, Y
	STA z:z05
	JMP (z04)

@score_ball:
	CLC
	LDA z:zscore_ball
	CMP #99
	BEQ @done
	INC z:zscore_ball
	BNE @done

@small_weapon_capsule:
	LDA #$82
	BNE @continue

@small_life_capsule:
	LDA #$02
	BNE @continue

@large_weapon_capsule:
	LDA #$8A
	BNE @continue

@large_life_capsule:
	LDA #$0A

@continue:
	STA z:zcapsule_parameter
	RTS

@1up:
	LDA #track_1up
	CLC
	LDX z:z1up
	CPX #99
	BCS @1up_done
	INC z:z1up
	BNE @1up_done

@magnet_beam:
	LDA #got_magnet_beam
	ORA z:zgot_weapon_flag
	STA z:zgot_weapon_flag
	LDA #$1C
	STA z:zmagnet_beam

@done:
	LDA #track_pickup_ball

@1up_done:
	JSR _track_queue
	RTS

@teleport:
	LDA #$01
	STA z:zscroll_end_direction
	STA z:zteleport_flag
	BNE @done

@heart_part:
	track_queue track_pickup_ball
	JMP _stage_clear

@yashichi:
	LDA #$1C
	LDX #$07

@loop:
	STA z:zmegaman_hp, X
	DEX
	BPL @loop
	BMI @done

@jumptable:
	.WORD @score_ball
	.WORD @small_weapon_capsule
	.WORD @small_life_capsule
	.WORD @large_weapon_capsule
	.WORD @large_life_capsule
	.WORD @1up
	.WORD @magnet_beam
	.WORD @teleport
	.WORD @heart_part
	.WORD @yashichi
