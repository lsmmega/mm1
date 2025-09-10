bombman_tiles_init:
	.BYTE (@end - @start) / 2

@start:
	.BYTE tiles_address_1000, 8
	.BYTE tiles_address_ae00, 1
	.BYTE tiles_address_9f00, 2
	.BYTE tiles_address_9e00, 2
	.BYTE tiles_address_b800, 1
	.BYTE tiles_address_3600, 1
	.BYTE tiles_address_9700, 1
	.BYTE tiles_address_3000, 8
	.BYTE tiles_address_6000, 8
@end:

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00

wily3_tiles_init:
	.BYTE (@end - @start) / 2

@start:
	.BYTE tiles_address_1000, 8
	.BYTE tiles_address_9b00, 3
	.BYTE tiles_address_9e00, 2
	.BYTE tiles_address_b800, 1
	.BYTE tiles_address_3600, 1
	.BYTE tiles_address_9700, 1
	.BYTE tiles_address_3000, 2
	.BYTE tiles_address_d000, 4
	.BYTE tiles_address_3600, 2
	.BYTE tiles_address_d400, 6
	.BYTE tiles_address_5600, 2
@end:

;duplicate wily2 tiles init
	.BYTE tiles_address_d800, 6

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00
