fireman_tiles_init:
	.BYTE (@end - @start) / 2

@start:
	.BYTE tiles_address_1000, 8
	.BYTE tiles_address_9e00, 2
	.BYTE tiles_address_b700, 1
	.BYTE tiles_address_9e00, 2
	.BYTE tiles_address_b800, 1
	.BYTE tiles_address_3600, 1
	.BYTE tiles_address_9700, 1
	.BYTE tiles_address_3000, 8
	.BYTE tiles_address_6800, 8
@end:

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00

wily4_tiles_init:
	.BYTE (@end - @start) / 2

@start:
	.BYTE tiles_address_1000, 9
	.BYTE tiles_address_a400, 4
	.BYTE tiles_address_b800, 1
	.BYTE tiles_address_3600, 1
	.BYTE tiles_address_9700, 1
	.BYTE tiles_address_3000, 2
	.BYTE tiles_address_d000, 4
	.BYTE tiles_address_3600, 2
	.BYTE tiles_address_d800, 8
@end:

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00
