_find_enemies:
	LDA z:zboss_ai_pointer
	BEQ @no_bosses

@skip:
	RTS

@no_bosses:
	bankswitchz $06
	LDA z:zspecial_enemies_index
	BEQ @no_special_enemies
	JSR _check_special_enemies

@no_special_enemies:
	LDA z:zspawn_tiles_size
	BEQ @no_spawn_tiles
	JSR _spawn_tiles

@no_spawn_tiles:
	LDA z:zobjects_scrolling_flag
	AND #%00000001
	BEQ @skip
	LDA z:zobjects_scrolling_flag
	AND #%11111110
	BNE @right
	JMP @left

@right:
	CLC
	LDA z:zscreen_xcoord
	ADC #$FF
	STA z:z04
	LDA z:zscreen
	ADC #$00
	STA z:z05
	LDA z:zenemies_index
	JSR _find_next_objects_set_pointers
	LDY #$00

@loop_1:
	LDA (z06), Y
	CMP z:z05
	BCC @arrived_1
	BNE @not_arrived_1
	INY
	LDA (z06), Y
	DEY
	CMP z:z04
	BEQ @arrived_1
	BCS @not_arrived_1

@arrived_1:
	INY
	LDA (z06), Y
	STA z:z00
	INY
	LDA (z06), Y
	STA z:z01
	INY
	LDA (z06), Y
	INY
	LDX z:zenemies_index
	JSR _check_spawn_tiles
	INC z:zenemies_index
	BNE @loop_1

@not_arrived_1:
	LDA z:zending_update_object_palette_index
	CLC
	ADC #$01
	JSR _find_next_objects_set_pointers

@loop_2:
	LDA (z06), Y
	CMP z:zscreen
	BCC @corrected
	BNE @not_arrived_2
	INY
	LDA (z06), Y
	CMP z:zscreen_xcoord
	BCC @arrived_2
	BNE @not_arrived_2

@arrived_2:
	DEY

@corrected:
	INY
	INY
	INY
	INY
	INC z:zending_update_object_palette_index
	BNE @loop_2

@not_arrived_2:
	JMP _bankswitch_05

@left:
	LDA z:zscreen
	STA z:z05
	LDA z:zscreen_xcoord
	STA z:z04

@loop_3:
	LDA z:zending_update_object_palette_index
	CMP #$FF
	BEQ @not_arrived_3
	JSR _find_next_objects_set_pointers
	LDA (z06), Y
	CMP z:zscreen
	BCC @not_arrived_3
	BNE @arrived_3
	INY
	LDA (z06), Y
	DEY
	CMP z:zscreen_xcoord
	BCC @not_arrived_3

@arrived_3:
	INY
	LDA (z06), Y
	STA z:z00
	INY
	LDA (z06), Y
	STA z:z01
	INY
	LDA (z06), Y
	INY
	LDX z:zending_update_object_palette_index
	JSR _check_spawn_tiles
	DEC z:zending_update_object_palette_index
	JMP @loop_3

@not_arrived_3:
	CLC
	LDA z:zscreen_xcoord
	ADC #$FF
	STA z:z04
	LDA z:zscreen
	ADC #$00
	STA z:z05

@loop_4:
	LDA z:zenemies_index
	BEQ @not_arrived_4
	SEC
	SBC #$01
	JSR _find_next_objects_set_pointers
	LDA (z06), Y
	CMP z:z05
	BCC @not_arrived_4
	BNE @arrived_4
	INY
	LDA (z06), Y
	CMP z:z04
	BCC @not_arrived_4
	BEQ @not_arrived_4

@arrived_4:
	DEC z:zenemies_index
	BNE @loop_4

@not_arrived_4:
	JMP _bankswitch_05

_find_next_objects_set_pointers:
	LDX z:z00
	STX z:z07
	ASL
	ROL z:z07
	ASL
	ROL z:z07
	STA z:z06
	LDA z:zcurrent_stage
	ASL
	TAX
	CLC
	LDA objects_set_pointers, X
	ADC z:z06
	STA z:z06
	LDA z:z07
	AND #%00000011
	ADC objects_set_pointers + 1, X
	STA z:z07
	LDY #$00
	RTS

_check_spawn_tiles:
	STA z:z02
	STY z:z03
	CMP #$FF
	BNE @not_spawn_tiles_1
	JSR _spawn_tiles
	JMP _check_spawn_tiles_done

@not_spawn_tiles_1:
	STX z:z0C
	LDA z:z01
	CMP #$FE
	BNE @not_spawning
	JMP _tiles_spawning

@not_spawning:
	TXA
	LDX #$0F

@loop:
	CMP z:zenemies_screen_thread, X
	BEQ @skip
	DEX
	BPL @loop
	BMI @thread_not_used

@skip:
	LDY z:z03
	RTS

@thread_not_used:
	LDX #$10
	JSR _check_object
	BCS @skip
	LDA z:z0C
	STA z:zenemies_screen_thread - $10, X

_update_special_enemies:
	LDA #$FF
	STA aobject_pointer, X
	LDA z:z02
	STA aobject_id, X
	LDA z:z05
	STA aobject_screen, X
	LDA z:z00
	STA aobject_xcoord, X
	LDA z:z01
	CMP #$FF
	BNE @not_spawn_tiles_2
	JMP _run_special_enemies

@not_spawn_tiles_2:
	STA aobject_ycoord, X
	LDY z:z02
	LDA objects_default_flags_table, Y
	STA aobject_flag, X
	TYA
	PHA
	LDA objects_speed_index_table, Y
	TAY
	JSR _object_speed_init
	PLA
	TAY
	LDA objects_move_delay_table, Y
	STA aobject_timer, X
	LDA #$14
	STA aobject_hp, X
	LDA #$00
	STA aobject_frameset_timer, X
	STA aobject_frozen_timer, X
	STA aobject_ycoord_fraction, X
	STA aobject_xcoord_fraction, X
	STA aenemies_hitting_thread - $10, X

_check_spawn_tiles_done:
	LDY z:z03
	RTS

_tiles_spawning:
	LDA z:z02
	STA z:z0C
	LDX #$10

@loop:
	JSR _check_enemies
	BCS @not_hidden
	LDA aobject_flag, X
	ORA #$08
	STA aobject_flag, X
	LDA z:z02
	CMP #objects_crazy_razy_head_2
	BEQ @is_objects_crazy_razy_head_2
	CMP #objects_big_eye
	BNE @not_big_eye
	LDA #$40
	STA aobject_timer, X

@is_objects_crazy_razy_head_2:
	LDA #$04
	STA aobject_ycoord_speed, X
	LDA #$00
	STA aobject_ycoord_speed_fraction, X

@not_big_eye:
	INX
	BNE @loop

@not_hidden:
	LDY z:z03
	RTS

_run_special_enemies:
	TXA
	PHA
	LDA #$00
	STA z:zspecial_enemies_index
	LDA z:z02
	CMP #objects_track_platform
	BEQ @is_objects_track_platform
	STA z:zspecial_enemies_id
	LDX #$01
	CMP #$06
	BNE @not_watcher
	LDX #$7E
	LDA #$04
	STA z:zspecial_enemies_index

@not_watcher:
	STX z:zspecial_enemies_timer
	JSR _check_special_enemies
	PLA
	TAX
	RTS

@is_objects_track_platform:
	LDA z:zcurrent_stage
	CMP #stage_gutsman
	BNE @not_gutsman
	LDY #$02
	LDX #$00
	BEQ @is_gutsman

@not_gutsman: ;wily4
	LDX #$15
	LDY #$00

@is_gutsman:
	STX z:z0C
	STY z:z0D

@loop:
	LDA #$2C
	JSR _generate_object
	LDY z:z0C
	LDA track_platform_coord_table + 6, Y
	STA z:zenemies_screen_thread - $10, X
	LDA #objects_invisible
	STA aobject_flag, X
	LDA track_platform_coord_table, Y
	STA aobject_xcoord, X
	LDA track_platform_coord_table + 1, Y
	STA aobject_screen, X
	LDA track_platform_coord_table + 2, Y
	STA aobject_ycoord, X
	LDA track_platform_coord_table + 3, Y
	STA aobject_timer, X
	LDA track_platform_coord_table + 4, Y
	STA aobject_ycoord_speed_fraction, X
	LDA track_platform_coord_table + 5, Y
	STA aobject_hp, X
	TYA
	CLC
	ADC #$07
	STA z:z0C
	LDA #$00
	STA aobject_xcoord_speed_fraction, X
	LDA #$01
	STA aobject_xcoord_speed, X
	DEC z:z0D
	BPL @loop
	PLA
	TAX
	RTS

track_platform_coord_table:
	.BYTE $F0, $03, $47, $40, $00, $00, $00
	.BYTE $88, $03, $87, $40, $00, $01, $00
	.BYTE $20, $04, $C7, $40, $08, $02, $00
	.BYTE $78, $1B, $87, $40, $00, $03, $02

_check_special_enemies:
	DEC z:zspecial_enemies_timer
	BEQ @run
	RTS

@run:
	LDX #$10
	JSR _check_object
	BCS @skip
	LDY #$03
	LDA z:zspecial_enemies_id
	STA z:z02

@loop:
	CMP @special_enemies_id_table, Y
	BEQ @true
	DEY
	BPL @loop

@true:
	TYA
	ASL
	TAY
	LDA @special_enemies_pointers, Y
	STA z:z04
	LDA @special_enemies_pointers + 1, Y
	STA z:z05
	LDY z:zspecial_enemies_index
	LDA (z04), Y
	STA z:zspecial_enemies_timer
	INY
	LDA (z04), Y
	STA z:z00
	INY
	LDA (z04), Y
	STA z:z01
	INY
	STY z:zspecial_enemies_index
	CLC
	LDA z:zscreen_xcoord
	ADC z:z00
	STA z:z00
	LDA z:zscreen
	ADC #$00
	STA z:z05
	JSR _update_special_enemies
	LDA z:zspecial_enemies_timer
	BNE @skip
	STA z:zspecial_enemies_index

@skip:
	RTS

@special_enemies_id_table:
	.BYTE $00, $09, $06, $0E

@special_enemies_pointers:
	.WORD @special_bunby_heli_coord
	.WORD @special_big_eye_coord
	.WORD @special_watcher_coord - 4
	.WORD @special_fireball_coord

@special_bunby_heli_coord:
;timer, xcoord, ycoord
	.BYTE $31, $04, $4C
	.BYTE $23, $04, $8C
	.BYTE $00, $04, $5C

@special_big_eye_coord:
	.BYTE $02, $78, $08
	.BYTE $00, $88, $08

@special_watcher_coord:
	.BYTE $02, $58, $08
	.BYTE $30, $A8, $E0
	.BYTE $30, $38, $08
	.BYTE $18, $C8, $E0
	.BYTE $18, $50, $08
	.BYTE $00, $98, $E0

@special_fireball_coord:
	.BYTE $1F, $B0, $04
	.BYTE $1F, $B0, $04
	.BYTE $1F, $B0, $04
	.BYTE $00, $B0, $04
