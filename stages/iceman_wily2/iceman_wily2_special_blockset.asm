;iceman special blockset

	.BYTE (iceman_special_blockset_end - iceman_special_blockset) / 6

iceman_special_blockset:
	;      id,  no,  x1,  y1,  x2,  y2
	.BYTE $00, $0A, $60, $90, $70, $A0
	.BYTE $00, $0A, $80, $30, $90, $40
	.BYTE $00, $0A, $80, $80, $90, $90
	.BYTE $00, $0A, $80, $B0, $90, $C0
	.BYTE $00, $0A, $A0, $60, $B0, $70
	.BYTE $00, $0A, $B0, $A0, $C0, $B0
	.BYTE $00, $0A, $D0, $80, $E0, $90
	.BYTE $00, $0B, $20, $50, $30, $60
	.BYTE $00, $0B, $30, $90, $40, $A0
	.BYTE $00, $0B, $50, $70, $60, $80
	.BYTE $00, $0B, $60, $A0, $70, $B0
	.BYTE $00, $0B, $70, $30, $80, $40
	.BYTE $00, $0B, $70, $60, $80, $70
	.BYTE $00, $0B, $90, $70, $A0, $80
	.BYTE $00, $0B, $90, $B0, $A0, $C0
	.BYTE $00, $0B, $A0, $90, $B0, $A0
	.BYTE $00, $0B, $B0, $30, $C0, $40
	.BYTE $00, $0B, $C0, $B0, $D0, $C0
	.BYTE $03, $13, $E0, $60, $00, $A0
	.BYTE $01, $14, $00, $60, $10, $A0
	.BYTE $03, $16, $F0, $60, $00, $A0
	.BYTE $01, $17, $00, $60, $10, $A0
	.BYTE $01, $FF, $00, $00, $00, $00
iceman_special_blockset_end:

;end
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF

;wily2 special blockset

	.BYTE (wily2_special_blockset_end - wily2_special_blockset) / 6

wily2_special_blockset:
	;      id,  no,  x1,  y1,  x2,  y2
	.BYTE $01, $1C, $20, $C0, $40, $E0
	.BYTE $01, $20, $20, $C0, $40, $E0
	.BYTE $01, $FF, $00, $00, $00, $00
wily2_special_blockset_end:

;end
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00
