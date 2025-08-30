;bombman special blockset

	.BYTE (bombman_special_blockset_end - bombman_special_blockset) / 6

bombman_special_blockset:
	;      id,  no,  x1,  y1,  x2,  y2
	.BYTE $03, $13, $E0, $60, $00, $A0
	.BYTE $01, $14, $00, $60, $10, $A0
	.BYTE $01, $17, $60, $00, $A0, $30
	.BYTE $01, $FF, $00, $00, $00, $00
bombman_special_blockset_end:

;duplicate iceman special blockset
	;      id,  no,  x1,  y1,  x2,  y2
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

;end
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF

;wily3 special blockset

	.BYTE (wily3_special_blockset_end - wily3_special_blockset) / 6

wily3_special_blockset:
	;      id,  no,  x1,  y1,  x2,  y2
	.BYTE $01, $2F, $00, $60, $10, $C0
	.BYTE $02, $2F, $60, $A0, $80, $C0
	.BYTE $02, $2F, $80, $80, $A0, $A0
	.BYTE $02, $2F, $80, $A0, $A0, $C0
	.BYTE $02, $2F, $A0, $A0, $C0, $C0
	.BYTE $01, $FF, $00, $00, $00, $00
wily3_special_blockset_end:

;end
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
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
