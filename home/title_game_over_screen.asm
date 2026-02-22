.INCLUDE "constants/upperbits_charmap.asm"

_title_game_over_screen:
	JSR _bankswitch_stage
	LDA #$20
	STA PPU_ADDRESS
	LDA #$00
	STA PPU_ADDRESS
	LDX #$0E
	LDA #$7F
	LDY z:z1up
	BPL @not_game_over_1
	LDA #$A0

@not_game_over_1:
@loop_2:
	LDY #$40

@loop_1:
	STA PPU_DATA
	DEY
	BNE @loop_1
	DEX
	BPL @loop_2
	LDA z:z1up
	BPL @not_game_over_2
	JMP @draw_game_over_screen_attributes

@not_game_over_2:
	LDX #$07

@loop_4:
	LDY #$08

@loop_3:
	LDA title_screen_attributes, X
	STA PPU_DATA
	DEY
	BNE @loop_3
	DEX
	BPL @loop_4
	LDX #$06

@loop_6:
	LDA title_screen_hileftscreencoord, X
	STA PPU_ADDRESS
	LDA title_screen_loleftscreencoord, X
	STA PPU_ADDRESS
	STX z:z0C
	LDA title_screen_tileset_length_table, X
	TAX

@loop_5:
	STY PPU_DATA
	INY
	DEX
	BNE @loop_5
	LDX z:z0C
	DEX
	BPL @loop_6
	LDA #$23
	STA PPU_ADDRESS
	LDA #$DE
	STA PPU_ADDRESS
	LDA #topleft_palette_0 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_2
	STA PPU_DATA
	LDA #$21
	STA PPU_ADDRESS
	LDA #$D9
	STA PPU_ADDRESS
	LDA #'T'
	STA PPU_DATA
	LDA #'M'
	STA PPU_DATA
	INX
	LDA #$04
	STA z:z0C

@loop_8:
	LDA special_title_screen_tileset, X
	STA PPU_ADDRESS
	INX
	LDA special_title_screen_tileset, X
	STA PPU_ADDRESS
	INX
	LDY special_title_screen_tileset, X
	INX

@loop_7:
	LDA special_title_screen_tileset, X
	STA PPU_DATA
	INX
	DEY
	BNE @loop_7
	DEC z:z0C
	BNE @loop_8

@done:
	LDY #$00
	STY z:zstage_select_flag
	LDX #$40
	JSR _init_sprites
	LDA z:zppu_ctrl
	ORA #nmi_enable
	STA z:zppu_ctrl
	STA PPU_CTRL
	LDA z:z1up
	BMI @draw_game_over_screen_object

@loop_9:
	JSR _nmi_wait
	LDA z:zjoy1_pressed
	CMP #start_button
	BNE @loop_9
	JSR _update_background_palette_alternative
	LDA #$78
	STA z:zpalette_update_flag
	LDA #$80
	STA z:ztimer

@loop_10:
	JSR _nmi_wait
	DEC z:ztimer
	BNE @loop_10

@return:
	JSR _nmi_disable
	JMP _bankswitch_05

@draw_game_over_screen_object:
	LDX #$03

@loop_11:
	LDA @title_game_over_screen_object_table, X
	STA aoam_y, X
	DEX
	BPL @loop_11
	LDX #$01

@loop_13:
	STX z:zstage_select_flag

@loop_12:
	JSR _nmi_wait
	LDA z:zjoy1_pressed_bits
	AND #select_button | start_button
	BEQ @loop_12
	AND #start_button
	BNE @return
	LDA z:zstage_select_flag
	EOR #%00000001
	TAX
	LDA @title_game_over_screen_object_table - 1, X
	STA aoam_y
	BNE @loop_13

;title game over screen object table - 1
	.BYTE $90

@title_game_over_screen_object_table:
;ycoord, tiles, attributes, xcoord
	.BYTE $80, $DA, oam_palette_1, $50

@draw_game_over_screen_attributes:
	LDA #topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2
	LDX #$40

@loop_14:
	STA PPU_DATA
	DEX
	BNE @loop_14
	LDA #light_azure
	STA abackground_palette_original + 11
	JSR _update_background_palette
	JSR _palette_update
	LDX #$00

@loop_16:
	LDA game_over_screen, X
	STA PPU_ADDRESS
	INX
	LDA game_over_screen, X
	STA PPU_ADDRESS
	INX
	LDY game_over_screen, X
	INX

@loop_15:
	LDA game_over_screen, X
	STA PPU_DATA
	INX
	DEY
	BNE @loop_15
	CPX #$26
	BNE @loop_16
	LDA #$21
	STA PPU_ADDRESS
	LDA #$6D
	STA PPU_ADDRESS
	LDX #$06

@loop_17:
	LDA z:zscore, X
	ORA #$D0
	STA PPU_DATA
	DEX
	BPL @loop_17
	STY z:zscreen_xcoord
	STY z:zscreen
	track_queue track_game_over
	JMP @done
