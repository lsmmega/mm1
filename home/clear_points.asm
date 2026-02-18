_clear_points:
	LDY #$03
	CLC
	LDA #$01

@loop:
	ADC z:zundo_clear_points,X
	CMP #10
	BCC @l10
	SBC #10

@l10:
	STA z:zundo_clear_points,X
	LDA #$00
	INX
	DEY
	BNE @loop
	LDA #$10
	STA z:z05
	JSR _score_addition
	JSR _sprites
	LDA z:znmi_frame
	AND #%00000011
	BNE @skip
	track_queue track_points

@skip:
	RTS

_boss_clear_points:
	LDX #$02
	STX z:z0E
	LDY #$C0
	LDA #$68
	STA z:z0C
	LDA #$50
	STA z:z0D
	JSR _clear_points_display
	RTS

_score_ball_clear_points:
	LDX #$04
	LDA #$01
	STA z:z0E
	LDA #$78
	STA z:z0D
	LDA #$70
	STA z:z0C
	JSR _clear_points_display

;score ball count
	LDX #$04
	LDA #$01
	STA z:z0E
	LDA #$60
	STA z:z0D
	LDA #$90
	STA z:z0C

_clear_points_display:
@loop:
	LDA z:zundo_clear_points, X
	ORA #$F0
	STA aoam_tiles, Y
	LDA z:z0C
	STA aoam_x, Y
	LDA z:z0D
	STA aoam_y, Y
	LDA #oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	STA aoam_attributes, Y
	INY
	INY
	INY
	INY
	DEX
	CLC
	LDA z:z0C
	ADC #$08
	STA z:z0C
	DEC z:z0E
	BPL @loop
	RTS
