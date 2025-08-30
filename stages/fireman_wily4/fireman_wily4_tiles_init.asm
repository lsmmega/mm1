;fireman tiles init

	.BYTE (fireman_tiles_init_end - fireman_tiles_init) / 2

fireman_tiles_init:
	.BYTE tiles_address_1000, 8
	.BYTE tiles_address_9e00, 2
	.BYTE tiles_address_b700, 1
	.BYTE tiles_address_9e00, 2
	.BYTE tiles_address_b800, 1
	.BYTE tiles_address_3600, 1
	.BYTE tiles_address_9700, 1
	.BYTE tiles_address_3000, 8
	.BYTE tiles_address_6800, 8
fireman_tiles_init_end:

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00

;wily4 tiles init

	.BYTE (wily4_tiles_init_end - wily4_tiles_init) / 2

wily4_tiles_init:
	.BYTE tiles_address_1000, 9
	.BYTE tiles_address_a400, 4
	.BYTE tiles_address_b800, 1
	.BYTE tiles_address_3600, 1
	.BYTE tiles_address_9700, 1
	.BYTE tiles_address_3000, 2
	.BYTE tiles_address_d000, 4
	.BYTE tiles_address_3600, 2
	.BYTE tiles_address_d800, 8
wily4_tiles_init_end:

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00
