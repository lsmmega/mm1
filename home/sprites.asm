_sprites:
	zbankswitch $06
	LDY #$00
	STY z:z0D
	LDX #$40
	JSR _init_sprites
	LDA z:znmi_frame
	AND #%00000001
	BEQ @invert
	JSR _draw_score_bar
	LDA #$00
	STA z:z0C

@loop_1:
	JSR _draw_object
	INC z:z0C
	LDA z:zsprites_pointer
	CMP z:z0C
	BNE @loop_1
	JMP _bankswitch_05

@invert:
	LDX z:zsprites_pointer
	DEX
	STX z:z0C

@loop_2:
	JSR _draw_object
	DEC z:z0C
	BPL @loop_2
	JSR _draw_score_bar
	JMP _bankswitch_05

_draw_object:
	LDX z:z0C
	LDA aobject_ycoord, X
	CMP #$F8
	BNE @not_hidden
	RTS

@not_hidden:
	STA z:z10
	LDA aobject_pointer, X
	CMP #$FF
	BNE @not_enemies
	JMP @is_enemies

@not_enemies:
	LDA aobject_timer, X
	LSR
	LSR
	LSR
	LSR
	CLC
	ADC aobject_pointer, X
	ASL
	TAY
	LDA #>oam_frameset_pointers
	ADC #$00
	STA z:z05
	LDA #<oam_frameset_pointers
	STA z:z04
	LDA (z04), Y
	STA z:z00
	INY
	LDA (z04), Y
	STA z:z01
	LDA aobject_frameset_timer, X
	LSR
	LSR
	LSR
	LSR
	TAY
	INY
	CPX #1
	BNE @not_boss
	LDA zboss_invincibility_time
	BEQ @invincibility_object_hidden
	DEC zboss_invincibility_time
	AND #%00000010
	BEQ @invincibility_object_hidden
	LDA z:zcurrent_stage
	CMP #stage_gutsman
	BEQ @is_gutsman
	LDA #$1A
	BNE @invincibility_object_set

@is_gutsman:
	LDA #$75
	BNE @invincibility_object_set

@not_boss:
@invincibility_object_hidden:
	LDA (z00), Y

@invincibility_object_set:
	PHA
	LDA aobject_frozen_timer, X
	BEQ @not_frozen_1
	JMP @is_frozen_1

@not_frozen_1:
	LDA aobject_timer, X
	BEQ @timer_is_not_set
	AND #%00001111
	TAY
	DEY
	BEQ @is_zero
	DEC aobject_timer, X
	BNE @timer_is_not_zero

@is_zero:
	LDA #0
	STA aobject_timer, X

@timer_is_not_set:
@timer_is_not_zero:
	JSR _object_frameset_timer

@is_frozen_1:
	LDA #$00
	STA z:z05
	PLA
	ASL
	ROL z:z05
	TAY
	LDA #>oam_sprites_pointers
	ORA z:z05
	STA z:z05
	LDA #<oam_sprites_pointers
	STA z:z04
	LDA (z04), Y
	STA z:z00
	INY
	LDA (z04), Y
	STA z:z01

@oam_sprites_common:
	LDY #$00
	STY z:z12
	LDA (z00), Y
	STA z:z0E
	INY
	LDA (z00), Y
	ASL
	TAY
	LDA oamcoord_index_pointers, Y
	STA z:z02
	LDA oamcoord_index_pointers + 1, Y
	STA z:z03
	LDY #$02
	SEC
	LDA aobject_xcoord, X
	SBC z:zscreen_xcoord
	STA z:z0F
	LDA aobject_flag, X
	AND #objects_right
	STA z:z11
	JSR _oam_priority_set
	LDX z:z0D
	LDA z:z0C
	BNE @draw_sprites
	LDA z:zmegaman_invincibility_time
	AND #%00000010
	BEQ @draw_sprites
	JMP @skip

@draw_sprites:
@loop:
	LDA (z00), Y
	STA aoam_tiles, X
	INY
	LDA (z00), Y
	EOR z:z11
	ORA z:z13
	STA aoam_attributes, X
	INY
	STY z:z0D
	LDY z:z12
	LDA (z02), Y
	TAY
	CLC
	LDA oam_ycoord, Y
	BMI @ycoord_negative
	ADC z:z10
	BCC @object_ycoord_done
	BCS @object_hidden

@ycoord_negative:
	ADC z:z10
	BCS @object_ycoord_done

@object_hidden:
	LDA #$F8
	STA aoam_y, X
	LDY z:z0D
	JMP @next

@object_ycoord_done:
	STA aoam_y, X
	LDA z:z11
	BEQ @object_is_left
	LDA oam_xrightcoord, Y
	JMP @calc_xcoord

@object_is_left:
	LDA oam_xleftcoord, Y

@calc_xcoord:
	CLC
	BMI @xcoord_negative
	ADC z:z0F
	BCC @object_xcoord_done
	BCS @object_hidden

@xcoord_negative:
	ADC z:z0F
	BCC @object_hidden

@object_xcoord_done:
	STA aoam_x, X
	LDY z:z0D
	INX
	INX
	INX
	INX
	CPX #$FC
	BEQ @max

@next:
	INC z:z12
	DEC z:z0E
	BNE @loop

@skip:
	STX z:z0D
	RTS

@max:
	PLA
	PLA
	JMP _bankswitch_05

@is_enemies:
	LDA aobject_flag, X
	AND #objects_invisible
	BEQ @objects_not_invisible
	RTS

@objects_not_invisible:
	LDA aobject_id, X
	ASL
	TAY
	LDA oam_enemies_frameset_pointers, Y
	STA z:z00
	LDA oam_enemies_frameset_pointers + 1, Y
	STA z:z01
	LDA aobject_frameset_timer, X
	LSR
	LSR
	LSR
	LSR
	TAY
	INY
	LDA (z00), Y
	PHA
	LDA aobject_frozen_timer, X
	BEQ @not_frozen_2
	JMP @is_frozen_2

@not_frozen_2:
	JSR _object_frameset_timer

@is_frozen_2:
	PLA
	ASL
	TAY
	BCS @msb_set
	LDA oam_enemies_sprites_lsb_pointers, Y
	STA z:z00
	LDA oam_enemies_sprites_lsb_pointers + 1, Y
	STA z:z01
	JMP @oam_sprites_common

@msb_set:
	LDA oam_enemies_sprites_msb_pointers, Y
	STA z:z00
	LDA oam_enemies_sprites_msb_pointers + 1, Y
	STA z:z01
	JMP @oam_sprites_common

_object_frameset_timer:
	LDY #$00
	LDA (z00), Y
	PHA
	AND #%00001111
	STA z:z0F
	PLA
	AND #%11110000
	STA z:z11
	LDA aobject_frameset_timer, X
	AND #%00001111
	CMP z:z0F
	BCS @next
	INC aobject_frameset_timer, X
	BNE @done

@next:
	LDA aobject_frameset_timer, X
	AND #%11110000
	CMP z:z11
	BCS @max
	CLC
	ADC #$10
	BNE @upper_done

@max:
	LDA #$00

@upper_done:
	STA aobject_frameset_timer, X

@done:
	RTS

_oam_priority_set:
	LDA z:zcurrent_stage
	CMP #stage_fireman
	BEQ @is_fireman
	CMP #stage_wily2
	BEQ @is_wily2

@set_oam_priority_foreground:
	LDA #oam_priority_foreground
	STA z:z13
	RTS

@is_fireman:
	LDA aobject_screen, X
	CMP #$08
	BCC @set_oam_priority_foreground
	CMP #$0A
	BCS @set_oam_priority_foreground
	LDA aobject_ycoord, X
	CMP #$69
	BCS @set_oam_priority_foreground
	CMP #$4C
	BCC @set_oam_priority_foreground
	BCS @set_oam_priority_background

@is_wily2:
	LDA aobject_screen, X
	CMP #$1B
	BEQ @yes
	CMP #$1C
	BEQ @yes
	CMP #$1F
	BEQ @yes
	CMP #$20
	BNE @set_oam_priority_foreground

@yes:
	LDA aobject_ycoord, X
	CMP #$B9
	BCC @set_oam_priority_foreground

@set_oam_priority_background:
	LDA #oam_priority_background
	STA z:z13
	RTS

	score_ycoord              = $10
	score_xcoord              = $68
	score_0_tile              = $F0
	hp_bar_ycoord             = $48
	hp_bar_xcoord             = $18
	weapon_bar_ycoord         = $48
	weapon_bar_xcoord         = $10
	boss_bar_ycoord           = $48
	boss_bar_xcoord           = $28
	upper_vertical_bar_4_tile = $DB
	upper_vertical_bar_0_tile = $DF
	lower_vertical_bar_4_tile = $FA
	lower_vertical_bar_0_tile = $FE

_draw_score_bar:
	LDY z:z0D
	LDA z:zstage_clear_flag
	BMI @skip
	LDA #score_xcoord
	STA z:z0C
	LDX #6
	LDA #oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	STA z:z12

@loop:
	LDA #score_ycoord
	STA z:z0E
	LDA z:zscore, X
	ORA #score_0_tile
	STA z:z0F
	JSR _draw_score_bar_tile
	CLC
	LDA z:z0C
	ADC #8
	STA z:z0C
	DEX
	BPL @loop
	LDA z:zstage_clear_flag
	BNE @skip
	LDA #lower_vertical_bar_0_tile
	STA z:z05
	LDA #lower_vertical_bar_4_tile
	STA z:z04
	LDA #oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	STA z:z12
	LDA #hp_bar_xcoord
	STA z:z0C
	LDA #hp_bar_ycoord
	STA z:z0E
	LDA z:zmegaman_hp
	JSR _calc_vertical_bar
	LDA #oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	STA z:z12
	LDA #weapon_bar_xcoord
	STA z:z0C
	LDX z:zcurrent_weapon
	BEQ @buster
	LDA #weapon_bar_ycoord
	BNE @not_buster

@buster:
	LDA #$F8

@not_buster:
	STA z:z0E
	LDA #upper_vertical_bar_0_tile
	STA z:z05
	LDA #upper_vertical_bar_4_tile
	STA z:z04
	LDA zrolling_cutter - 1, X
	JSR _calc_vertical_bar
	LDA z:zboss_ai_pointer
	BEQ @skip
	LDA #oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	STA z:z12
	LDA #boss_bar_xcoord
	STA z:z0C
	LDA #boss_bar_ycoord
	STA z:z0E
	LDA aobject_hp + 1
	JSR _calc_vertical_bar

@skip:
	STY z:z0D
	RTS

_calc_vertical_bar:
	PHA
	LSR
	LSR
	STA z:z10
	PLA
	AND #%00000011
	STA z:z11
	SEC
	LDA z:z05
	SBC z:z11
	STA z:z11
	LDX #0

@loop:
	CPX z:z10
	BCS @zero_div4
	LDA z:z04
	BNE @copy_bar_tile

@zero_div4:
	BNE @copy_zero_bar_tile
	LDA z:z11
	BNE @copy_bar_tile

@copy_zero_bar_tile:
	LDA z:z05

@copy_bar_tile:
	STA z:z0F
	JSR _draw_score_bar_tile
	INX
	CPX #7
	BNE @loop
	RTS

_draw_score_bar_tile:
	LDA z:z0C
	STA aoam_x, Y
	LDA z:z0F
	STA aoam_tiles, Y
	LDA z:z12
	STA aoam_attributes, Y
	LDA z:z0E
	STA aoam_y, Y
	CPY #$F8
	BEQ @max
	INY
	INY
	INY
	INY
	CMP #$F8
	BEQ @max
	SEC
	SBC #8
	STA z:z0E

@max:
	RTS
