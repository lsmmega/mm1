gutsman_special_blockset:
	.BYTE (@end - @start) / 6

@start:
	;      id,  no,  x1,  y1,  x2,  y2
	.BYTE $03, $0E, $E0, $60, $00, $A0
	.BYTE $01, $0F, $00, $60, $10, $A0
	.BYTE $03, $11, $F0, $60, $00, $A0
	.BYTE $02, $12, $20, $A0, $40, $C0
	.BYTE $02, $12, $40, $A0, $60, $C0
	.BYTE $01, $12, $00, $60, $10, $A0
	.BYTE $01, $FF, $00, $00, $00, $00
@end:

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
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF
