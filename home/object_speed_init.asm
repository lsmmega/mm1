_object_speed_init:
	LDA object_speed_init_table, Y
	STA aobject_ycoord_speed_fraction, X
	LDA object_speed_init_table + 1, Y
	STA aobject_ycoord_speed, X
	LDA object_speed_init_table + 2, Y
	STA aobject_xcoord_speed_fraction, X
	LDA object_speed_init_table + 3, Y
	STA aobject_xcoord_speed, X
	RTS

object_speed_init_table:
;ycoord speed fraction, ycoord speed, xcoord speed fraction, xcoord speed
	.BYTE $E0, +4, $30, +1
	.BYTE $00, +4, $00, +3
	.BYTE $00, +0, $00, +0
	.BYTE $2C, +2, $2C, +2
	.BYTE $68, +0, $0F, +3
	.BYTE $98, -1, $0F, +3
	.BYTE $D4, -3, $2C, +2
	.BYTE $00, +4, $00, +0
	.BYTE $D0, +2, $D0, +2
	.BYTE $00, +0, $00, +4
	.BYTE $30, -3, $D0, +2
	.BYTE $00, -4, $00, +0
	.BYTE $30, -3, $D0, +2
	.BYTE $00, +0, $00, +4
	.BYTE $D0, +2, $D0, +2
	.BYTE $A0, -1, $80, +0
	.BYTE $00, -2, $20, +1
	.BYTE $80, +3, $C0, +1
	.BYTE $40, +3, $00, +1
	.BYTE $00, +0, $47, +1
	.BYTE $BB, +0, $0C, +1
	.BYTE $45, -1, $0C, +1
	.BYTE $00, +3, $00, +0
	.BYTE $2C, +2, $2C, +2
	.BYTE $00, +0, $00, +3
	.BYTE $D4, -3, $2C, +2
	.BYTE $00, -3, $00, +0
	.BYTE $51, +3, $34, +1
	.BYTE $E6, +4, $D1, +0
	.BYTE $10, -1, $57, +0
	.BYTE $00, +2, $00, +2
	.BYTE $00, +3, $80, +1
	.BYTE $47, +1, $00, +0
	.BYTE $B9, -2, $00, +0
	.BYTE $00, +0, $47, +1
	.BYTE $99, +1, $00, +0
	.BYTE $67, -2, $00, +0
	.BYTE $00, +0, $99, +1
	.BYTE $66, +2, $00, +0
	.BYTE $9A, -3, $00, +0
	.BYTE $00, +0, $66, +2
	.BYTE $33, +3, $00, +0
	.BYTE $CD, -4, $00, +0
	.BYTE $00, +0, $33, +3
	.BYTE $00, +0, $20, +1
	.BYTE $C0, -1, $60, +0
	.BYTE $00, +2, $00, +0
	.BYTE $A0, +0, $00, +0
	.BYTE $00, -2, $20, +1
	.BYTE $C0, -1, $00, +0
	.BYTE $C0, -1, $90, +1
	.BYTE $00, +0, $80, +0
	.BYTE $00, +0, $00, +2
	.BYTE $00, +2, $00, +5
	.BYTE $00, +3, $00, +4
