gutsman_tiles_init:
	.BYTE (@end - @start) / 2

@start:
	.BYTE tiles_address_1000, 8
	.BYTE tiles_address_9b00, 1
	.BYTE tiles_address_ab00, 2
	.BYTE tiles_address_a300, 1
	.BYTE tiles_address_9a00, 1
	.BYTE tiles_address_b800, 1
	.BYTE tiles_address_3600, 1
	.BYTE tiles_address_9700, 1
	.BYTE tiles_address_3000, 8
	.BYTE tiles_address_7800, 8
@end:

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00

ending_tiles_init:
	.BYTE (@end - @start) / 2

@start:
	.BYTE tiles_address_1000, 8
	.BYTE tiles_address_2300, 1
	.BYTE tiles_address_1a00, 2
	.BYTE tiles_address_b300, 2
	.BYTE tiles_address_be00, 1
	.BYTE tiles_address_bd00, 1
	.BYTE tiles_address_be00, 1
	.BYTE tiles_address_3000, 6
	.BYTE tiles_address_3800, 2
	.BYTE tiles_address_e000, 8
@end:

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00
