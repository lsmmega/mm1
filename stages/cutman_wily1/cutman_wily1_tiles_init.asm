;cutman tiles init

	.BYTE (cutman_tiles_init_end - cutman_tiles_init) / 2

cutman_tiles_init:
	.BYTE tiles_address_1000, 8
	.BYTE tiles_address_9b00, 1
	.BYTE tiles_address_9f00, 1
	.BYTE tiles_address_af00, 1
	.BYTE tiles_address_9800, 1
	.BYTE tiles_address_9c00, 1
	.BYTE tiles_address_b800, 1
	.BYTE tiles_address_3600, 1
	.BYTE tiles_address_9700, 1
	.BYTE tiles_address_3000, 8
	.BYTE tiles_address_5000, 8
cutman_tiles_init_end:

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00

;wily1 tiles init

	.BYTE (wily1_tiles_init_end - wily1_tiles_init) / 2

wily1_tiles_init:
	.BYTE tiles_address_1000, 8
	.BYTE tiles_address_9e00, 1
	.BYTE tiles_address_b000, 4
	.BYTE tiles_address_b800, 1
	.BYTE tiles_address_3600, 1
	.BYTE tiles_address_9700, 1
	.BYTE tiles_address_3000, 2
	.BYTE tiles_address_d000, 4
	.BYTE tiles_address_3600, 2
	.BYTE tiles_address_d800, 8
wily1_tiles_init_end:

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00
