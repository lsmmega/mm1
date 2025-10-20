;screen sprites index
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
	.BYTE 1 * $0B
	.BYTE 2 * $0B
	.BYTE 2 * $0B
	.BYTE 2 * $0B
	.BYTE 2 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 3 * $0B
	.BYTE 7 * $0B
	.BYTE 7 * $0B
	.BYTE 8 * $0B
	.BYTE 8 * $0B
	.BYTE 8 * $0B
	.BYTE 8 * $0B
	.BYTE 8 * $0B
	.BYTE 8 * $0B
	.BYTE 8 * $0B
	.BYTE 4 * $0B
	.BYTE 3 * $0B
	.BYTE 5 * $0B
	.BYTE 6 * $0B
	.BYTE 0 * $0B
	.BYTE 9 * $0B
	.BYTE 9 * $0B
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
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B
	.BYTE 0 * $0B

;sprites set
;0
	.BYTE tiles_address_9e00
	.BYTE tiles_address_bf00
	.BYTE tiles_address_b700
	.BYTE tiles_address_9e00
	.BYTE tiles_address_9f00
	.BYTE white_orange, light_rose,  black
	.BYTE pale_gray,    light_azure, black

;1
	.BYTE tiles_address_9e00
	.BYTE tiles_address_bf00
	.BYTE tiles_address_b700
	.BYTE tiles_address_b100
	.BYTE tiles_address_9000
	.BYTE white_orange, light_rose,  black
	.BYTE pale_gray,    light_azure, black

;2
	.BYTE tiles_address_9e00
	.BYTE tiles_address_bf00
	.BYTE tiles_address_b700
	.BYTE tiles_address_9800
	.BYTE tiles_address_9c00
	.BYTE white_orange, light_rose,  black
	.BYTE pale_gray,    light_azure, black

;3
	.BYTE tiles_address_2400
	.BYTE tiles_address_2500
	.BYTE tiles_address_2600
	.BYTE tiles_address_9600
	.BYTE tiles_address_9000
	.BYTE white_gray,   light_rose, black
	.BYTE white_orange, light_rose, black

;4
	.BYTE tiles_address_2000
	.BYTE tiles_address_2100
	.BYTE tiles_address_2200
	.BYTE tiles_address_2300
	.BYTE tiles_address_9200
	.BYTE white_orange, light_rose, black
	.BYTE pale_gray,    white_red,  black

;5
	.BYTE tiles_address_2800
	.BYTE tiles_address_2900
	.BYTE tiles_address_2a00
	.BYTE tiles_address_2b00
	.BYTE tiles_address_9100
	.BYTE white_gray, white_azure, black
	.BYTE pale_gray,  white_red,   black

;6
	.BYTE tiles_address_1c00
	.BYTE tiles_address_1d00
	.BYTE tiles_address_1e00
	.BYTE tiles_address_1f00
	.BYTE tiles_address_de00
	.BYTE white_orange, light_rose, black
	.BYTE white_gray,   dark_gray,  dark_blue

;7
	.BYTE tiles_address_9b00
	.BYTE tiles_address_a400
	.BYTE tiles_address_a500
	.BYTE tiles_address_9900
	.BYTE tiles_address_9c00
	.BYTE pale_gray, white_green, black
	.BYTE pale_gray, white_green, black

;8
	.BYTE tiles_address_9c00
	.BYTE tiles_address_ab00
	.BYTE tiles_address_ac00
	.BYTE tiles_address_9e00
	.BYTE tiles_address_9f00
	.BYTE pale_gray, light_rose,  black
	.BYTE pale_gray, light_azure, black

;9
	.BYTE tiles_address_ba00
	.BYTE tiles_address_bb00
	.BYTE tiles_address_bc00
	.BYTE tiles_address_fe00
	.BYTE tiles_address_ff00
	.BYTE pale_gray,    light_rose, black
	.BYTE pale_magenta, light_rose, dark_rose

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00
