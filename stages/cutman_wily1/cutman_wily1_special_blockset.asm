;cutman special blockset

	.BYTE (cutman_special_blockset_end - cutman_special_blockset) / 6

cutman_special_blockset:
	;      id,  no,  x1,  y1,  x2,  y2
	.BYTE $02, $00, $80, $40, $A0, $60
	.BYTE $02, $00, $80, $A0, $A0, $C0
	.BYTE $02, $00, $A0, $80, $C0, $A0
	.BYTE $02, $00, $A0, $A0, $C0, $C0
	.BYTE $02, $01, $80, $40, $A0, $60
	.BYTE $02, $01, $80, $A0, $A0, $C0
	.BYTE $02, $01, $A0, $80, $C0, $A0
	.BYTE $02, $01, $A0, $A0, $C0, $C0
	.BYTE $02, $02, $80, $60, $A0, $80
	.BYTE $02, $08, $80, $60, $A0, $80
	.BYTE $02, $0A, $60, $A0, $80, $C0
	.BYTE $02, $0B, $20, $80, $40, $A0
	.BYTE $02, $0C, $60, $80, $80, $A0
	.BYTE $02, $12, $20, $80, $40, $A0
	.BYTE $02, $12, $40, $80, $60, $A0
	.BYTE $02, $12, $40, $A0, $60, $C0
	.BYTE $02, $12, $60, $A0, $80, $C0
	.BYTE $03, $13, $E0, $60, $00, $A0
	.BYTE $01, $14, $00, $60, $10, $A0
	.BYTE $03, $16, $F0, $60, $00, $A0
	.BYTE $02, $17, $20, $A0, $40, $C0
	.BYTE $02, $17, $40, $A0, $60, $C0
	.BYTE $01, $17, $00, $60, $10, $A0
	.BYTE $01, $FF, $00, $00, $00, $00
cutman_special_blockset_end:

;end
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF

;wily1 special blockset

	.BYTE (wily1_special_blockset_end - wily1_special_blockset) / 6

wily1_special_blockset:
	;      id,  no,  x1,  y1,  x2,  y2
	.BYTE $02, $1D, $A0, $80, $C0, $A0
	.BYTE $02, $1D, $A0, $A0, $C0, $C0
	.BYTE $02, $1D, $C0, $80, $E0, $A0
	.BYTE $02, $1D, $E0, $80, $00, $A0
	.BYTE $02, $1D, $E0, $A0, $00, $C0
	.BYTE $01, $1E, $60, $E0, $70, $E0
	.BYTE $01, $1E, $90, $C0, $A0, $C0
	.BYTE $01, $1E, $C0, $A0, $D0, $A0
	.BYTE $02, $21, $20, $A0, $40, $C0
	.BYTE $02, $21, $40, $A0, $60, $C0
	.BYTE $02, $21, $60, $A0, $80, $C0
	.BYTE $02, $21, $80, $20, $A0, $40
	.BYTE $02, $21, $A0, $20, $C0, $40
	.BYTE $01, $27, $00, $20, $10, $C0
	.BYTE $01, $FF, $00, $00, $00, $00
wily1_special_blockset_end:

;end
	.BYTE $FF, $FF, $FF, $FF, $FF, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00, $00, $00, $00
	.BYTE $00, $00, $00, $00, $00
