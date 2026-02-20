_init_sprites_index:
	JSR _bankswitch_stage
	LDX aobject_screen
	LDA sprites_tiles_palette_index, X
	STA z:zsprites_tiles_palette_index
	JMP _bankswitch_05
