	.BYTE $01 ;unknown

;wily machine 1 screen set
wily_machine_1_screen:
	.BYTE @end_1 - @start_1

	rightscreencoord 18, 10

@start_1:
	.BYTE $38, $39, $3A, $3A, $3A, $3B, $3C
@end_1:

	.BYTE @end_2 - @start_2

	rightscreencoord 17, 11

@start_2:
	.BYTE $90, $A6, $E0, $E1, $E2, $94, $95, $96
@end_2:

	.BYTE @end_3 - @start_3

	rightscreencoord 16, 12

@start_3:
	.BYTE $91, $92, $92, $92, $92, $93, $9A, $9B
	.BYTE $9C, $9D
@end_3:

	.BYTE @end_4 - @start_4

	rightscreencoord 15, 13

@start_4:
	.BYTE $9E, $98, $98, $98, $98, $98, $99, $9F
	.BYTE $A0, $A1, $A2, $A3
@end_4:

	.BYTE @end_5 - @start_5

	rightscreencoord 15, 14

@start_5:
	.BYTE $A4, $98, $98, $98, $98, $98, $A5, $A6
	.BYTE $A7, $A8, $A9, $AA
@end_5:

	.BYTE @end_6 - @start_6

	rightscreencoord 16, 15

@start_6:
	.BYTE $AC, $AD, $AE, $AF, $B0, $B1, $B2, $B3
	.BYTE $B4, $B5, $B6
@end_6:

	.BYTE @end_7 - @start_7

	rightscreencoord 18, 16

@start_7:
	.BYTE $B7, $B8, $B9, $BA, $BB, $BC, $BD, $BE
	.BYTE $BF
@end_7:

	.BYTE @end_8 - @start_8

	rightscreencoord 18, 17

@start_8:
	.BYTE $C0, $C1, $C2, $C3, $C4, $C5, $C6, $C7
@end_8:

	.BYTE @end_9 - @start_9

	rightscreencoord 18, 18

@start_9:
	.BYTE $C8, $C9, $CA, $CB, $CC, $CD, $CE
@end_9:

	.BYTE @end_10 - @start_10

	rightscreencoord 19, 19

@start_10:
	.BYTE $CF, $D0, $D1, $D2, $D3, $D4
@end_10:

	.BYTE @end_11 - @start_11

	rightscreencoord 19, 20

@start_11:
	.BYTE $D5, $D6, $D7, $D8
@end_11:

	.BYTE @end_12 - @start_12

	rightscreencoord 21, 21

@start_12:
	.BYTE $D9
@end_12:

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00
