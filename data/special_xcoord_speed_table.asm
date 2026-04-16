special_object_xcoord_speed_table:
;fraction, integer
	.BYTE $00 | $00
	.BYTE $00 | $20
	.BYTE $01 | $20
	.BYTE $00 | $80
	.BYTE $01 | $00
	.BYTE $04 | $00
	.BYTE $05 | $10
	.BYTE $01 | $50
	.BYTE $01 | $60
	.BYTE $00 | $90

xcoord_speed_with_special_object_table:
	.BYTE $19, $1A, $27, $34, $36, $37

index_xcoord_speed_with_special_object_table:
	.BYTE $00, $05, $00, $02, $01, $06
