reset:
irq:
	SEI
	LDA #nametable_top_right
	STA PPU_CTRL
	LDA #background_leftmost_enable | sprites_leftmost_enable
	STA PPU_MASK
	farjmp _init
