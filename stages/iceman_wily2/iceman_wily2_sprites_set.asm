;screen sprites index
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 2 * $0B
	.BYTE 2 * $0B
	.BYTE 2 * $0B
	.BYTE 2 * $0B
	.BYTE 2 * $0B
	.BYTE 2 * $0B
	.BYTE 2 * $0B
	.BYTE 1 * $0B
	.BYTE 1 * $0B
	.BYTE 1 * $0B
	.BYTE 1 * $0B
	.BYTE 1 * $0B
	.BYTE 1 * $0B
	.BYTE 3 * $0B
	.BYTE 4 * $0B
	.BYTE 4 * $0B
	.BYTE 4 * $0B
	.BYTE 4 * $0B
	.BYTE 6 * $0B
	.BYTE 8 * $0B
	.BYTE 8 * $0B
	.BYTE 8 * $0B
	.BYTE 7 * $0B
	.BYTE 8 * $0B
	.BYTE 8 * $0B
	.BYTE 8 * $0B
	.BYTE 4 * $0B
	.BYTE 4 * $0B
	.BYTE 4 * $0B
	.BYTE 4 * $0B
	.BYTE 4 * $0B
	.BYTE 5 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B

;sprites set
;0
	.BYTE tiles_address_a800
	.BYTE tiles_address_a900
	.BYTE tiles_address_aa00
	.BYTE tiles_address_9d00
	.BYTE tiles_address_9c00
	.BYTE pale_gray, white_green, black
	.BYTE pale_gray, white_red,   black

;1
	.BYTE tiles_address_9b00
	.BYTE tiles_address_b000
	.BYTE tiles_address_b100
	.BYTE tiles_address_9d00
	.BYTE tiles_address_9c00
	.BYTE pale_gray, light_rose, black
	.BYTE pale_gray, white_red,  black

;2
	.BYTE tiles_address_b500
	.BYTE tiles_address_ad00
	.BYTE tiles_address_ae00
	.BYTE tiles_address_9d00
	.BYTE tiles_address_9c00
	.BYTE white_cyan, light_azure, black
	.BYTE pale_gray,  white_red,   black

;3
	.BYTE tiles_address_2800
	.BYTE tiles_address_2900
	.BYTE tiles_address_2a00
	.BYTE tiles_address_2b00
	.BYTE tiles_address_9100
	.BYTE white_gray, white_azure, black
	.BYTE pale_gray,  white_red,   black

;4
	.BYTE tiles_address_9b00
	.BYTE tiles_address_a400
	.BYTE tiles_address_a500
	.BYTE tiles_address_9800
	.BYTE tiles_address_9c00
	.BYTE pale_gray, white_green, black
	.BYTE pale_gray, light_azure, black

;5
	.BYTE tiles_address_d800
	.BYTE tiles_address_9100
	.BYTE tiles_address_9200
	.BYTE tiles_address_9000
	.BYTE tiles_address_9400
	.BYTE white_gray, pale_yellow, black
	.BYTE black,      pale_yellow, light_yellow

;6
	.BYTE tiles_address_1800
	.BYTE tiles_address_1900
	.BYTE tiles_address_1a00
	.BYTE tiles_address_1b00
	.BYTE tiles_address_9100
	.BYTE pale_gray, light_rose, black
	.BYTE pale_gray, white_red,  black

;7
	.BYTE tiles_address_2c00
	.BYTE tiles_address_2d00
	.BYTE tiles_address_2e00
	.BYTE tiles_address_2f00
	.BYTE tiles_address_9400
	.BYTE white_orange, light_rose, black
	.BYTE pale_gray,    white_red,  black

;8
	.BYTE tiles_address_ae00
	.BYTE tiles_address_9f00
	.BYTE tiles_address_ab00
	.BYTE tiles_address_9e00
	.BYTE tiles_address_9f00
	.BYTE pale_gray, light_rose, black
	.BYTE pale_gray, light_rose, black

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00
