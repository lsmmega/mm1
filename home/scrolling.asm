_xycoord_to_ppu_address:
	LDX #$20
	LDY #$23
	LDA z:z05
	AND #%00000001
	BEQ @left
	LDX #$24
	LDY #$27

@left:
	STX z:z10
	STY z:z09
	LDA #$00
	STA z:z07
	LDA z:z04
	AND #%00011111
	ASL
	ASL
	ASL
	ASL
	ROL z:z07
	ASL 
	ROL z:z07
	STA z:z06
	LDA z:z04
	AND #%11100000
	LSR
	LSR
	LSR
	ORA z:z06
	LDX z:z0D
	STA ascreen_ppu_address + 1, X
	LDA z:z10
	ORA z:z07
	STA ascreen_ppu_address, X
	INX
	INX
	RTS

_update_16x16tiles_screen:
	LDA #$02
	STA z:z0E

@loop_2:
	LDA #$02
	STA z:z0F

@loop_1:
	LDA (z06), Y
	ASL
	ASL
	CLC
	STA ascreen_ppu_data - 2, X
	ADC #$01
	STA ascreen_ppu_data - 1, X
	ADC #$01
	STA ascreen_ppu_data + 2, X
	ADC #$01
	STA ascreen_ppu_data + 3, X
	INX
	INX
	INY
	DEC z:z0F
	BNE @loop_1
	INX
	INX
	INX
	INX
	DEC z:z0E
	BNE @loop_2
	RTS

_attributes_to_ppu_address:
	LDA z:z04
	ROL
	PHA
	ROL
	ROL
	ROL
	AND #%00000111
	STA z:z08
	PLA
	AND #%00111000
	ORA z:z08
	ORA #%11000000
	STA ascreen_ppu_address + 1, X
	LDA z:z09
	STA ascreen_ppu_address, X
	INX
	INX
	RTS

_scrolling_up_down:
	JSR _bankswitch_stage
	LDA z:zvertical_scrolling_coord
	LSR
	LSR
	LSR
	LSR
	STA ascreen_ppu_address
	LDA z:zvertical_scrolling_coord
	ASL
	ASL
	ASL
	PHA
	AND #%00011000
	STA ascreen_ppu_address + 1
	PLA
	ASL
	AND #%11000000
	ORA ascreen_ppu_address + 1
	STA ascreen_ppu_address + 1
	LDA z:zvertical_scrolling_coord
	AND #%11111000
	ORA #%11000000
	STA ascreen_ppu_address + 19
	LDA z:zvertical_scrolling_coord
	AND #%00000011
	ASL
	ORA ascreen_ppu_address + 19
	STA ascreen_ppu_address + 19
	LDX #$20
	LDA z:zscreen
	AND #%00000001
	BEQ @left
	LDX #$24

@left:
	TXA
	ORA ascreen_ppu_address
	STA ascreen_ppu_address
	TXA
	ORA #%00000011
	STA ascreen_ppu_address + 18
	LDA #$00
	STA z:z0C
	LDA z:zvertical_scrolling_coord
	AND #%00111011
	LSR
	ROR z:z0C
	LSR
	ROR z:z0C
	LSR
	ROR z:z0C
	LSR z:z0C
	ORA z:z0C
	STA z:z0C
	LDX aobject_screen
	LDA stage_screen_id, X
	ASL
	TAX
	LDA stage_screen_id_pointers, X
	STA z:z04
	LDA stage_screen_id_pointers + 1, X
	STA z:z05
	LDX #$00
	STX z:z0D

@mainloop:
	LDA #$00
	STA z:z07
	LDA z:z0D
	PHA
	LDA z:z0E
	PHA
	LDA z:z05
	PHA
	LDA z:z0C
	PHA
	AND #%00111000
	ASL
	ASL
	STA z:z0D
	LDA z:z0C
	AND #%00000111
	LSR
	ROR
	ROR
	ROR
	STA z:z0E
	LDA aobject_screen
	STA z:z0C
	LDY #$00
	JSR _special_blockset_collision
	TAY
	PLA
	STA z:z0C
	PLA
	STA z:z05
	PLA
	STA z:z0E
	PLA
	STA z:z0D
	CPY #$84
	BNE @no_block_remove
	LDY z:zcurrent_stage
	LDA aobject_screen
	CMP special_room_id_table, X
	BNE @not_special_room
	LDA special_room_16x16tiles_id_table, Y
	BNE @done

@not_special_room:
	LDA not_special_room_16x16tiles_id_table, Y
	BNE @done

@no_block_remove:
	LDY z:z0C
	LDA (z04), Y

@done:
	STA z:z0F
	ASL
	ROL z:z07
	ASL
	ROL z:z07
	TAY
	LDA #$80
	ORA z:z07
	STA z:z07
	LDA #$00
	STA z:z06
	LDA z:zvertical_scrolling_coord
	AND #%00000100
	BEQ @not_bottom_1
	INY

@not_bottom_1:
	LDA #$02
	STA z:z0E

@loop:
	LDA (z06), Y
	ASL
	ASL
	CLC
	STA ascreen_ppu_address + 2, X
	ADC #$01
	STA ascreen_ppu_address + 10, X
	ADC #$01
	STA ascreen_ppu_address + 3, X
	ADC #$01
	STA ascreen_ppu_address + 11, X
	INX
	INX
	INY
	INY
	DEC z:z0E
	BNE @loop
	LDA z:zvertical_scrolling_coord
	LDY #$0F
	AND #%00000100
	BEQ @not_bottom_2
	LDY #$F0

@not_bottom_2:
	STY ascreen_ppu_address + 20
	LDY z:z0F
	LDA stage_tsa_attributes, Y
	AND ascreen_ppu_address + 20
	LDY z:z0D
	STA ascreen_ppu_address + 21, Y
	LDA z:z0C
	ORA #%00001000
	STA z:z0C
	INC z:z0D
	LDA z:z0D
	CMP #$02
	BEQ @update_attributes
	JMP @mainloop

@update_attributes:
	LDA #$40
	STA z:zscreen_update_flag
	LDA #$FF
	EOR ascreen_ppu_address + 20
	STA ascreen_ppu_address + 20
	JMP _bankswitch_05
