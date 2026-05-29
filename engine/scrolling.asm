_switch_scrolling:
	LDA #$00
	STA z:ztiles_address
	LDA z:zscroll_end_direction
	AND #%00000001
	BEQ @horizontal
	JMP @vertical

@horizontal:
	LDA aobject_pointer
	CMP #$09
	BEQ @jump
	LDA aobject_frameset_timer
	AND #%00110000
	STA aobject_frameset_timer
	LDA #$06

@jump:
	STA aobject_pointer
	LDA z:zscroll_end_direction
	SEC
	SBC #$01
	LSR
	TAX
	LDA @xcoord_fraction_table, X
	STA z:zobject_pointer
	LDA @xcoord_table, X
	STA z:ztiles_update_20size
	LDA aobject_xcoord
	CMP #$E0
	BCC @not_edge
	LDA @xcoord_fraction_edge_table, X
	STA z:zobject_pointer
	LDA @xcoord_edge_table, X
	STA z:ztiles_update_20size

@not_edge:
	LDA #$00
	STA z:zscreen_xcoord
	STA z:zscreen_ycoord
	LDY @sprites_tiles_set_wait_table, X

@loop_1:
	CLC
	LDA aobject_xcoord_fraction
	ADC z:zobject_pointer
	STA aobject_xcoord_fraction
	LDA aobject_xcoord
	ADC z:ztiles_update_20size
	STA aobject_xcoord
	CLC
	LDA z:zscreen_xcoord
	ADC @screen_xcoord_table, X
	STA z:zscreen_xcoord
	TYA
	PHA
	TXA
	PHA
	JSR _sprites
	JSR _sprites_tiles_set
	JSR _nmi_wait
	PLA
	TAX
	PLA
	TAY
	DEY
	BNE @loop_1
	LDA #$18
	STA aobject_xcoord
	LDA #$00
	STA z:zscreen_ycoord
	STA z:zscreen_xcoord
	STA aobject_pointer
	STA aobject_frameset_timer
	RTS

@sprites_tiles_set_wait_table:
	.BYTE $3F, $40

@screen_xcoord_table:
	.BYTE $04, $FC

@xcoord_fraction_table:
	.BYTE $00, $00

@xcoord_table:
	.BYTE $01, $FF

@xcoord_fraction_edge_table:
	.BYTE $B0, $50

@xcoord_edge_table:
	.BYTE $00, $FF

@vertical:
	LDA z:zscroll_end_direction
	LSR
	TAX
	LDA @vertical_coord_table, X
	STA z:zvertical_scrolling_coord
	LDA @screen_ycoord_pre_table, X
	STA z:zscreen_ycoord

@loop_2:
	TXA
	PHA
	JSR _sprites
	JSR _scrolling_up_down
	JSR _sprites_tiles_set
	JSR _nmi_wait
	PLA
	TAX
	LDA z:zteleport_flag
	BNE @teleporting
	CLC
	LDA aobject_ycoord_fraction
	ADC @ycoord_fraction_table, X
	STA aobject_ycoord_fraction
	LDA aobject_ycoord
	ADC @ycoord_table, X
	STA aobject_ycoord

@teleporting:
	CLC
	LDA z:zscreen_ycoord
	ADC @screen_ycoord_table, X
	STA z:zscreen_ycoord
	CLC
	LDA z:zvertical_scrolling_coord
	ADC @vertical_coord_rate_table, X
	STA z:zvertical_scrolling_coord
	BMI @done
	CMP #$3C
	BEQ @done
	BNE @loop_2

@done:
	LDA #$00
	STA z:zunused_1D
	STA z:zscreen_ycoord
	STA aobject_ycoord_fraction
	JSR _sprites
	RTS

@vertical_coord_table:
	.BYTE $3B, $00

@vertical_coord_rate_table:
	.BYTE $FF, $01

@ycoord_fraction_table:
	.BYTE $BF, $41

@ycoord_table:
	.BYTE $03, $FC

@screen_ycoord_table:
	.BYTE $FC, $04

@screen_ycoord_pre_table:
	.BYTE $EF, $00
