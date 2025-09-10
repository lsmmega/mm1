iceman_tiles_init:
	.BYTE (@end - @start) / 2

@start:
	.BYTE tiles_address_1000, 8
	.BYTE tiles_address_a800, 3
	.BYTE tiles_address_9d00, 1
	.BYTE tiles_address_9c00, 1
	.BYTE tiles_address_b800, 1
	.BYTE tiles_address_3600, 1
	.BYTE tiles_address_9700, 1
	.BYTE tiles_address_3000, 8
	.BYTE tiles_address_5800, 8
@end:

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00

wily2_tiles_init:
	.BYTE (@end - @start) / 2

@start:
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
@end:

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00
