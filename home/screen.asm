_screen_update:
	LDA z:zscreen_update_flag
	BNE @screen_update
	JMP @done

@screen_update:
	AND #%11000000
	BEQ @draw_horizontal
	JMP @not_horizontal

@draw_horizontal:
	LDA z:zppu_ctrl
	ORA #draw_vertical
	STA z:zppu_ctrl
	STA PPU_CTRL
	LDA #<ascreen_ppu_data
	STA z:z0E
	LDA #>ascreen_ppu_data
	STA z:z0F
	LDA #$00

@scroll_right:
	STA z:z0C
	TAX
	LDY #$00
	LDA #3
	STA z:z0D
	LDA ascreen_ppu_address + 1, X
	AND #%10000000
	ORA ascreen_ppu_address, X
	AND #%10000011
	CMP #%10000011
	BNE @not_bottom_bottom_left
	LDA #1
	STA z:z0D

@not_bottom_bottom_left:
@loop_1:
	LDA ascreen_ppu_address, X
	STA PPU_ADDRESS
	LDA ascreen_ppu_address + 1, X
	STA PPU_ADDRESS

@continue_1:
	LDA (z0E), Y
	STA PPU_DATA
	INY
	TYA
	AND z:z0D
	BNE @continue_1
	LDA z:z0D
	CMP #3
	BEQ @draw_16_vertical_done
	INY
	INY

@draw_16_vertical_done:
	TYA
	AND #%00001111
	BEQ @draw_16x16_done
	INC ascreen_ppu_address + 1, X
	JMP @loop_1

@draw_16x16_done:
	LDA ascreen_ppu_attribute_address, X
	STA PPU_ADDRESS
	LDA ascreen_ppu_attribute_address + 1, X
	STA PPU_ADDRESS
	LDA ascreen_ppu_attribute_data, X
	STA PPU_DATA
	DEC z:zscreen_update_flag
	BEQ @done
	CLC
	LDA z:z0E
	ADC #$15
	STA z:z0E
	CLC
	LDA z:z0C
	ADC #$15
	BNE @scroll_right

@done:
	LDA z:zppu_ctrl
	AND #~draw_vertical
	STA z:zppu_ctrl
	STA PPU_CTRL
	RTS

@not_horizontal:
	LDA z:zscreen_update_flag
	CMP #$40
	BEQ @screen_update_vertical
	JMP @stage_select_screen_attribute

@screen_update_vertical:
	LDX #$00
	STX z:zscreen_update_flag

@loop_2:
	LDA ascreen_ppu_address
	STA PPU_ADDRESS
	LDA ascreen_ppu_address + 1
	STA PPU_ADDRESS

@continue_2:
	LDA ascreen_ppu_data, X
	STA PPU_DATA
	INX
	TXA
	AND #%00000111
	BNE @continue_2
	CLC
	LDA ascreen_ppu_address + 1
	ADC #$20
	STA ascreen_ppu_address + 1
	LDY z:zscreen_update_flag
	LDA ascreen_ppu_attribute_data + 1, Y
	STA ascreen_ppu_attribute_data + 1
	LDY #$00
	JSR @attribute_update
	INC z:zscreen_update_flag
	INC ascreen_ppu_attribute_address + 1
	CPX #$10
	BNE @loop_2
	LDA #$00
	STA z:zscreen_update_flag
	RTS

@stage_select_screen_attribute:
	LDA z:zscreen_update_flag
	AND #%00001111
	TAX
	LDY #$00

@loop_3:
	JSR @attribute_update
	INY
	INY
	INY
	INY
	DEX
	BNE @loop_3
	LDA #$00
	STA z:zscreen_update_flag
	RTS

@attribute_update:
	LDA ascreen_ppu_attribute_address, Y
	STA PPU_ADDRESS
	LDA ascreen_ppu_attribute_address + 1, Y
	STA PPU_ADDRESS
	LDA PPU_DATA
	LDA PPU_DATA
	AND ascreen_ppu_attribute_data, Y
	ORA ascreen_ppu_attribute_data + 1, Y
	PHA
	LDA ascreen_ppu_attribute_address, Y
	STA PPU_ADDRESS
	LDA ascreen_ppu_attribute_address + 1, Y
	STA PPU_ADDRESS
	PLA
	STA PPU_DATA
	RTS
