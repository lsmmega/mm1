ending_objects_and_palettes_set_table:
	.FEATURE FORCE_RANGE
;1
	.BYTE $80 | ($1B - $10) ;xcoord, screen

ending_background_palette_original_1:
	.BYTE @end - @start, $05

@start:
	.BYTE        white_yellow, light_yellow, white_red
	.BYTE black, light_yellow, black,        pale_cyan | 1 << 7
	.BYTE black, white_red,    light_red,    dark_red
@end:

	.BYTE light_rose ;global

;2
	.BYTE $00 | ($1B - $10) ;xcoord, screen

ending_background_palette_original_2:
	.BYTE @end - @start, $06

@start:
	.BYTE                      light_orange, white_rose
	.BYTE black, light_orange, black,        pale_cyan
	.BYTE black, white_rose,   light_rose,   dark_rose
@end:

	.BYTE light_rose ;global

;3
	.BYTE $F0 | ($1A - $10) ;xcoord, screen
	.BYTE -1 ;sunset

;4
	.BYTE $E0 | ($1A - $10) ;xcoord, screen

ending_background_palette_original_4:
	.BYTE @end - @start, $11

@start:
	.BYTE        black, black, black
	.BYTE black, black, black
@end:

	.BYTE light_rose ;global

;5
	.BYTE $D0 | ($1A - $10) ;xcoord, screen
	.BYTE -4 ;spawn tiles

;6
	.BYTE $90 | ($19 - $10) ;xcoord, screen

ending_background_palette_original_6:
	.BYTE @end - @start, $11

@start:
	.BYTE        pale_yellow, white_red, black
	.BYTE black, pale_gray,   pale_yellow
@end:

	.BYTE light_rose ;global

;7
	.BYTE $80 | ($19 - $10) ;xcoord, screen

ending_background_palette_original_7:
	.BYTE @end - @start, $0B

@start:
	.BYTE pale_orange
@end:

	.BYTE dark_rose ;global

;8
	.BYTE $80 | ($18 - $10) ;xcoord, screen

ending_background_palette_original_8:
	.BYTE @end - @start, $00

@start:
	.BYTE dark_red
@end:

	.BYTE dark_red ;global

;9
	.BYTE $80 | ($17 - $10) ;xcoord, screen

ending_background_palette_original_9:
	.BYTE @end - @start, $05

@start:
	.BYTE        white_orange, dark_orange, black
	.BYTE black, dark_red,     black,       pale_orange
@end:

	.BYTE dark_red ;global

;10
	.BYTE $40 | ($17 - $10) ;xcoord, screen

ending_background_palette_original_10:
	.BYTE @end - @start, $05

@start:
	.BYTE        light_red,   dark_red, black
	.BYTE black, dark_orange, black,    white_orange
@end:

	.BYTE dark_red ;global

;11
	.BYTE $00 | ($17 - $10) ;xcoord, screen

ending_background_palette_original_11:
	.BYTE @end - @start, $05

@start:
	.BYTE        light_gray, black,     black
	.BYTE black, dark_gray,  black,     dark_blue
	.BYTE black, dark_azure, dark_gray, black
@end:

	.BYTE dark_spring ;global

;12
	.BYTE $40 | ($15 - $10) ;xcoord, screen

ending_background_palette_original_12:
	.BYTE @end - @start, $0D

@start:
	.BYTE light_azure, black, black
@end:

	.BYTE dark_spring ;global

;13
	.BYTE $40 | ($14 - $10) ;xcoord, screen
	.BYTE -2 ;roll

;14
	.BYTE $20 | ($14 - $10) ;xcoord, screen
	.BYTE -3 ;dr light

;end
	.BYTE $00
