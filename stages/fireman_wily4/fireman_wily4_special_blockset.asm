;fireman special blockset

	.BYTE (fireman_special_blockset_end - fireman_special_blockset) / 6

fireman_special_blockset:
	;      id,  no,  x1,  y1,  x2,  y2
	.BYTE $01, $02, $70, $C0, $80, $C0
	.BYTE $01, $03, $30, $A0, $40, $A0
	.BYTE $01, $03, $50, $E0, $60, $E0
	.BYTE $01, $04, $70, $A0, $80, $A0
	.BYTE $01, $04, $90, $E0, $A0, $E0
	.BYTE $01, $06, $50, $A0, $60, $A0
	.BYTE $01, $06, $70, $80, $80, $80
	.BYTE $01, $07, $90, $E0, $A0, $E0
	.BYTE $01, $07, $D0, $E0, $E0, $E0
	.BYTE $01, $08, $50, $E0, $60, $E0
	.BYTE $01, $08, $90, $C0, $A0, $C0
	.BYTE $01, $09, $F0, $E0, $00, $E0
	.BYTE $01, $0A, $30, $C0, $40, $C0
	.BYTE $01, $0F, $B0, $C0, $C0, $A0
	.BYTE $01, $0F, $D0, $C0, $E0, $C0
	.BYTE $03, $0F, $E0, $60, $00, $A0
	.BYTE $01, $10, $00, $60, $10, $A0
	.BYTE $03, $12, $F0, $60, $00, $A0
	.BYTE $01, $13, $00, $60, $10, $A0
	.BYTE $01, $FF, $00, $00, $00, $00
fireman_special_blockset_end:

;end
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF

;wily4 special blockset

	.BYTE (wily4_special_blockset_end - wily4_special_blockset) / 6

wily4_special_blockset:
	;      id,  no,  x1,  y1,  x2,  y2
	.BYTE $02, $16, $80, $60, $A0, $80
	.BYTE $02, $16, $80, $80, $A0, $A0
	.BYTE $02, $16, $80, $A0, $A0, $C0
	.BYTE $01, $1D, $00, $A0, $10, $C0
	.BYTE $01, $1E, $00, $A0, $10, $C0
	.BYTE $01, $1F, $00, $A0, $10, $C0
	.BYTE $01, $20, $00, $A0, $10, $C0
	.BYTE $03, $22, $E0, $80, $00, $C0
	.BYTE $01, $23, $00, $10, $10, $C0
	.BYTE $01, $FF, $00, $00, $00, $00
wily4_special_blockset_end:

;end
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00
