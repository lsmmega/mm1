_run_objects:
	LDA #$00
	STA z:zfoot_holder_index
	LDX #$02
	STX z:zobject_ram_index

_run_objects_mainloop:
	LDX z:zobject_ram_index
	LDA aobject_ycoord, X
	CMP #$F8
	BNE @not_hidden
	JMP _run_objects_done

@not_hidden:
	LDA aobject_pointer, X
	CMP #$FF
	BNE @not_enemies
	JSR _run_enemies_ai
	JMP _run_objects_done

@not_enemies:
	LDA aobject_frozen_timer, X
	BNE _run_objects_not_hitting_common
	LDA aobject_flag, X
	AND #%10000000
	BEQ _run_remove_objects_hitting_done
	LDA #$05
	JMP _run_hit_objects

_run_remove_objects_hitting_done:
	LDA aobject_flag, X
	AND #%00001000
	BEQ @check_direction
	LDA aobject_frameset_timer, X
	BNE @check_direction
	LDA #$00
	JMP _run_hit_objects

@check_direction:
	LDA #$00
	STA z:ztsa_blockset_pointers
	STA z:ztsa_blockset_pointers + 1
	LDA aobject_flag, X
	AND #objects_right
	BEQ @left
	JSR _objects_rightward
	JMP @continue

@left:
	JSR _objects_leftward

@continue:
	JSR _objects_screen_moving_done

_run_objects_not_hitting_common:
	SEC
	LDA aobject_xcoord, X
	SBC z:zscreen_xcoord
	LDA aobject_screen, X
	SBC z:zscreen
	BEQ @not_out_of_screen
	LDA #$01
	JMP _run_hit_objects

@not_out_of_screen:
	LDA aobject_frozen_timer, X
	BNE _run_objects_done
	LDA z:ztsa_blockset_pointers
	BEQ _run_objects_ycoord
	LDA #$03
	JMP _run_hit_objects

_run_objects_ycoord:
	LDA aobject_flag, X
	AND #can_collide_map | objects_temporary
	BNE @true
	JSR _objects_run_ycoord
	BCS @out_of_ycoord
	LDA z:zobject_in_process_ycoord_speed
	STA aobject_ycoord_fraction, X
	LDA z:zobject_in_process_ycoord
	STA aobject_ycoord, X
	BCC _run_objects_done

@true:
	JSR _objects_vertical_moving
	LDA z:ztsa_blockset_pointers + 1
	BEQ _run_objects_done

@out_of_ycoord:
	LDA #$04
	JMP _run_hit_objects

_run_objects_done:
	INC z:zobject_ram_index
	LDA z:zsprites_pointer
	CMP z:zobject_ram_index
	BEQ @max
	JMP _run_objects_mainloop

@max:
	RTS

_run_hit_objects:
	STA z:zhit_objects_attributes
	LDY #$2D
	LDX z:zobject_ram_index
	LDA aobject_pointer, X

@loop:
	CMP hit_objects_id_and_jumptable, Y
	BEQ @true
	DEY
	DEY
	DEY
	BPL @loop
	LDY #$00

@true:
	LDA hit_objects_id_and_jumptable + 1, Y
	STA z:z04
	LDA hit_objects_id_and_jumptable + 2, Y
	STA z:z05
	JMP (z04)
	JMP _run_objects_done

hit_objects_id_and_jumptable:
	.BYTE $19
	.WORD _run_objects_invincibility
	.BYTE $27
	.WORD _run_objects_bombman_hyper_bomb
	.BYTE $32
	.WORD _run_objects_gutsman_guts_block
	.BYTE $36
	.WORD _run_objects_fireman_fire_storm
	.BYTE $4C
	.WORD _run_objects_elecman_thunder_beam
	.BYTE $4D
	.WORD _run_objects_elecman_thunder_beam
	.BYTE $4E
	.WORD _run_objects_elecman_thunder_beam
	.BYTE $4F
	.WORD _run_objects_elecman_thunder_beam
	.BYTE $50
	.WORD _run_objects_elecman_thunder_beam
	.BYTE $51
	.WORD _run_objects_elecman_thunder_beam
	.BYTE $52
	.WORD _run_objects_elecman_thunder_beam
	.BYTE $53
	.WORD _run_objects_elecman_thunder_beam
	.BYTE $39
	.WORD _run_objects_bombman_hyper_bomb_explosion
	.BYTE $5A
	.WORD _run_objects_hyper_bomb
	.BYTE $6C
	.WORD _run_objects_super_arm_guts_block
	.BYTE $5D
	.WORD _run_objects_weapon_hyper_bomb

_run_objects_invincibility:
	LDA z:zhit_objects_attributes
	CMP #$05
	BNE _run_objects_hidden

_run_remove_objects_hitting:
	LDA aobject_flag, X
	AND #~objects_hitting_bullet
	STA aobject_flag, X
	JMP _run_remove_objects_hitting_done

_run_objects_hidden:
	LDX z:zobject_ram_index
	LDA #$F8
	STA aobject_ycoord, X
	JMP _run_objects_done

_run_objects_gutsman_guts_block:
	CPX #$05
	BNE @is_gutsman
	JMP _run_objects_super_arm_guts_block

@is_gutsman:
	DEC z:zboss_move_timer
	LDA aobject_flag, X
	AND #%00001000
	BNE _run_objects_hidden
	LDA aobject_screen, X
	STA z:z01
	LDA aobject_xcoord, X
	STA z:z00
	LDA aobject_ycoord, X
	STA z:z03
	LDA aobject_flag, X
	AND #objects_right
	ORA #can_collide_megaman
	STA z:z02
	LDA #$F8
	STA aobject_ycoord, X
	LDY #$00

@loop:
	STY z:z0C
	LDX #$10
	JSR _check_object
	JSR _special_blockset_fragment
	LDY z:z0C
	INY
	CPY #$04
	BNE @loop
	JMP _run_objects_done

_run_objects_fireman_fire_storm:
	LDA z:zhit_objects_attributes
	CMP #$05
	BNE @not_hitting
	JMP _run_remove_objects_hitting

@not_hitting:
	LDX z:zobject_ram_index
	INC aobject_pointer, X
	LDA aobject_flag, X
	AND #~(1 << 3)
	STA aobject_flag, X
	JSR _write_special_object_xcoord_speed
	track_queue track_fireman_move
	JMP _run_objects_done

_run_objects_bombman_hyper_bomb:
	DEC z:zboss_move_timer
	LDA z:zboss_ai_pointer
	CMP #$05
	BCS @is_bombman
	LDA #$F8
	STA aobject_ycoord, X
	JMP _run_objects_done

@is_bombman:
	LDA #$0B
	STA z:z0C
	LDA #$39
	STA z:z0D
	LDA #$0A
	STA z:z0E
	JSR _create_explosion_object_common

@loop:
	LDX #$10
	JSR _check_object
	LDY z:zobject_ram_index
	JSR _create_explosion_object
	BPL @loop
	track_queue track_explosion
	JMP _run_objects_done

_run_objects_elecman_thunder_beam:
	LDA z:zhit_objects_attributes
	CMP #$05
	BNE @not_hitting
	JMP _run_remove_objects_hitting

@not_hitting:
	CMP #$00
	BNE @out_of_screen
	LDA aobject_pointer, X
	SEC
	SBC #$4C
	TAY
	LDA aobject_flag, X
	AND #objects_right
	BEQ @left
	CLC
	LDA aobject_xcoord_fraction, X
	ADC #$50
	STA aobject_xcoord_fraction, X
	LDA aobject_xcoord, X
	ADC _run_objects_elecman_thunder_beam_xcoord_table, Y
	BCS @out_of_screen
	BCC @on_screen

@left:
	SEC
	LDA aobject_xcoord, X
	SBC _run_objects_elecman_thunder_beam_xcoord_table, Y
	BCC @out_of_screen

@on_screen:
	STA aobject_xcoord, X
	CLC
	LDA aobject_ycoord, X
	ADC _run_objects_elecman_thunder_beam_ycoord_table, Y
	STA aobject_ycoord, X
	LDA _run_objects_elecman_thunder_beam_object_id_table, Y
	STA aobject_pointer, X
	JMP _run_objects_done

@out_of_screen:
	DEC z:zboss_move_timer

_run_objects_elecman_thunder_beam_bombman_hyper_bomb_explosion_hidden_common:
	LDA #$F8
	STA aobject_ycoord, X
	JMP _run_objects_done

_run_objects_elecman_thunder_beam_xcoord_table:
	.BYTE $1D, $21, $21, $1D, $19, $1D, $1D, $1D

_run_objects_elecman_thunder_beam_ycoord_table:
	.BYTE $FC, $E8, $00, $1C, $10, $F4, $FC, $FC

_run_objects_elecman_thunder_beam_object_id_table:
	.BYTE $51, $52, $53, $4D, $4E, $4F, $50, $51

_run_objects_bombman_hyper_bomb_explosion:
	LDA z:zhit_objects_attributes
	BNE _run_objects_elecman_thunder_beam_bombman_hyper_bomb_explosion_hidden_common
	LDA #$54
	STA aobject_pointer, X
	JMP _run_objects_done

_run_objects_hyper_bomb:
	JMP _run_objects_hidden

_run_objects_super_arm_guts_block:
	LDA aobject_flag, X
	AND #objects_invisible
	BNE _run_objects_super_arm_guts_block_invisible
	LDA z:zhit_objects_attributes
	CMP #$04
	BNE _run_objects_super_arm_guts_block_not_throw_on_top
	LDA z:ztsa_blockset_pointers + 1
	CMP #$FF
	BNE _run_objects_super_arm_guts_block_on_screen
	LDA aobject_ycoord_speed, X
	BMI _run_objects_super_arm_guts_block_hidden

_run_objects_super_arm_guts_block_hyper_bomb_throw_on_top_done_common:
	SEC
	LDA aobject_ycoord_speed_fraction, X
	SBC #$40
	STA aobject_ycoord_speed_fraction, X
	LDA aobject_ycoord_speed, X
	SBC #$00
	STA aobject_ycoord_speed, X
	JMP _run_objects_done

_run_objects_super_arm_guts_block_not_throw_on_top:
	CMP #$03
	BNE _run_objects_super_arm_guts_block_hidden

_run_objects_super_arm_guts_block_on_screen:
	LDA aobject_ycoord, X
	CMP #$E0
	BCC @not_bottom
	LDA #$04
	STA aobject_ycoord, X
	BNE _run_objects_super_arm_guts_block_hyper_bomb_throw_on_top_done_common

@not_bottom:
	JSR _super_arm_collision_common
	JMP _run_objects_done

_run_objects_super_arm_guts_block_hidden:
	LDA #$F8
	STA aobject_ycoord, X

_run_objects_super_arm_guts_block_invisible:
	JMP _run_objects_done

_run_objects_weapon_hyper_bomb:
	LDA z:zhit_objects_attributes
	CMP #$04
	BNE @not_throw_on_top
	LDA z:ztsa_blockset_pointers + 1
	CMP #$FF
	BNE @normal_collision
	LDA aobject_ycoord_speed, X
	BMI @hidden
	LDA #$04
	STA aobject_ycoord, X

@throw_on_top_done:
	JMP _run_objects_super_arm_guts_block_hyper_bomb_throw_on_top_done_common

@not_throw_on_top:
	CMP #$03
	BNE @hidden
	LDA aobject_ycoord, X
	CMP #$F0
	BCC @on_screen
	LDA #$04
	STA aobject_ycoord, X
	BNE @throw_on_top_done

@on_screen:
	JMP _run_objects_ycoord

@normal_collision:
	LDA aobject_ycoord_speed, X
	BMI @land
	LDA #$FF
	STA aobject_ycoord_speed, X
	LDA #$40
	STA aobject_ycoord_speed_fraction, X
	JMP _run_objects_done

@land:
	LDA z:zhyper_bomb_ycoord_speed
	BEQ @stop_done
	DEC z:zhyper_bomb_ycoord_speed

@stop_done:
	STA aobject_ycoord_speed, X
	STA aobject_ycoord_speed_fraction, X
	LSR aobject_xcoord_speed, X
	ROR aobject_xcoord_speed_fraction, X
	JMP _run_objects_done

@hidden:
	LDA #$F8
	STA aobject_ycoord, X
	JMP _run_objects_done
