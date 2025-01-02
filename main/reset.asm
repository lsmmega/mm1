reset:
	sei
	lda #%00000001 ;vertical mirroring.
	sta ppu_ctrl
	lda #%00000110 ;show background/sprites in leftmost 8 pixels of screen.
	sta ppu_mask
	farjmp _resetbank05