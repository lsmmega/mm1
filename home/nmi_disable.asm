_nmi_disable:
	LDA z:zppu_ctrl
	AND #~nmi_enable
	STA z:zppu_ctrl
	STA PPU_CTRL
	LDA z:zppu_mask
	AND #~(background_enable | sprite_enable)
	STA z:zppu_mask
	STA PPU_MASK
	RTS
