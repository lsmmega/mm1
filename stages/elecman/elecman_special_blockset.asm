;elecman special blockset

	.BYTE (elecman_special_blockset_end - elecman_special_blockset) / 6

elecman_special_blockset:
	;      id,  no,  x1,  y1,  x2,  y2
	.BYTE $00, $05, $40, $50, $50, $60
	.BYTE $00, $05, $60, $70, $70, $80
	.BYTE $00, $05, $90, $70, $A0, $80
	.BYTE $00, $05, $B0, $50, $C0, $60
	.BYTE $00, $06, $90, $C0, $A0, $D0
	.BYTE $00, $06, $A0, $C0, $B0, $D0
	.BYTE $00, $06, $B0, $C0, $C0, $D0
	.BYTE $00, $06, $C0, $C0, $D0, $D0
	.BYTE $02, $0B, $80, $80, $A0, $A0
	.BYTE $02, $0C, $60, $60, $80, $80
	.BYTE $02, $0C, $80, $60, $A0, $80
	.BYTE $02, $0C, $A0, $60, $C0, $80
	.BYTE $02, $0D, $80, $80, $A0, $A0
	.BYTE $02, $0F, $C0, $60, $E0, $80
	.BYTE $03, $13, $E0, $60, $00, $A0
	.BYTE $01, $14, $00, $60, $10, $A0
	.BYTE $02, $17, $20, $A0, $40, $C0
	.BYTE $02, $17, $40, $A0, $60, $C0
	.BYTE $01, $17, $60, $C0, $A0, $E0
	.BYTE $01, $FF, $00, $00, $00, $00
elecman_special_blockset_end:

;end
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF
