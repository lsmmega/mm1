_ending:
	LDA #$F8
	STA aobject_ycoord
	LDA #$00
	STA aobject_frozen_timer
	STA z:zending_frame
	STA z:zending_timer
	STA z:zending_update_object_palette_index
	LDA #$14
	STA z:zscreen_end_of_left
	LDA #$1E
	STA z:zscreen_enf_of_right
	LDA #$30
	STA z:z0C
	LDX #$04

@loop_black_edge:
	JSR _ending_generate_object
	LDA #$8B
	STA aobject_pointer, X
	LDA #$00
	STA aobject_flag, X
	LDA #$77
	STA aobject_ycoord, X
	LDA z:z0C
	STA aobject_xcoord, X
	ADC #$40
	STA z:z0C
	DEX
	BNE @loop_black_edge

@string_hidden_loop:
	JSR _ending_objects_no_xcoord_move
	LDA z:zending_timer
	CMP #$01
	BNE @string_hidden_loop
	LDA #$03
	STA z:ztimer
	LDA #$00
	STA z:zending_timer
	STA z:ztiles_address
	LDA #<ending_string_table
	STA z:zending_pointer
	LDA #>ending_string_table
	STA z:zending_pointer + 1

@string_mainloop:
	LDY z:ztiles_address
	LDA (zending_pointer), Y
	STA z:zending_string_total_lines
	INY
	BNE @print_string_loop
	INC z:zending_pointer + 1

@print_string_loop:
	JSR @print_string
	JSR _ending_objects_no_xcoord_move
	LDY z:ztiles_address
	DEC z:zending_string_total_lines
	BNE @print_string_loop
	LDA #$02
	STA z:zending_string_total_lines

@string_palettes_loop:
	LDA z:znmi_frame
	AND #%00000111
	BNE @8frames_1
	LDX z:zending_string_total_lines
	LDA @string_palettes_table, X
	STA abackground_palette_original + 1
	JSR _update_background_palette
	DEC z:zending_string_total_lines
	BMI @print_all_strings

@8frames_1:
	JSR _ending_objects_no_xcoord_move
	JMP @string_palettes_loop

@string_palettes_table:
	.BYTE white_azure, light_azure, dark_azure, black

@print_all_strings:
	JSR _ending_objects_no_xcoord_move
	LDA z:zending_timer
	CMP #$08
	BNE @print_all_strings
	LDA #$00
	STA z:zending_timer
	STA z:zending_frame
	LDA #$00
	STA z:zending_string_total_lines

@disappear_all_strings:
	LDA z:znmi_frame
	AND #%00000111
	BNE @8frames_2
	INC z:zending_string_total_lines
	LDX z:zending_string_total_lines
	LDA @string_palettes_table, X
	STA abackground_palette_original + 1
	JSR _update_background_palette
	CPX #$03
	BEQ @disappear_all_strings_done

@8frames_2:
	JSR _ending_objects_no_xcoord_move
	JMP @disappear_all_strings

@disappear_all_strings_done:
	LDA #$05
	STA z:zending_string_total_lines
	LDA #$22
	STA aobject_ppu_address
	LDA #$42
	STA aobject_ppu_address + 1

@clear_string_mainloop:
	LDX #$1C
	STX z:zobject_tiles_update_size
	LDA #$04

@clear_string_loop:
	STA aobject_ppu_address + 1, X
	DEX
	BNE @clear_string_loop
	JSR _ending_objects_no_xcoord_move
	CLC
	LDA aobject_ppu_address + 1
	ADC #$40
	STA aobject_ppu_address + 1
	LDA aobject_ppu_address
	ADC #$00
	STA aobject_ppu_address
	DEC z:zending_string_total_lines
	BNE @clear_string_mainloop
	DEC z:ztimer
	BEQ @print_strings_with_lines_done
	JMP @string_mainloop

@print_strings_with_lines_done:
	LDA z:ztiles_address
	PHA
	LDA #$04
	STA aobject_ycoord
	JSR _got_megaman_ending_landing_ycoord
	PLA
	STA z:ztiles_address
	INC z:zending_screen_flag

@teleport:
	JSR _ending_objects_no_xcoord_move
	LDA aobject_frameset_timer
	BNE @teleport
	STA aobject_flag
	LDA #$06
	STA aobject_pointer
	LDA #$21
	STA abackground_palette_original + 1
	JSR _update_background_palette
	LDA #$FE
	STA z:ztimer

@ending_mainloop:
	LDX #$04

@black_edge_move_loop:
	LDA aobject_xcoord_fraction, X
	ADC #$B0
	STA aobject_xcoord_fraction, X
	LDA aobject_xcoord, X
	ADC #$00
	STA aobject_xcoord, X
	DEX
	BNE @black_edge_move_loop
	LDA aobject_ycoord + 5
	CMP #$F8
	BEQ @objects_move_common
	JMP @sunset_move

@objects_move_common:
	LDX z:zending_update_object_palette_index
	LDA ending_objects_and_palettes_set_table, X
	PHA
	AND #%00001111
	ORA #%00010000
	STA z:z05
	PLA
	AND #%11110000
	STA z:z04
	SEC
	LDA z:zscreen_xcoord
	SBC z:z04
	STA z:z0C
	LDA z:zscreen
	SBC z:z05
	BCC @arrived
	BNE @check_spawn
	LDA z:z0C
	BNE @check_spawn

@arrived:
	INX
	LDA ending_objects_and_palettes_set_table, X
	CMP #$FC
	BCC @set_palettes
	JMP @set_objects

@set_palettes:
	STA z:z0C
	INX
	LDY ending_objects_and_palettes_set_table, X
	INX

@set_palettes_loop:
	LDA ending_objects_and_palettes_set_table, X
	STA abackground_palette_original, Y
	INX
	INY
	DEC z:z0C
	BNE @set_palettes_loop
	LDA ending_objects_and_palettes_set_table, X
	STA aobject_palette
	INX
	STX z:zending_update_object_palette_index
	JSR _update_background_palette
	LDA #$20
	STA z:zpalette_update_type

@check_spawn:
	LDA z:zending_spawn_tiles
	BEQ @no_tiles_spawn_or_in_process
	LDA z:zspawn_tiles_index
	STA z:z01
	JSR _spawn_tiles
	LDA z:zspawn_tiles_size
	BNE @no_tiles_spawn_or_in_process
	INC z:zspawn_tiles_index
	INC z:zspawn_tiles_index
	DEC z:zending_spawn_tiles

@no_tiles_spawn_or_in_process:
	LDA #$00
	STA z:zobject_ram_index
	STA aobject_xcoord_speed
	LDA #$B0
	STA aobject_xcoord_speed_fraction
	JSR _ending_objects_xcoord_move
	LDA z:zscreen_xcoord
	BEQ @on_middle
	CMP z:ztimer
	BNE @not_middle
	JSR @print_next_string_on_middle

@not_middle:
	JMP @ending_mainloop

@on_middle:
	LDA z:zscreen
	CMP #$14
	BEQ @is_14
	JMP @ending_mainloop

@is_14:
	LDA #$91
	STA aobject_pointer
	LDA #$04
	STA aobject_ycoord_speed
	LDA #$DF
	STA aobject_ycoord_speed_fraction
	LDA #$00
	STA aobject_frameset_timer

@megaman_jumping:
	SEC
	LDA aobject_ycoord_fraction
	SBC aobject_ycoord_speed_fraction
	STA aobject_ycoord_fraction
	LDA aobject_ycoord
	SBC aobject_ycoord_speed
	STA aobject_ycoord
	SEC
	LDA aobject_ycoord_speed_fraction
	SBC #$40
	STA aobject_ycoord_speed_fraction
	LDA aobject_ycoord_speed
	SBC #$00
	STA aobject_ycoord_speed
	BMI @megaman_jumping_done
	JSR _ending_objects_no_xcoord_move
	JMP @megaman_jumping

@megaman_jumping_done:
	INC aobject_frozen_timer + 17
	LDA #$02
	STA z:ztiles_address
	LDX #$00

@print_last_ending_string_mainloop:
	LDA ending_string_21, X
	STA z:zending_pointer + 1
	INX
	LDA ending_string_21, X
	STA aobject_ppu_address
	INX
	LDA ending_string_21, X
	STA aobject_ppu_address + 1
	INX

@print_last_ending_string:
	LDA ending_string_21, X
	STA aobject_ppu_data
	INC z:zobject_tiles_update_size
	INX
	STX z:zending_pointer

@8frames_3:
	JSR _ending_objects_no_xcoord_move
	LDA z:znmi_frame
	AND #%00000111
	BNE @8frames_3
	INC aobject_ppu_address + 1
	LDX z:zending_pointer
	DEC z:zending_pointer + 1
	BNE @print_last_ending_string
	DEC z:ztiles_address
	BNE @print_last_ending_string_mainloop

@not_pressed:
	JSR _ending_objects_no_xcoord_move
	LDA z:zjoy1_pressed
	AND #start_button
	BEQ @not_pressed
	LDX #$00
	STX z:zending_screen_flag
	INX
	STX z:zstage_clear_flag
	JMP _ending_to_stage_select

@set_objects:
	INX
	STX z:zending_update_object_palette_index
	CMP #$FE
	BEQ @roll
	CMP #$FD
	BEQ @dr_light
	BCS @sunset
	LDA #$0E
	STA z:zspawn_tiles_index
	LDA #$03
	STA z:zending_spawn_tiles
	JMP @check_spawn

@sunset:
	LDA #$10
	STA z:z0C
	LDY #$8C
	LDX #$05

@sunset_loop:
	TYA
	STA aobject_pointer, X
	LDA #$80
	STA aobject_xcoord, X
	LDA z:z0C
	STA aobject_ycoord, X
	CLC
	ADC #$10
	STA z:z0C
	LDA #$00
	STA aobject_flag, X
	STA aobject_ycoord_fraction, X
	STA aobject_xcoord_fraction, X
	INY
	INX
	CPX #$08
	BNE @sunset_loop
	BEQ @sunset_done

@roll:
	LDX #$10
	LDA #$8F
	BNE @create_object

@dr_light:
	LDX #$11
	LDA #$90

@create_object:
	STA aobject_pointer, X
	LDA z:zscreen_xcoord
	STA aobject_xcoord, X
	LDA #$64
	STA aobject_ycoord, X
	LDA #objects_right
	STA aobject_flag, X
	LDA #$00
	STA aobject_frameset_timer, X
	STA aobject_timer, X
	STA aobject_frozen_timer, X

@sunset_done:
	JMP @check_spawn

@sunset_move:
	LDX #$05

@sunset_move_loop:
	LDA aobject_ycoord, X
	CMP #$F8
	BEQ @skip_sunset_move
	SEC
	LDA aobject_xcoord_fraction, X
	SBC #$B0
	STA aobject_xcoord_fraction, X
	LDA aobject_xcoord, X
	SBC #$00
	STA aobject_xcoord, X
	CLC
	LDA aobject_ycoord_fraction, X
	ADC #$0E
	STA aobject_ycoord_fraction, X
	LDA aobject_ycoord, X
	ADC #$00
	STA aobject_ycoord, X
	CMP #$58
	BCC @skip_sunset_move
	LDA #$F8
	STA aobject_ycoord, X

@skip_sunset_move:
	INX
	CPX #$08
	BNE @sunset_move_loop
	JMP @objects_move_common

@print_next_string_on_middle:
	DEC z:ztimer
	DEC z:ztimer
	CMP #$FC
	BNE @not_restore_fe
	LDA #$FE
	STA z:ztimer

@not_restore_fe:
	LDY z:ztiles_address
	LDA (zending_pointer), Y
	CMP #$FF
	BNE @print_string
	INY
	BNE @print_next_string_on_middle_nz
	INC z:zending_pointer + 1

@print_next_string_on_middle_nz:
	STY z:ztiles_address
	RTS

@print_string:
	LDA (zending_pointer), Y
	STA z:zobject_tiles_update_size
	CLC
	ADC #$02
	STA z:z0C
	LDX #$FF

@print_string_mainloop:
	INY
	BNE @print_string_nz
	INC z:zending_pointer + 1

@print_string_nz:
	INX
	CPX z:z0C
	BEQ @print_string_done
	LDA (zending_pointer), Y
	STA aobject_ppu_address, X
	JMP @print_string_mainloop

@print_string_done:
	STY z:ztiles_address
	RTS

.INCLUDE "data/ending/objects_palettes.asm"
.INCLUDE "data/ending/screen.asm"
