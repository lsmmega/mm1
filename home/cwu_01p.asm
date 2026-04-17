_check_cwu_01p_killed:
	LDA aobject_id, X
	CMP #objects_cwu_01p_killed
	BNE @not_killed
	JMP _cwu_01p_killed

@not_killed:
	LDA aobject_ycoord_speed, X
	BEQ _cwu_01p_left_or_right_move
	BMI _cwu_01p_move_down
	LDA aobject_ycoord, X
	CMP #$40
	BCS _dont_change_cwu_01p_direction

_cwu_01p_at_bottom_left:
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_right
	BNE _cwu_01p_at_bottom_left_continue

_cwu_01p_move_down:
	LDA aobject_ycoord, X
	CMP #$A0
	BCC _dont_change_cwu_01p_direction

_cwu_01p_at_bottom_right:
	LDA #can_collide_megaman | can_collide_megaman_bullet

_cwu_01p_at_bottom_left_continue:
	STA aobject_flag, X
	LDY z:zboss_move_timer
	LDA cwu_01p_left_right_speed_index_table, Y
	TAY

_cwu_01p_speed_init_common:
	JSR _object_speed_init
	CLC

_dont_change_cwu_01p_direction:
	RTS

_cwu_01p_left_or_right_move:
	LDA aobject_flag, X
	AND #objects_right
	BNE @right
	LDA aobject_xcoord, X
	CMP #$30
	BCS _dont_change_cwu_01p_direction
	LDY z:zboss_move_timer
	LDA cwu_01p_up_speed_index_table, Y
	TAY
	BNE _cwu_01p_speed_init_common

@right:
	LDA aobject_xcoord, X
	CMP #$D0
	BCC _dont_change_cwu_01p_direction

_cwu_01p_at_top_middle:
	LDY z:zboss_move_timer
	LDA cwu_01p_down_speed_index_table, Y
	TAY
	BNE _cwu_01p_speed_init_common

_cwu_01p_ai:
	LDA #$03
	JSR _random_integer
	STA z:z0C
	LDA #$3A
	JSR _generate_object
	BCS @exist
	LDA #can_collide_megaman | can_collide_megaman_bullet
	STA aobject_flag, X
	LDY z:z0C
	LDA cwu_01p_xcoord_table, Y
	STA aobject_xcoord, X
	LDA cwu_01p_ycoord_table, Y
	STA aobject_ycoord, X
	LDA #$DE
	STA aobject_timer, X
	LDA z:z0C
	BEQ _cwu_01p_at_top_middle
	CMP #$01
	BEQ _cwu_01p_at_bottom_left
	BNE _cwu_01p_at_bottom_right

@exist:
	SEC
	RTS

_cwu_01p_killed:
	INC z:zboss_move_timer
	INC z:zboss_ai_pointer
	LDY z:zboss_move_timer
	LDA cwu_01p_palette_table - 1, Y
	STA aobject_palette + 10
	LDA #$7E
	STA z:zboss_move_stage
	SEC
	LDA aboss_hp
	SBC #$04
	STA aboss_hp
	JSR _update_object_palette
	RTS

cwu_01p_left_right_speed_index_table:
	.BYTE $88, $88, $94, $94, $A0, $AC, $24

cwu_01p_up_speed_index_table:
	.BYTE $80, $80, $8C, $8C, $98, $A4, $1C

cwu_01p_down_speed_index_table:
	.BYTE $84, $84, $90, $90, $9C, $A8, $2C

cwu_01p_xcoord_table:
	.BYTE $80, $10, $F0

cwu_01p_ycoord_table:
	.BYTE $10, $70, $70

cwu_01p_palette_table:
	.BYTE white_blue
	.BYTE white_green
	.BYTE white_magenta
	.BYTE white_red
	.BYTE light_orange
	.BYTE light_rose
