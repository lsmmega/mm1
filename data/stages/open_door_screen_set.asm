open_door_next_boss_screen_table:
	.BYTE $16
	.BYTE $16
	.BYTE $FF
	.BYTE $12
	.BYTE $FF
	.BYTE $11
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $22
	.BYTE $20

open_door_not_boss_screen_table:
	.BYTE $13
	.BYTE $13
	.BYTE $13
	.BYTE $0F
	.BYTE $13
	.BYTE $0E
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF

open_door_not_boss_background_palettes_table:
;cutman
	.BYTE black, pale_gray,  white_spring, dark_red
	.BYTE black, pale_gray,  white_spring, white_cyan
	.BYTE black, white_gray, light_gray,   dark_gray
	.BYTE black, white_gray, light_gray,   white_cyan

;iceman
	.BYTE black, white_gray, white_azure,     light_azure
	.BYTE black, white_gray, pale_cyan,       white_cyan
	.BYTE black, white_gray, white_azure,     white_cyan
	.BYTE black, white_gray, dark_chartreuse, light_cyan

;bombman
	.BYTE black, white_gray,       light_gray,       light_azure
	.BYTE black, white_gray,       light_gray,       white_azure
	.BYTE black, white_chartreuse, light_chartreuse, dark_orange
	.BYTE black, white_orange,     dark_red,         white_azure

;fireman
	.BYTE black, pale_gray,    light_gray,  dark_red
	.BYTE black, light_spring, dark_spring, dark_gray
	.BYTE black, white_orange, light_red,   dark_red
	.BYTE black, white_red,    light_red,   dark_red

;elecman
	.BYTE black, white_gray,   white_orange,     light_orange
	.BYTE black, white_gray,   white_orange,     white_azure
	.BYTE black, black,        black,            dark_cyan
	.BYTE black, white_yellow, white_chartreuse, light_yellow

;gutsman
	.BYTE black, white_red,  light_orange,  dark_orange
	.BYTE black, pale_gray,  light_gray,    dark_blue
	.BYTE black, white_red,  light_orange,  dark_blue
	.BYTE black, pale_orange, white_orange, light_orange
