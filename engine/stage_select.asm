_stage_select:
	LDA #$02
	STA z:z0C
	LDA #$20
	STA PPU_ADDRESS
	LDA #$00
	STA PPU_ADDRESS

@loop_3:
	LDA #$02
	STA z:z0D
	LDA #$20
	LDY #$0F

@loop_2:
	LDX #$40

@loop_1:
	STA PPU_DATA
	DEX
	BNE @loop_1
	DEY
	BNE @loop_2
	LDA #$00
	LDY #$01
	DEC z:z0D
	BNE @loop_2
	DEC z:z0C
	BNE @loop_3
	LDA #$27
	STA PPU_ADDRESS
	LDA #$D0
	STA PPU_ADDRESS
	LDA #$50
	LDX #$08

@loop_4:
	STA PPU_DATA
	DEX
	BNE @loop_4
	LDA #$55
	LDX #$08

@loop_5:
	STA PPU_DATA
	DEX
	BNE @loop_5
	LDA #$05
	LDX #$08

@loop_6:
	STA PPU_DATA
	DEX
	BNE @loop_6
	LDA #$00
	STA z:z0C
	STA z:z0D

@mainloop_1:
	ASL
	TAX
	LDA draw_stage_select_frame_coord_table, X
	STA z:z04
	LDA draw_stage_select_frame_coord_table + 1, X
	STA z:z05
	LDX z:z0C
	CPX #stage_wily1
	BNE @not_1_wily
	LDA #$00
	BEQ @is_wily

@not_1_wily:
	LDA z:zgot_weapon_flag
	AND regular_stage_clear_flags_table, X

@is_wily:
	STA z:z0E
	LDY #$00

@loop_8:
	LDA z:z05
	STA PPU_ADDRESS
	LDA z:z04
	STA PPU_ADDRESS
	LDX #$06

@loop_7:
	LDA z:z0C
	CMP #stage_gutsman
	BCS @le_gutsman
	LDA draw_regular_frame_tiles_table, Y
	BNE @continue_1

@le_gutsman:
	BNE @not_gutsman_1
	LDA draw_gutsman_frame_tiles_table, Y
	BNE @continue_1

@not_gutsman_1:
	LDA draw_dr_wily_frame_tiles_table, Y

@continue_1:
	CMP #$21
	BNE @continue_2
	LDA z:z0E
	BEQ @not_clear
	LDA #$00
	BEQ @clear

@not_clear:
	LDA #$21

@continue_2:
@clear:
	STA PPU_DATA
	INY
	DEX
	BNE @loop_7
	CLC
	LDA z:z04
	ADC #$20
	STA z:z04
	LDA z:z05
	ADC #$00
	STA z:z05
	CPY #$24
	BNE @loop_8
	STA PPU_ADDRESS
	LDA z:z04
	STA PPU_ADDRESS
	LDX z:z0D
	LDY #$07

@loop_9:
	LDA stage_select_string_table, X
	STA PPU_DATA
	INX
	DEY
	BNE @loop_9
	STX z:z0D
	LDX z:z0C
	LDA stage_select_regular_lo_attributes_table, X
	CLC
	ADC #$08
	LDX #$23
	STX PPU_ADDRESS
	STA PPU_ADDRESS
	LDA #topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2
	STA PPU_DATA
	LDA #topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0
	STA PPU_DATA
	INC z:z0C
	LDA z:zgot_weapon_flag
	AND #%01111110
	CMP #$7E
	BNE @not_all_clear_1
	LDA z:z0C
	CMP #$07
	BEQ @continue_3
	BNE @jmp_mainloop

@not_all_clear_1:
	LDA z:z0C
	CMP #$06
	BEQ @continue_3

@jmp_mainloop:
	JMP @mainloop_1

@continue_3:
	STX PPU_ADDRESS
	LDA #$CC
	STA PPU_ADDRESS
	STA PPU_DATA ;0, 3, 0, 3
	LDA #topleft_palette_3 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_0
	STA PPU_DATA
	LDA z:zgot_weapon_flag
	AND #%01111110
	CMP #$7E
	BEQ @all_clear
	LDY #$04
	LDX #$00

@loop_11:
	LDA stage_select_select_stage_string_table, X
	STA PPU_ADDRESS
	INX
	LDA stage_select_select_stage_string_table, X
	STA PPU_ADDRESS
	INX

@loop_10:
	LDA stage_select_select_stage_string_table, X
	STA PPU_DATA
	INX
	TXA
	AND #%00000111
	BNE @loop_10
	DEY
	BNE @loop_11

@all_clear:
	LDA #<stage_select_regular_palettes_table
	STA z:zpalette_update_address
	LDA #>stage_select_regular_palettes_table
	STA z:zpalette_update_address + 1
	LDA #$20
	JSR _palette_update_do
	LDA z:zgot_weapon_flag
	AND #stage_gutsman_clear
	BEQ @not_gutsman_2
	LDA #<stage_select_gutsman_palettes_table
	STA z:zpalette_update_address
	LDA #>stage_select_gutsman_palettes_table
	STA z:zpalette_update_address + 1
	LDA #$10
	JSR _palette_update_do

@not_gutsman_2:
	LDY #$00
	LDX #$40
	JSR _init_sprites
	LDX #$04
	LDA #$00
	STA z:zcurrent_stage

@loop_13:
	ASL
	ASL
	TAY
	STX z:z0C
	LDX #$00

@loop_12:
	LDA stage_select_objects_table, Y
	STA z:z0D, X
	INX
	INY
	CPX #$04
	BNE @loop_12
	LDX z:z0C
	JSR @boss_show_animation_regular_common
	INC z:zcurrent_stage
	LDA z:zcurrent_stage
	CMP #stage_wily1
	BNE @loop_13
	track_queue track_stage_select
	LDA #$00
	STA z:zscreen
	STA z:zscreen_xcoord
	LDA z:zppu_ctrl
	ORA #nmi_enable
	STA z:zppu_ctrl
	STA PPU_CTRL
	LDA #$00
	STA z:zcurrent_stage
	STA z:znmi_frame
	TAY

@loop_14:
	TYA
	ASL
	ASL
	TAX
	LDA #$23
	STA ascreen_ppu_attribute_address, X
	LDA stage_select_regular_attributes_table, Y
	STA ascreen_ppu_attribute_data, X
	INY
	CPY #$0A
	BNE @loop_14
	LDX #$00
	LDY #$00

@loop_15:
	LDA stage_select_dr_wily_lo_attributes_table, Y
	STA ascreen_ppu_attribute_address + $19, X
	INX
	INX
	INX
	INX
	INY
	CPY #$04
	BNE @loop_15
	LDA #topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1
	JSR @attributes

@mainloop_2:
	JSR _nmi_wait
	LDA z:zjoy1_pressed_bits
	AND #start_button | left_button | right_button
	BEQ @not_pressed
	AND #left_button | right_button
	BEQ @start
	LDX z:zcurrent_stage
	PHA
	LDA #topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0
	JSR @attributes
	LDA z:zcurrent_stage
	ASL
	TAY
	PLA

@left:
	ASL
	BCS @right
	INY
	BNE @left

@right:
	LDA z:zgot_weapon_flag
	AND #%01111110
	CMP #$7E
	BNE @not_all_clear_2
	CLC
	TYA
	ADC #$0C
	TAY

@not_all_clear_2:
	LDA stage_select_left_right_pressed_stage_table, Y
	STA z:zcurrent_stage
	LDA #$FF
	STA z:znmi_frame
	track_queue track_select
	BNE @mainloop_2

@not_pressed:
	LDY #$00
	LDA z:znmi_frame
	AND #%00001111
	BNE @skip_1
	LDA z:znmi_frame
	AND #%00010000
	BNE @update_palettes
	LDY #topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1

@update_palettes:
	TYA
	JSR @attributes

@skip_1:
	JMP @mainloop_2

@start:
	track_queue track_press_start
	track_queue track_boss_show
	INC z:zscreen
	LDY #$00
	STY z:ztimer
	LDA #$48
	STA z:zpalette_update_flag
	LDA #<boss_show_flash_alternative_palettes_table
	STA z:zpalette_update_alternative
	LDA #>boss_show_flash_alternative_palettes_table
	STA z:zpalette_update_alternative + 1
	LDA #<boss_show_flash_original_palettes_table
	STA z:zpalette_update_original
	LDA #>boss_show_flash_original_palettes_table
	STA z:zpalette_update_original + 1
	LDA #$10
	STA z:zpalette_update_type
	LDA z:zcurrent_stage
	ASL
	ASL
	TAX
	LDA boss_show_objects_speed_table, X
	STA aobject_ycoord_speed
	LDA boss_show_objects_speed_table + 1, X
	STA aobject_ycoord_speed_fraction
	LDA boss_show_objects_speed_table + 2, X
	STA aobject_xcoord + 1
	LDA boss_show_objects_speed_table + 3, X
	STA aobject_xcoord_fraction + 1
	LDA stage_select_objects_table + 1, X
	STA aobject_ycoord
	STY aobject_ycoord_fraction
	LDA stage_select_objects_table + 2, X
	STA aobject_xcoord
	STY aobject_xcoord_fraction
	LDA stage_select_objects_table + 3, X
	STA aobject_flag
	LDX z:zcurrent_stage
	LDA boss_show_objects_id_table, X
	STA aobject_pointer

@loop_16:
	LDA z:zcurrent_stage
	CMP #stage_gutsman
	BNE @not_gutsman_3
	LDA z:ztimer
	CMP #$08
	BCS @le_8frames
	LDY #$00
	JSR @boss_show_animation_no_coord_move
	JMP @continue_4

@le_8frames:
	LDA #$53
	STA aobject_pointer

@not_gutsman_3:
	JSR @boss_show_animation

@continue_4:
	JSR _nmi_wait
	INC z:ztimer
	LDA z:ztimer
	CMP #$40
	BNE @loop_16
	LDA #$03
	STA z:ztimer
	LDX z:zcurrent_stage
	LDA boss_show_landing_objects_id_table, X
	STA aobject_pointer
	LDA #objects_right
	STA aobject_flag

@nz_1:
	LDY #$00
	JSR @boss_show_animation_no_coord_move
	JSR _nmi_wait
	DEC z:ztimer
	BNE @nz_1
	LDA #$07
	STA aobject_ppu_address
	LDA #$B9
	STA z:ztiles_update_20size
	LDA #$F0
	STA aobject_ppu_address + 1
	STA z:zobject_pointer
	LDA #$00
	STA z:ztiles_address
	STA aobject_frameset_timer
	STA aobject_timer
	LDA #$78
	STA z:ztimer

@loop_17:
	LDA z:zcurrent_stage
	ASL
	TAX
	LDA stage_select_animation, X
	STA z:z04
	LDA stage_select_animation + 1, X
	STA z:z05
	LDA aobject_timer
	ASL
	TAY
	LDA (z04), Y
	CMP #$FF
	BNE @animated
	LDY #$00
	STY aobject_timer
	LDA (z04), Y

@animated:
	STA aobject_pointer
	INC aobject_frameset_timer
	LDA aobject_frameset_timer
	INY
	CMP (z04), Y
	BNE @ne
	LDA #$00
	STA aobject_frameset_timer
	INC aobject_timer

@ne:
	LDY #$00
	JSR @boss_show_animation_no_coord_move
	LDA z:zcurrent_stage
	CMP #stage_bombman
	BNE @not_bombman
	JSR @bombman
	JMP @continue_5

@not_bombman:
	CMP #stage_wily1
	BNE @continue_5
	JSR @boss_show_dr_wily_draw_tiles

@continue_5:
	JSR _nmi_wait
	DEC z:ztimer
	BNE @loop_17
	LDA #$25
	STA ascreen_ppu_attribute_address
	LDA #$90
	STA ascreen_ppu_attribute_address + 1
	LDA #$00
	STA ascreen_ppu_attribute_data
	LDA z:zcurrent_stage
	LDX #$07
	JSR @print_string
	LDA #$D0
	STA ascreen_ppu_attribute_address + 1
	LDA #$09
	LDX #$0C
	JSR @print_string
	LDX #$44
	LDY #$03
	LDA #$B0
	STA aobject_xcoord
	LDA #$80
	STA aobject_ycoord
	LDA #$F0
	STA z:z0D
	STA z:z0E
	STA z:z0F
	JSR @loop_20
	LDA z:znmi_frame
	AND #%00001111
	ADC #$28
	STA z:ztimer
	LDA #$FF
	STA aobject_frameset_timer

@loop_18:
	INC aobject_frameset_timer
	LDA aobject_frameset_timer
	CMP #$05
	BNE @n90thousand
	LDA #$FB
	BNE @add50thousand

@n90thousand:
	CMP #$06
	BNE @add50thousand
	LDA #$00
	STA aobject_frameset_timer

@add50thousand:
	CLC
	ADC #$F5
	STA z:z0D
	LDA #$F0
	LDY #$02
	JSR @print_thousand
	LDA #$F8
	STA aoam_y, X
	LDA z:znmi_frame
	AND #%00000011
	BNE @not_played
	track_queue track_points

@not_played:
	JSR _nmi_wait
	DEC z:ztimer
	BNE @loop_18
	LDA z:zcurrent_stage
	CMP #stage_wily1
	BNE @not_2_wily
	LDA #$0F
	STA aobject_frameset_timer
	LDA #$F0
	STA z:z0E
	LDA #$F2
	BNE @200thousand

@not_2_wily:
	LDA aobject_frameset_timer
	CMP #$05
	BNE @not100thousand
	LDA #$F1

@200thousand:
	STA z:z0D
	LDY #$03
	JSR @print_thousand

@not100thousand:
	CLC
	LDA aobject_frameset_timer
	ADC #$05
	ASL
	STA z:zclear_points
	ASL
	ASL
	ADC z:zclear_points
	STA z:zclear_points
	LDX #$48

@nz_2:
	JSR _nmi_wait
	DEX
	BNE @nz_2
	LDA z:zcurrent_stage
	CMP #stage_wily1
	BEQ @wily_animated

@init_stage_common:
	track_queue mute_sfx
	track_queue mute_music
	JSR _nmi_wait
	JSR _nmi_wait
	DEC z:zscreen
	LDA z:zppu_ctrl
	AND #~nmi_enable
	STA z:zppu_ctrl
	STA PPU_CTRL
	LDA z:zppu_mask
	AND #background_leftmost_enable | sprites_leftmost_enable
	STA z:zppu_mask
	STA PPU_MASK
	RTS

@wily_animated:
	LDA #$F8
	LDX #$1F

@init_loop:
	STA aobject_ycoord, X
	DEX
	BPL @init_loop
	LDA #<boss_show_dr_wily_palettes_table
	STA z:zpalette_update_alternative
	STA z:zpalette_update_original
	LDA #>boss_show_dr_wily_palettes_table
	STA z:zpalette_update_alternative + 1
	STA z:zpalette_update_original + 1
	LDA #$20
	STA z:zpalette_update_type
	LDA #$01
	STA z:zpalette_update_flag
	LDA #$73
	STA aobject_pointer + 2
	LDA #$60
	STA aobject_xcoord + 2
	LDA #$74
	STA aobject_ycoord + 2
	LDA #$00
	STA aobject_flag + 2
	STA aobject_frameset_timer + 2
	STA aobject_timer + 2
	STA aobject_frozen_timer + 2
	LDA #$60
	STA z:ztimer

@nz_3:
	JSR @draw_ufo_dr_wily_objects
	JSR _nmi_wait
	DEC z:ztimer
	BNE @nz_3
	LDA #$00
	STA aobject_frameset_timer + 2
	STA aobject_frameset_timer
	STA aobject_frameset_timer + 1
	STA aobject_timer
	STA aobject_timer + 1
	STA aobject_frozen_timer
	STA aobject_frozen_timer + 1
	STA aobject_frozen_timer + 2
	STA aobject_flag
	STA aobject_flag
	STA aobject_xcoord_fraction
	STA aobject_ycoord_fraction
	LDA #$71
	STA aobject_pointer + 2
	LDA #$E4
	STA aobject_xcoord
	LDA #$48
	STA aobject_ycoord
	LDA #$74
	STA aobject_pointer
	LDA #$75
	STA aobject_pointer + 1
	track_queue track_wily_ufo

@ufo_picking_dr_wily:
	LDA #$60
	STA z:z04
	LDA #$01
	STA z:z05
	LDA #$00
	STA z:z06
	STA z:z07
	JSR @ufo_not_leaving_animation
	LDA aobject_xcoord
	CMP #$5F
	BCC @ufo_picking_dr_wily
	CMP #$61
	BCS @ufo_picking_dr_wily

@ufo_landing:
	LDA #$00
	STA z:z04
	STA z:z05
	STA z:z07
	LDA #$80
	STA z:z06
	JSR @ufo_not_leaving_animation
	LDA aobject_ycoord
	CMP #$6C
	BCC @ufo_landing
	LDA #$00
	STA aobject_frameset_timer + 1
	LDA #$76
	STA aobject_pointer + 1
	LDA #objects_right
	STA aobject_flag + 2

@ufo_prepare_leave:
	SEC
	LDA aobject_ycoord_fraction
	SBC #$80
	STA aobject_ycoord_fraction
	LDA aobject_ycoord
	SBC #$00
	STA aobject_ycoord
	JSR @draw_ufo_dr_wily_objects
	JSR _nmi_wait
	LDA aobject_ycoord
	CMP #$50
	BCS @ufo_prepare_leave
	LDA #$40
	STA z:ztimer

@nz_4:
	LDA z:ztimer
	AND #%00000111
	BNE @skip_2
	LDA z:ztimer
	AND #%00001000
	BNE @up
	LDA #$FC
	BNE @down

@up:
	LDA #$02

@down:
	CLC
	ADC aobject_ycoord + 2
	STA aobject_ycoord + 2

@skip_2:
	JSR @draw_ufo_dr_wily_objects
	JSR _nmi_wait
	DEC z:ztimer
	BNE @nz_4
	LDA #$70
	STA aobject_ycoord + 2
	LDA #$72
	STA aobject_pointer + 2
	LDA #$20
	STA z:ztimer

@nz_5:
	JSR @draw_ufo_dr_wily_objects
	JSR _nmi_wait
	DEC z:ztimer
	BNE @nz_5

@ufo_prepare_go:
	CLC
	LDA aobject_ycoord_fraction
	ADC #$80
	STA aobject_ycoord_fraction
	LDA aobject_ycoord
	ADC #$00
	STA aobject_ycoord
	JSR @draw_ufo_dr_wily_objects
	JSR _nmi_wait
	LDA aobject_ycoord
	CMP #$6C
	BCC @ufo_prepare_go
	LDA #$F8
	STA aobject_ycoord + 2
	LDA #$75
	STA aobject_pointer + 1

@ufo_leave:
	LDA #$00
	STA z:z04
	STA z:z05
	LDA #$FF
	STA z:z07
	LDA #$80
	STA z:z06
	JSR @ufo_not_leaving_animation
	LDA aobject_ycoord
	CMP #$48
	BCS @ufo_leave

@animated_done:
	LDA #$60
	STA z:z04
	LDA #$01
	STA z:z05
	LDA #$00
	STA z:z06
	STA z:z07
	JSR @ufo_leaving_animation
	LDA aobject_xcoord
	CMP #$1B
	BCC @animated_done
	CMP #$1D
	BCS @animated_done
	JMP @init_stage_common

@attributes:
	STA z:z0C
	LDX z:zcurrent_stage
	LDA stage_select_regular_lo_attributes_table, X
	STA z:z0D
	LDY #$00

@loop_19:
	TYA
	ASL
	ASL
	TAX
	CLC
	LDA z:z0D
	ADC stage_select_regular_lo_add_attributes_table, Y
	STA ascreen_ppu_attribute_address + 1, X
	LDA ascreen_ppu_attribute_data, X
	EOR #%11111111
	AND z:z0C
	STA ascreen_ppu_attribute_data + 1, X
	INY
	CPY #$06
	BNE @loop_19
	LDA z:z0C
	STA ascreen_ppu_attribute_data + $19
	STA ascreen_ppu_attribute_data + $1D
	AND #topleft_palette_3 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_0
	STA ascreen_ppu_attribute_data + $21
	STA ascreen_ppu_attribute_data + $25
	LDA z:zgot_weapon_flag
	AND #%01111110
	CMP #$7E
	BNE @not_all_clear_3
	LDA #$86
	BNE @continue_6

@not_all_clear_3:
	LDA #$8A

@continue_6:
	STA z:zscreen_update_flag
	RTS

@print_string:
	STA aobject_flag
	STX aobject_frameset_timer
	LDY #$00

@print_done:
	DEC aobject_frameset_timer
	BMI @done_1
	LDA #$05
	STA z:ztimer
	LDA aobject_flag
	ASL
	TAX
	LDA stage_select_string, X
	STA z:z04
	LDA stage_select_string + 1, X
	STA z:z05
	LDA (z04), Y
	STA ascreen_ppu_attribute_data + 1
	LDA #$81
	STA z:zscreen_update_flag
	INC ascreen_ppu_attribute_address + 1
	INY

@nz_6:
	JSR _nmi_wait
	DEC z:ztimer
	BEQ @print_done
	BNE @nz_6

@done_1:
	RTS

@print_thousand:
	LDX #$50
	LDA #$98
	STA aobject_xcoord

@loop_20:
	LDA aobject_ycoord
	STA aoam_y, X
	LDA aobject_xcoord
	STA aoam_x, X
	SEC
	SBC #$08
	STA aobject_xcoord
	LDA a:z0C, Y
	STA aoam_tiles, X
	LDA #$01
	STA aoam_attributes, X
	INX
	INX
	INX
	INX
	DEY
	BNE @loop_20
	RTS

@bombman:
	DEC z:zcurrent_stage
	DEC z:zcurrent_stage
	LDA z:ztimer
	CMP #$48
	BEQ @throw_bomb
	BCS @regular
	CMP #$28
	BCC @regular
	BCS @throw_bomb_common

@regular:
	LDA #$56
	STA z:z0D
	LDA #$67
	STA z:z0E
	LDA #$68
	STA z:z0F
	STA aobject_xcoord + 2
	LDA #$40
	STA z:z10
	JSR @boss_show_animation_regular_common
	JMP @done_2

@throw_bomb:
	LDA #$56
	STA aobject_pointer + 2
	LDA #$00
	STA aobject_ycoord_fraction + 2
	LDA #$64
	STA aobject_ycoord + 2
	LDA #$02
	STA aobject_ycoord_speed + 2
	LDA #$00
	STA aobject_ycoord_speed_fraction + 2
	LDA #objects_right
	STA aobject_flag + 2

@throw_bomb_common:
	LDY #$02
	JSR @boss_show_animation_ycoord_only

@done_2:
	INC z:zcurrent_stage
	INC z:zcurrent_stage
	RTS

@boss_show_animation:
	LDY #$00
	CLC
	LDA aobject_xcoord_fraction
	ADC aobject_xcoord_fraction + 1
	STA aobject_xcoord_fraction
	LDA aobject_xcoord
	ADC aobject_xcoord + 1
	STA aobject_xcoord

@boss_show_animation_ycoord_only:
	SEC
	LDA aobject_ycoord_fraction, Y
	SBC aobject_ycoord_speed_fraction, Y
	STA aobject_ycoord_fraction, Y
	LDA aobject_ycoord, Y
	SBC aobject_ycoord_speed, Y
	STA aobject_ycoord, Y
	SEC
	LDA aobject_ycoord_speed_fraction, Y
	SBC #$20
	STA aobject_ycoord_speed_fraction, Y
	LDA aobject_ycoord_speed, Y
	SBC #$00
	STA aobject_ycoord_speed, Y

@boss_show_animation_no_coord_move:
	LDA aobject_pointer, Y
	STA z:z0D
	LDA aobject_ycoord, Y
	STA z:z0E
	LDA aobject_xcoord, Y
	STA z:z0F
	LDA aobject_flag, Y
	STA z:z10
	CPY #$00
	BNE @boss_show_animation_regular_common
	LDY #$00
	LDX #$40
	JSR _init_sprites
	LDX #$00

@boss_show_animation_regular_common:
	LDA z:z0D
	ASL
	ROL z:z12
	TAY
	LDA #$00
	STA z:z11
	LDA z:z12
	AND #%00000001
	ORA #$80
	STA z:z12
	LDA (z11), Y
	STA z:z04
	INY
	LDA (z11), Y
	STA z:z05
	LDY #$00
	STY z:z12
	LDA (z04), Y
	STA z:z11
	INY
	LDA (z04), Y
	ASL
	TAY
	LDA oamcoord_index_pointers, Y
	STA z:z06
	LDA oamcoord_index_pointers + 1, Y
	STA z:z07
	LDY #$02
	STY z:z0C

@loop_21:
	LDY z:z0C
	LDA (z04), Y
	CLC
	LDY z:zcurrent_stage
	ADC boss_show_objects_tiles_add_table, Y
	STA aoam_tiles, X
	LDY z:z0C
	INY
	LDA z:z10
	AND #objects_right
	EOR (z04), Y
	INY
	STY z:z0C
	STA aoam_attributes, X
	AND #oam_palette_3
	CMP #oam_palette_2
	BNE @not_oam_palette_2
	LDA aoam_attributes, X
	AND #~oam_palette_3
	LDY z:zcurrent_stage
	ORA boss_show_oam_palette_table, Y
	STA aoam_attributes, X

@not_oam_palette_2:
	LDY z:z12
	LDA ($06), Y
	TAY
	CLC
	LDA z:z0E
	ADC oam_ycoord, Y
	STA aoam_y, X
	CLC
	LDA z:z10
	BNE @nz_7
	LDA oam_xleftcoord, Y
	BCC @continue_7

@nz_7:
	LDA oam_xrightcoord, Y

@continue_7:
	ADC z:z0F
	STA aoam_x, X
	INX
	INX
	INX
	INX
	CPX #$FC
	BEQ @done_3
	DEC z:z11
	BEQ @done_3
	INC z:z12
	JMP @loop_21

@done_3:
	RTS

@boss_show_dr_wily_draw_tiles:
	LDA z:ztiles_address
	CMP #$30
	BEQ @done_4
	CLC
	LDA z:zobject_pointer
	ADC #$10
	STA z:zobject_pointer
	STA z:z06
	LDA z:ztiles_update_20size
	ADC #$00
	STA z:ztiles_update_20size
	STA z:z07
	CLC
	LDA aobject_ppu_address + 1
	ADC #$10
	STA aobject_ppu_address + 1
	LDA aobject_ppu_address
	ADC #$00
	STA aobject_ppu_address
	LDY #$00
	LDA #$02
	JSR _object_tiles_prewrite
	LDA #$10
	STA z:zobject_tiles_update_size
	INC z:ztiles_address

@done_4:
	RTS

@draw_ufo_dr_wily_objects:
	LDY #$00
	STY z:z0D
	LDX #$40
	JSR _init_sprites
	LDA #$00
	STA z:z0C

@loop_22:
	JSR _draw_object
	INC z:z0C
	LDA #$03
	CMP z:z0C
	BNE @loop_22
	RTS

@ufo_not_leaving_animation:
	JSR @ufo_move_coord
	LDX #$6C

@loop_23:
	LDA aoam_x, X
	CMP #$C8
	BCC @not_hidden_1
	LDA #$F8
	STA aoam_y, X

@not_hidden_1:
	DEX
	DEX
	DEX
	DEX
	BPL @loop_23
	JSR _nmi_wait
	RTS

@ufo_leaving_animation:
	JSR @ufo_move_coord
	LDX #$6C

@loop_24:
	LDA aoam_x, X
	CMP #$38
	BCS @not_hidden_2
	LDA #$F8
	STA aoam_y, X

@not_hidden_2:
	DEX
	DEX
	DEX
	DEX
	BPL @loop_24
	JSR _nmi_wait
	RTS

@ufo_move_coord:
	CLC
	LDA aobject_xcoord_fraction
	ADC z:z04
	STA aobject_xcoord_fraction
	STA aobject_xcoord_fraction + 1
	LDA aobject_xcoord
	ADC z:z05
	STA aobject_xcoord
	STA aobject_xcoord + 1
	CLC
	LDA aobject_ycoord_fraction
	ADC z:z06
	STA aobject_ycoord_fraction
	STA aobject_ycoord_fraction + 1
	LDA aobject_ycoord
	ADC z:z07
	STA aobject_ycoord
	CLC
	ADC #$10
	STA aobject_ycoord + 1
	JSR @draw_ufo_dr_wily_objects
	RTS

.INCLUDE "data/stage_select/palettes.asm"
.INCLUDE "data/stage_select/frame.asm"
.INCLUDE "data/stage_select/objects.asm"
.INCLUDE "data/stage_select/string.asm"

regular_stage_clear_flags_table:
	.BYTE stage_cutman_clear
	.BYTE stage_iceman_clear
	.BYTE stage_bombman_clear
	.BYTE stage_fireman_clear
	.BYTE stage_elecman_clear
	.BYTE stage_gutsman_clear
