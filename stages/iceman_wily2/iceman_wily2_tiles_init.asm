;iceman tiles init

	.BYTE (iceman_tiles_init_end - iceman_tiles_init) / 2

iceman_tiles_init:
	.BYTE tiles_address_1000, 8
	.BYTE tiles_address_a800, 3
	.BYTE tiles_address_9d00, 1
	.BYTE tiles_address_9c00, 1
	.BYTE tiles_address_b800, 1
	.BYTE tiles_address_3600, 1
	.BYTE tiles_address_9700, 1
	.BYTE tiles_address_3000, 8
	.BYTE tiles_address_5800, 8
iceman_tiles_init_end:

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00

;wily2 tiles init

	.BYTE (wily2_tiles_init_end - wily2_tiles_init) / 2

wily2_tiles_init:
	.BYTE tiles_address_1000, 8
	.BYTE tiles_address_9b00, 1
	.BYTE tiles_address_a400, 3
	.BYTE tiles_address_9c00, 1
	.BYTE tiles_address_b800, 1
	.BYTE tiles_address_3600, 1
	.BYTE tiles_address_9700, 1
	.BYTE tiles_address_3000, 2
	.BYTE tiles_address_d000, 4
	.BYTE tiles_address_3600, 2
	.BYTE tiles_address_dc00, 2
	.BYTE tiles_address_d800, 6
wily2_tiles_init_end:

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00
