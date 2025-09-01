	.BYTE $01 ;unknown

;wily machine 1 screen set
	.BYTE wily_machine_1_screen_1_end - wily_machine_1_screen_1

	rightscreencoord 18, 10

wily_machine_1_screen_1:
	.BYTE $38, $39, $3A, $3A, $3A, $3B, $3C
wily_machine_1_screen_1_end:

	.BYTE wily_machine_1_screen_2_end - wily_machine_1_screen_2

	rightscreencoord 17, 11

wily_machine_1_screen_2:
	.BYTE $90, $A6, $E0, $E1, $E2, $94, $95, $96
wily_machine_1_screen_2_end:

	.BYTE wily_machine_1_screen_3_end - wily_machine_1_screen_3

	rightscreencoord 16, 12

wily_machine_1_screen_3:
	.BYTE $91, $92, $92, $92, $92, $93, $9A, $9B
	.BYTE $9C, $9D
wily_machine_1_screen_3_end:

	.BYTE wily_machine_1_screen_4_end - wily_machine_1_screen_4

	rightscreencoord 15, 13

wily_machine_1_screen_4:
	.BYTE $9E, $98, $98, $98, $98, $98, $99, $9F
	.BYTE $A0, $A1, $A2, $A3
wily_machine_1_screen_4_end:

	.BYTE wily_machine_1_screen_5_end - wily_machine_1_screen_5

	rightscreencoord 15, 14

wily_machine_1_screen_5:
	.BYTE $A4, $98, $98, $98, $98, $98, $A5, $A6
	.BYTE $A7, $A8, $A9, $AA
wily_machine_1_screen_5_end:

	.BYTE wily_machine_1_screen_6_end - wily_machine_1_screen_6

	rightscreencoord 16, 15

wily_machine_1_screen_6:
	.BYTE $AC, $AD, $AE, $AF, $B0, $B1, $B2, $B3
	.BYTE $B4, $B5, $B6
wily_machine_1_screen_6_end:

	.BYTE wily_machine_1_screen_7_end - wily_machine_1_screen_7

	rightscreencoord 18, 16

wily_machine_1_screen_7:
	.BYTE $B7, $B8, $B9, $BA, $BB, $BC, $BD, $BE
	.BYTE $BF
wily_machine_1_screen_7_end:

	.BYTE wily_machine_1_screen_8_end - wily_machine_1_screen_8

	rightscreencoord 18, 17

wily_machine_1_screen_8:
	.BYTE $C0, $C1, $C2, $C3, $C4, $C5, $C6, $C7
wily_machine_1_screen_8_end:

	.BYTE wily_machine_1_screen_9_end - wily_machine_1_screen_9

	rightscreencoord 18, 18

wily_machine_1_screen_9:
	.BYTE $C8, $C9, $CA, $CB, $CC, $CD, $CE
wily_machine_1_screen_9_end:

	.BYTE wily_machine_1_screen_a_end - wily_machine_1_screen_a

	rightscreencoord 19, 19

wily_machine_1_screen_a:
	.BYTE $CF, $D0, $D1, $D2, $D3, $D4
wily_machine_1_screen_a_end:

	.BYTE wily_machine_1_screen_b_end - wily_machine_1_screen_b

	rightscreencoord 19, 20

wily_machine_1_screen_b:
	.BYTE $D5, $D6, $D7, $D8
wily_machine_1_screen_b_end:

	.BYTE wily_machine_1_screen_c_end - wily_machine_1_screen_c

	rightscreencoord 21, 21

wily_machine_1_screen_c:
	.BYTE $D9
wily_machine_1_screen_c_end:

;end
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00
