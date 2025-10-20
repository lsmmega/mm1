;screen sprites index
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 1 * $0B
	.BYTE 1 * $0B
	.BYTE 1 * $0B
	.BYTE 1 * $0B
	.BYTE 1 * $0B
	.BYTE 1 * $0B
	.BYTE 1 * $0B
	.BYTE 1 * $0B
	.BYTE 2 * $0B
	.BYTE 2 * $0B
	.BYTE 2 * $0B
	.BYTE 2 * $0B
	.BYTE 2 * $0B
	.BYTE 6 * $0B
	.BYTE 6 * $0B
	.BYTE 6 * $0B
	.BYTE 4 * $0B
	.BYTE 7 * $0B
	.BYTE 7 * $0B
	.BYTE 7 * $0B
	.BYTE 7 * $0B
	.BYTE 6 * $0B
	.BYTE 6 * $0B
	.BYTE 6 * $0B
	.BYTE 6 * $0B
	.BYTE 6 * $0B
	.BYTE 6 * $0B
	.BYTE 6 * $0B
	.BYTE 6 * $0B
	.BYTE 6 * $0B
	.BYTE 6 * $0B
	.BYTE 6 * $0B
	.BYTE 6 * $0B
	.BYTE 6 * $0B
	.BYTE 6 * $0B
	.BYTE 6 * $0B
	.BYTE 6 * $0B
	.BYTE 6 * $0B
	.BYTE 6 * $0B
	.BYTE 6 * $0B
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

;sprites set
;0
	.BYTE tiles_address_ae00
	.BYTE tiles_address_9f00
	.BYTE tiles_address_ab00
	.BYTE tiles_address_9e00
	.BYTE tiles_address_9f00
	.BYTE pale_gray, light_rose,  black
	.BYTE pale_gray, light_azure, black

;1
	.BYTE tiles_address_a500
	.BYTE tiles_address_a600
	.BYTE tiles_address_a700
	.BYTE tiles_address_9800
	.BYTE tiles_address_9c00
	.BYTE pale_gray, white_green, black
	.BYTE pale_gray, white_red,   black

;2
	.BYTE tiles_address_a500
	.BYTE tiles_address_a600
	.BYTE tiles_address_a700
	.BYTE tiles_address_9e00
	.BYTE tiles_address_9c00
	.BYTE pale_gray, white_green, black
	.BYTE pale_gray, white_red,   black

;3
	.BYTE tiles_address_a500
	.BYTE tiles_address_a600
	.BYTE tiles_address_a700
	.BYTE tiles_address_9800
	.BYTE tiles_address_9900
	.BYTE pale_gray, white_green, black
	.BYTE pale_gray, white_red,   black

;4
	.BYTE tiles_address_2000
	.BYTE tiles_address_2100
	.BYTE tiles_address_2200
	.BYTE tiles_address_2300
	.BYTE tiles_address_9200
	.BYTE white_orange, light_rose, black
	.BYTE pale_gray,    white_red,  black

;5
	.BYTE tiles_address_9200
	.BYTE tiles_address_9a00
	.BYTE tiles_address_9b00
	.BYTE tiles_address_9d00
	.BYTE tiles_address_b600
	.BYTE pale_gray, white_orange, black
	.BYTE pale_gray, light_cyan,   dark_cyan

;6
	.BYTE tiles_address_9b00
	.BYTE tiles_address_b200
	.BYTE tiles_address_9d00
	.BYTE tiles_address_9d00
	.BYTE tiles_address_9f00
	.BYTE pale_gray, light_rose, black
	.BYTE pale_gray, light_rose, black

;7
	.BYTE tiles_address_9b00
	.BYTE tiles_address_9f00
	.BYTE tiles_address_af00
	.BYTE tiles_address_9e00
	.BYTE tiles_address_9f00
	.BYTE pale_gray, light_rose, black
	.BYTE pale_gray, light_rose, black

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
