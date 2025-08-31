;elecman tiles init

	.BYTE (elecman_tiles_init_end - elecman_tiles_init) / 2

elecman_tiles_init:
	.BYTE tiles_address_1000, 8
	.BYTE tiles_address_9b00, 1
	.BYTE tiles_address_a400, 1
	.BYTE tiles_address_a500, 1
	.BYTE tiles_address_9800, 1
	.BYTE tiles_address_9c00, 1
	.BYTE tiles_address_b800, 1
	.BYTE tiles_address_3600, 1
	.BYTE tiles_address_9700, 1
	.BYTE tiles_address_3000, 8
	.BYTE tiles_address_7000, 8
elecman_tiles_init_end:

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00

;elecman unknown tiles init

	.BYTE (elecman_unknown_tiles_init_end - elecman_unknown_tiles_init) / 2

elecman_unknown_tiles_init:
	.BYTE tiles_address_1000, 13
	.BYTE tiles_address_b800, 1
	.BYTE tiles_address_3600, 1
	.BYTE tiles_address_9700, 1
	.BYTE tiles_address_e800, 8
	.BYTE tiles_address_3800, 8
elecman_unknown_tiles_init_end:

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00
