;background tile 16x16 id | block type attributes index
	;     topleft,       bottomleft,    topright,      bottomright
	.BYTE $00 | 0 * $40, $00 | 0 * $40, $00 | 0 * $40, $00 | 0 * $40 ;00
	.BYTE $01 | 0 * $40, $01 | 0 * $40, $01 | 0 * $40, $01 | 0 * $40 ;01
	.BYTE $28 | 1 * $40, $30 | 1 * $40, $2A | 1 * $40, $32 | 1 * $40 ;02
	.BYTE $30 | 1 * $40, $30 | 1 * $40, $32 | 1 * $40, $32 | 1 * $40 ;03
	.BYTE $28 | 1 * $40, $30 | 1 * $40, $29 | 1 * $40, $31 | 1 * $40 ;04
	.BYTE $29 | 1 * $40, $31 | 1 * $40, $2A | 1 * $40, $32 | 1 * $40 ;05
	.BYTE $30 | 1 * $40, $30 | 1 * $40, $31 | 1 * $40, $31 | 1 * $40 ;06
	.BYTE $31 | 1 * $40, $31 | 1 * $40, $32 | 1 * $40, $32 | 1 * $40 ;07
	.BYTE $21 | 1 * $40, $01 | 0 * $40, $21 | 1 * $40, $38 | 0 * $40 ;08
	.BYTE $21 | 1 * $40, $39 | 0 * $40, $21 | 1 * $40, $01 | 0 * $40 ;09
	.BYTE $21 | 1 * $40, $3A | 0 * $40, $21 | 1 * $40, $3B | 0 * $40 ;0A
	.BYTE $21 | 1 * $40, $38 | 0 * $40, $21 | 1 * $40, $39 | 0 * $40 ;0B
	.BYTE $20 | 1 * $40, $39 | 0 * $40, $21 | 1 * $40, $01 | 0 * $40 ;0C
	.BYTE $21 | 1 * $40, $39 | 0 * $40, $21 | 1 * $40, $3A | 0 * $40 ;0D
	.BYTE $21 | 1 * $40, $21 | 1 * $40, $28 | 1 * $40, $30 | 1 * $40 ;0E
	.BYTE $2A | 1 * $40, $32 | 1 * $40, $21 | 1 * $40, $01 | 0 * $40 ;0F
	.BYTE $20 | 1 * $40, $20 | 1 * $40, $21 | 1 * $40, $21 | 1 * $40 ;10
	.BYTE $21 | 1 * $40, $21 | 1 * $40, $21 | 1 * $40, $21 | 1 * $40 ;11
	.BYTE $21 | 1 * $40, $21 | 1 * $40, $22 | 1 * $40, $22 | 1 * $40 ;12
	.BYTE $20 | 1 * $40, $01 | 0 * $40, $21 | 1 * $40, $01 | 0 * $40 ;13
	.BYTE $21 | 1 * $40, $01 | 0 * $40, $21 | 1 * $40, $01 | 0 * $40 ;14
	.BYTE $21 | 1 * $40, $01 | 0 * $40, $22 | 1 * $40, $01 | 0 * $40 ;15
	.BYTE $21 | 1 * $40, $21 | 1 * $40, $30 | 1 * $40, $30 | 1 * $40 ;16
	.BYTE $32 | 1 * $40, $32 | 1 * $40, $21 | 1 * $40, $01 | 0 * $40 ;17
	.BYTE $39 | 0 * $40, $39 | 0 * $40, $20 | 1 * $40, $2D | 0 * $40 ;18
	.BYTE $21 | 1 * $40, $2E | 0 * $40, $21 | 1 * $40, $01 | 0 * $40 ;19
	.BYTE $21 | 1 * $40, $3C | 0 * $40, $30 | 1 * $40, $3D | 0 * $40 ;1A
	.BYTE $32 | 1 * $40, $3E | 0 * $40, $37 | 0 * $40, $3F | 0 * $40 ;1B
	.BYTE $24 | 0 * $40, $2C | 0 * $40, $25 | 0 * $40, $28 | 1 * $40 ;1C
	.BYTE $26 | 0 * $40, $2A | 1 * $40, $27 | 0 * $40, $2F | 0 * $40 ;1D
	.BYTE $21 | 1 * $40, $01 | 0 * $40, $30 | 1 * $40, $30 | 1 * $40 ;1E
	.BYTE $32 | 1 * $40, $32 | 1 * $40, $21 | 1 * $40, $21 | 1 * $40 ;1F
	.BYTE $01 | 0 * $40, $01 | 0 * $40, $21 | 1 * $40, $01 | 0 * $40 ;20
	.BYTE $01 | 0 * $40, $01 | 0 * $40, $38 | 0 * $40, $38 | 0 * $40 ;21
	.BYTE $25 | 0 * $40, $20 | 1 * $40, $26 | 0 * $40, $22 | 1 * $40 ;22
	.BYTE $01 | 0 * $40, $01 | 0 * $40, $20 | 1 * $40, $01 | 0 * $40 ;23
	.BYTE $20 | 1 * $40, $01 | 0 * $40, $21 | 1 * $40, $20 | 1 * $40 ;24
	.BYTE $01 | 0 * $40, $01 | 0 * $40, $01 | 0 * $40, $20 | 1 * $40 ;25
	.BYTE $01 | 0 * $40, $21 | 1 * $40, $30 | 1 * $40, $30 | 1 * $40 ;26
	.BYTE $20 | 1 * $40, $01 | 0 * $40, $30 | 1 * $40, $30 | 1 * $40 ;27
	.BYTE $3C | 0 * $40, $01 | 0 * $40, $20 | 1 * $40, $38 | 0 * $40 ;28
	.BYTE $21 | 1 * $40, $39 | 0 * $40, $21 | 1 * $40, $01 | 0 * $40 ;29
	.BYTE $01 | 0 * $40, $01 | 0 * $40, $20 | 1 * $40, $20 | 1 * $40 ;2A
	.BYTE $01 | 0 * $40, $20 | 1 * $40, $20 | 1 * $40, $21 | 1 * $40 ;2B
	.BYTE $21 | 1 * $40, $20 | 1 * $40, $21 | 1 * $40, $21 | 1 * $40 ;2C
	.BYTE $32 | 1 * $40, $32 | 1 * $40, $38 | 0 * $40, $38 | 0 * $40 ;2D
	.BYTE $39 | 0 * $40, $39 | 0 * $40, $20 | 1 * $40, $20 | 1 * $40 ;2E
	.BYTE $01 | 0 * $40, $04 | 3 * $40, $01 | 0 * $40, $04 | 3 * $40 ;2F
	.BYTE $03 | 2 * $40, $03 | 2 * $40, $20 | 1 * $40, $20 | 1 * $40 ;30
	.BYTE $03 | 2 * $40, $03 | 2 * $40, $01 | 0 * $40, $01 | 0 * $40 ;31
	.BYTE $03 | 2 * $40, $03 | 2 * $40, $20 | 1 * $40, $01 | 0 * $40 ;32
	.BYTE $03 | 2 * $40, $03 | 2 * $40, $22 | 1 * $40, $22 | 1 * $40 ;33
	.BYTE $03 | 2 * $40, $03 | 2 * $40, $01 | 0 * $40, $20 | 1 * $40 ;34
	.BYTE $03 | 2 * $40, $03 | 2 * $40, $30 | 1 * $40, $30 | 1 * $40 ;35
	.BYTE $03 | 2 * $40, $03 | 2 * $40, $28 | 1 * $40, $30 | 1 * $40 ;36
	.BYTE $2A | 1 * $40, $32 | 1 * $40, $21 | 1 * $40, $21 | 1 * $40 ;37
	.BYTE $03 | 2 * $40, $03 | 2 * $40, $01 | 0 * $40, $21 | 1 * $40 ;38
	.BYTE $01 | 0 * $40, $01 | 0 * $40, $01 | 0 * $40, $21 | 1 * $40 ;39
	.BYTE $01 | 0 * $40, $03 | 2 * $40, $01 | 0 * $40, $20 | 1 * $40 ;3A
	.BYTE $01 | 0 * $40, $21 | 1 * $40, $38 | 0 * $40, $38 | 0 * $40 ;3B
	.BYTE $01 | 0 * $40, $01 | 0 * $40, $21 | 1 * $40, $01 | 0 * $40 ;3C
	.BYTE $01 | 0 * $40, $20 | 1 * $40, $01 | 0 * $40, $21 | 1 * $40 ;3D
	.BYTE $03 | 2 * $40, $03 | 2 * $40, $30 | 1 * $40, $30 | 1 * $40 ;3E
	.BYTE $2A | 1 * $40, $32 | 1 * $40, $01 | 0 * $40, $04 | 3 * $40 ;3F
	.BYTE $01 | 0 * $40, $01 | 0 * $40, $11 | 1 * $40, $11 | 1 * $40 ;40
	.BYTE $12 | 1 * $40, $12 | 1 * $40, $12 | 1 * $40, $12 | 1 * $40 ;41
	.BYTE $12 | 1 * $40, $13 | 1 * $40, $12 | 1 * $40, $13 | 1 * $40 ;42
	.BYTE $10 | 0 * $40, $10 | 0 * $40, $10 | 0 * $40, $10 | 0 * $40 ;43
	.BYTE $23 | 0 * $40, $2B | 0 * $40, $23 | 0 * $40, $2B | 0 * $40 ;44
	.BYTE $2B | 0 * $40, $2B | 0 * $40, $2B | 0 * $40, $2B | 0 * $40 ;45
	.BYTE $03 | 2 * $40, $03 | 2 * $40, $2B | 0 * $40, $2B | 0 * $40 ;46
	.BYTE $32 | 1 * $40, $32 | 1 * $40, $21 | 1 * $40, $21 | 1 * $40 ;47
	.BYTE $32 | 1 * $40, $32 | 1 * $40, $23 | 0 * $40, $2B | 0 * $40 ;48
	.BYTE $32 | 1 * $40, $32 | 1 * $40, $2B | 0 * $40, $2B | 0 * $40 ;49
	.BYTE $23 | 0 * $40, $2B | 0 * $40, $30 | 1 * $40, $30 | 1 * $40 ;4A
	.BYTE $2B | 0 * $40, $2B | 0 * $40, $30 | 1 * $40, $30 | 1 * $40 ;4B
	.BYTE $32 | 1 * $40, $32 | 1 * $40, $00 | 0 * $40, $00 | 0 * $40 ;4C
	.BYTE $01 | 0 * $40, $01 | 0 * $40, $28 | 1 * $40, $30 | 1 * $40 ;4D
	.BYTE $2A | 1 * $40, $32 | 1 * $40, $01 | 0 * $40, $01 | 0 * $40 ;4E
	.BYTE $32 | 1 * $40, $32 | 1 * $40, $01 | 0 * $40, $01 | 0 * $40 ;4F
	.BYTE $24 | 0 * $40, $2C | 0 * $40, $25 | 0 * $40, $33 | 0 * $40 ;50
	.BYTE $26 | 0 * $40, $33 | 0 * $40, $27 | 0 * $40, $2F | 0 * $40 ;51
	.BYTE $34 | 0 * $40, $3C | 0 * $40, $33 | 0 * $40, $3D | 0 * $40 ;52
	.BYTE $33 | 0 * $40, $3E | 0 * $40, $37 | 0 * $40, $3F | 0 * $40 ;53
	.BYTE $01 | 0 * $40, $01 | 0 * $40, $38 | 0 * $40, $38 | 0 * $40 ;54
	.BYTE $39 | 0 * $40, $39 | 0 * $40, $01 | 0 * $40, $01 | 0 * $40 ;55
	.BYTE $01 | 0 * $40, $01 | 0 * $40, $24 | 0 * $40, $2C | 0 * $40 ;56
	.BYTE $25 | 0 * $40, $33 | 0 * $40, $26 | 0 * $40, $33 | 0 * $40 ;57
	.BYTE $27 | 0 * $40, $2F | 0 * $40, $01 | 0 * $40, $01 | 0 * $40 ;58
	.BYTE $01 | 0 * $40, $01 | 0 * $40, $34 | 0 * $40, $3C | 0 * $40 ;59
	.BYTE $33 | 0 * $40, $3D | 0 * $40, $33 | 0 * $40, $3E | 0 * $40 ;5A
	.BYTE $37 | 0 * $40, $3F | 0 * $40, $01 | 0 * $40, $01 | 0 * $40 ;5B
	.BYTE $38 | 0 * $40, $38 | 0 * $40, $39 | 0 * $40, $39 | 0 * $40 ;5C
	.BYTE $01 | 0 * $40, $2D | 0 * $40, $01 | 0 * $40, $2E | 0 * $40 ;5D
	.BYTE $35 | 0 * $40, $3A | 0 * $40, $36 | 0 * $40, $3B | 0 * $40 ;5E
	.BYTE $2D | 0 * $40, $35 | 0 * $40, $2E | 0 * $40, $36 | 0 * $40 ;5F
	.BYTE $3A | 0 * $40, $3A | 0 * $40, $3B | 0 * $40, $3B | 0 * $40 ;60
	.BYTE $39 | 0 * $40, $39 | 0 * $40, $24 | 0 * $40, $2C | 0 * $40 ;61
	.BYTE $39 | 0 * $40, $39 | 0 * $40, $34 | 0 * $40, $3C | 0 * $40 ;62
	.BYTE $01 | 0 * $40, $24 | 0 * $40, $01 | 0 * $40, $25 | 0 * $40 ;63
	.BYTE $01 | 0 * $40, $26 | 0 * $40, $01 | 0 * $40, $27 | 0 * $40 ;64
	.BYTE $00 | 0 * $40, $00 | 0 * $40, $00 | 0 * $40, $00 | 0 * $40 ;65
	.BYTE $2C | 0 * $40, $34 | 0 * $40, $33 | 0 * $40, $33 | 0 * $40 ;66
	.BYTE $33 | 0 * $40, $33 | 0 * $40, $2F | 0 * $40, $37 | 0 * $40 ;67
	.BYTE $00 | 0 * $40, $00 | 0 * $40, $00 | 0 * $40, $00 | 0 * $40 ;68
	.BYTE $37 | 0 * $40, $3F | 0 * $40, $01 | 0 * $40, $2D | 0 * $40 ;69
	.BYTE $01 | 0 * $40, $01 | 0 * $40, $35 | 0 * $40, $3A | 0 * $40 ;6A
	.BYTE $01 | 0 * $40, $2E | 0 * $40, $38 | 0 * $40, $38 | 0 * $40 ;6B
	.BYTE $36 | 0 * $40, $3B | 0 * $40, $38 | 0 * $40, $38 | 0 * $40 ;6C
	.BYTE $01 | 0 * $40, $01 | 0 * $40, $01 | 0 * $40, $2D | 0 * $40 ;6D
	.BYTE $39 | 0 * $40, $39 | 0 * $40, $35 | 0 * $40, $3A | 0 * $40 ;6E
	.BYTE $36 | 0 * $40, $3B | 0 * $40, $01 | 0 * $40, $01 | 0 * $40 ;6F
	.BYTE $20 | 1 * $40, $01 | 0 * $40, $21 | 1 * $40, $38 | 0 * $40 ;70
	.BYTE $21 | 1 * $40, $01 | 0 * $40, $28 | 1 * $40, $30 | 1 * $40 ;71
	.BYTE $39 | 0 * $40, $39 | 0 * $40, $2D | 0 * $40, $35 | 0 * $40 ;72
	.BYTE $2E | 0 * $40, $36 | 0 * $40, $01 | 0 * $40, $01 | 0 * $40 ;73
	.BYTE $39 | 0 * $40, $39 | 0 * $40, $3A | 0 * $40, $3A | 0 * $40 ;74
	.BYTE $3B | 0 * $40, $3B | 0 * $40, $01 | 0 * $40, $20 | 1 * $40 ;75
	.BYTE $3B | 0 * $40, $3B | 0 * $40, $01 | 0 * $40, $01 | 0 * $40 ;76
	.BYTE $21 | 1 * $40, $3B | 0 * $40, $21 | 1 * $40, $38 | 0 * $40 ;77
	.BYTE $21 | 1 * $40, $3B | 0 * $40, $21 | 1 * $40, $01 | 0 * $40 ;78
	.BYTE $21 | 1 * $40, $00 | 0 * $40, $21 | 1 * $40, $00 | 0 * $40 ;79
	.BYTE $21 | 1 * $40, $00 | 0 * $40, $30 | 1 * $40, $30 | 1 * $40 ;7A
	.BYTE $21 | 1 * $40, $01 | 0 * $40, $21 | 1 * $40, $3A | 0 * $40 ;7B
	.BYTE $01 | 0 * $40, $21 | 1 * $40, $01 | 0 * $40, $01 | 0 * $40 ;7C
	.BYTE $01 | 0 * $40, $21 | 1 * $40, $01 | 0 * $40, $21 | 1 * $40 ;7D
	.BYTE $00 | 0 * $40, $00 | 0 * $40, $00 | 0 * $40, $00 | 0 * $40 ;7E
	.BYTE $00 | 0 * $40, $00 | 0 * $40, $00 | 0 * $40, $00 | 0 * $40 ;7F
	.BYTE $2A | 0 * $40, $2B | 0 * $40, $2B | 0 * $40, $2B | 0 * $40 ;80
	.BYTE $2B | 0 * $40, $2B | 0 * $40, $2B | 0 * $40, $2B | 0 * $40 ;81
	.BYTE $20 | 1 * $40, $20 | 1 * $40, $20 | 1 * $40, $20 | 1 * $40 ;82
	.BYTE $2D | 0 * $40, $2E | 0 * $40, $2D | 0 * $40, $2E | 0 * $40 ;83
	.BYTE $2E | 0 * $40, $2E | 0 * $40, $2E | 0 * $40, $2E | 0 * $40 ;84
	.BYTE $2E | 0 * $40, $2F | 0 * $40, $2E | 0 * $40, $2F | 0 * $40 ;85
	.BYTE $2A | 0 * $40, $2A | 0 * $40, $2B | 0 * $40, $2B | 0 * $40 ;86
	.BYTE $2B | 0 * $40, $2B | 0 * $40, $2C | 0 * $40, $2C | 0 * $40 ;87
	.BYTE $22 | 0 * $40, $2A | 0 * $40, $23 | 0 * $40, $2B | 0 * $40 ;88
	.BYTE $23 | 0 * $40, $2B | 0 * $40, $24 | 0 * $40, $2C | 0 * $40 ;89
	.BYTE $20 | 1 * $40, $21 | 1 * $40, $20 | 1 * $40, $21 | 1 * $40 ;8A
	.BYTE $20 | 1 * $40, $29 | 1 * $40, $20 | 1 * $40, $20 | 1 * $40 ;8B
	.BYTE $28 | 1 * $40, $28 | 1 * $40, $20 | 1 * $40, $20 | 1 * $40 ;8C
	.BYTE $21 | 1 * $40, $20 | 1 * $40, $21 | 1 * $40, $20 | 1 * $40 ;8D
	.BYTE $21 | 1 * $40, $20 | 1 * $40, $29 | 1 * $40, $28 | 1 * $40 ;8E
	.BYTE $20 | 1 * $40, $20 | 1 * $40, $28 | 1 * $40, $28 | 1 * $40 ;8F
	.BYTE $20 | 1 * $40, $21 | 1 * $40, $28 | 1 * $40, $29 | 1 * $40 ;90
	.BYTE $20 | 1 * $40, $20 | 1 * $40, $20 | 1 * $40, $29 | 1 * $40 ;91
	.BYTE $29 | 1 * $40, $20 | 1 * $40, $20 | 1 * $40, $20 | 1 * $40 ;92
	.BYTE $29 | 1 * $40, $28 | 1 * $40, $21 | 1 * $40, $20 | 1 * $40 ;93
	.BYTE $29 | 1 * $40, $28 | 1 * $40, $20 | 1 * $40, $20 | 1 * $40 ;94
	.BYTE $21 | 1 * $40, $23 | 0 * $40, $21 | 1 * $40, $24 | 0 * $40 ;95
	.BYTE $20 | 1 * $40, $20 | 1 * $40, $28 | 1 * $40, $29 | 1 * $40 ;96
	.BYTE $2A | 0 * $40, $21 | 1 * $40, $2B | 0 * $40, $21 | 1 * $40 ;97
	.BYTE $20 | 1 * $40, $20 | 1 * $40, $29 | 1 * $40, $20 | 1 * $40 ;98
	.BYTE $28 | 1 * $40, $29 | 1 * $40, $20 | 1 * $40, $21 | 1 * $40 ;99
	.BYTE $2D | 0 * $40, $2F | 0 * $40, $2D | 0 * $40, $2F | 0 * $40 ;9A
	.BYTE $2D | 0 * $40, $2E | 0 * $40, $2D | 0 * $40, $2E | 0 * $40 ;9B
	.BYTE $2E | 0 * $40, $2E | 0 * $40, $2E | 0 * $40, $2E | 0 * $40 ;9C
	.BYTE $2E | 0 * $40, $2F | 0 * $40, $2E | 0 * $40, $2F | 0 * $40 ;9D
	.BYTE $25 | 0 * $40, $25 | 0 * $40, $25 | 0 * $40, $25 | 0 * $40 ;9E
	.BYTE $23 | 0 * $40, $2B | 0 * $40, $23 | 0 * $40, $2B | 0 * $40 ;9F
	.BYTE $20 | 1 * $40, $29 | 1 * $40, $20 | 1 * $40, $21 | 1 * $40 ;A0
	.BYTE $20 | 1 * $40, $21 | 1 * $40, $20 | 1 * $40, $29 | 1 * $40 ;A1
	.BYTE $28 | 1 * $40, $28 | 1 * $40, $2D | 0 * $40, $2E | 0 * $40 ;A2
	.BYTE $2D | 0 * $40, $2E | 0 * $40, $28 | 1 * $40, $28 | 1 * $40 ;A3
	.BYTE $28 | 1 * $40, $28 | 1 * $40, $2E | 0 * $40, $2E | 0 * $40 ;A4
	.BYTE $2E | 0 * $40, $2E | 0 * $40, $28 | 1 * $40, $28 | 1 * $40 ;A5
	.BYTE $28 | 1 * $40, $29 | 1 * $40, $2E | 0 * $40, $2E | 0 * $40 ;A6
	.BYTE $2E | 0 * $40, $2E | 0 * $40, $28 | 1 * $40, $29 | 1 * $40 ;A7
	.BYTE $2E | 0 * $40, $2F | 0 * $40, $2E | 0 * $40, $26 | 1 * $40 ;A8
	.BYTE $2E | 0 * $40, $26 | 1 * $40, $2E | 0 * $40, $2F | 0 * $40 ;A9
	.BYTE $2E | 0 * $40, $27 | 1 * $40, $2E | 0 * $40, $2E | 0 * $40 ;AA
	.BYTE $2E | 0 * $40, $2E | 0 * $40, $27 | 1 * $40, $2E | 0 * $40 ;AB
	.BYTE $2D | 0 * $40, $2E | 0 * $40, $2E | 0 * $40, $2E | 0 * $40 ;AC
	.BYTE $2E | 0 * $40, $2F | 0 * $40, $2D | 0 * $40, $2F | 0 * $40 ;AD
	.BYTE $29 | 1 * $40, $20 | 1 * $40, $21 | 1 * $40, $20 | 1 * $40 ;AE
	.BYTE $21 | 1 * $40, $20 | 1 * $40, $29 | 1 * $40, $20 | 1 * $40 ;AF
	.BYTE $38 | 0 * $40, $3A | 0 * $40, $39 | 0 * $40, $3B | 0 * $40 ;B0
	.BYTE $29 | 1 * $40, $29 | 1 * $40, $2E | 0 * $40, $2E | 0 * $40 ;B1
	.BYTE $2E | 0 * $40, $2E | 0 * $40, $29 | 1 * $40, $28 | 1 * $40 ;B2
	.BYTE $00 | 0 * $40, $00 | 0 * $40, $2E | 0 * $40, $2E | 0 * $40 ;B3
	.BYTE $2E | 0 * $40, $2E | 0 * $40, $00 | 0 * $40, $00 | 0 * $40 ;B4
	.BYTE $28 | 1 * $40, $29 | 1 * $40, $2E | 0 * $40, $2E | 0 * $40 ;B5
	.BYTE $2E | 0 * $40, $2E | 0 * $40, $28 | 1 * $40, $29 | 1 * $40 ;B6
	.BYTE $00 | 0 * $40, $00 | 0 * $40, $00 | 0 * $40, $00 | 0 * $40 ;B7
	.BYTE $28 | 1 * $40, $29 | 1 * $40, $00 | 0 * $40, $00 | 0 * $40 ;B8
	.BYTE $00 | 0 * $40, $00 | 0 * $40, $28 | 1 * $40, $29 | 1 * $40 ;B9
	.BYTE $00 | 0 * $40, $00 | 0 * $40, $00 | 0 * $40, $00 | 0 * $40 ;BA
	.BYTE $00 | 0 * $40, $00 | 0 * $40, $00 | 0 * $40, $00 | 0 * $40 ;BB
	.BYTE $00 | 0 * $40, $00 | 0 * $40, $00 | 0 * $40, $00 | 0 * $40 ;BC
	.BYTE $00 | 0 * $40, $00 | 0 * $40, $00 | 0 * $40, $00 | 0 * $40 ;BD
	.BYTE $00 | 0 * $40, $00 | 0 * $40, $00 | 0 * $40, $00 | 0 * $40 ;BE
	.BYTE $12 | 1 * $40, $13 | 1 * $40, $12 | 1 * $40, $13 | 1 * $40 ;BF

;attributes
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;00
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;01
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;02
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;03
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;04
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;05
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;06
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;07
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;08
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;09
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;0A
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;0B
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;0C
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;0D
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;0E
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_3 ;0F
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_0 ;10
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;11
	.BYTE topleft_palette_0 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_1 ;12
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;13
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;14
	.BYTE topleft_palette_0 | topright_palette_1 | bottomleft_palette_3 | bottomright_palette_3 ;15
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;16
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_3 ;17
	.BYTE topleft_palette_3 | topright_palette_1 | bottomleft_palette_3 | bottomright_palette_3 ;18
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;19
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;1A
	.BYTE topleft_palette_0 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;1B
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_0 ;1C
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_3 ;1D
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_0 ;1E
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;1F
	.BYTE topleft_palette_3 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;20
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_3 ;21
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_0 ;22
	.BYTE topleft_palette_3 | topright_palette_1 | bottomleft_palette_3 | bottomright_palette_3 ;23
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_1 ;24
	.BYTE topleft_palette_3 | topright_palette_1 | bottomleft_palette_3 | bottomright_palette_3 ;25
	.BYTE topleft_palette_3 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;26
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_0 ;27
	.BYTE topleft_palette_3 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;28
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;29
	.BYTE topleft_palette_3 | topright_palette_1 | bottomleft_palette_3 | bottomright_palette_1 ;2A
	.BYTE topleft_palette_3 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_0 ;2B
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_0 ;2C
	.BYTE topleft_palette_0 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_3 ;2D
	.BYTE topleft_palette_3 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_0 ;2E
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_1 ;2F
	.BYTE topleft_palette_0 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_1 ;30
	.BYTE topleft_palette_0 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_3 ;31
	.BYTE topleft_palette_0 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_3 ;32
	.BYTE topleft_palette_0 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_1 ;33
	.BYTE topleft_palette_0 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_1 ;34
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;35
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;36
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;37
	.BYTE topleft_palette_0 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_0 ;38
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_0 ;39
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_1 ;3A
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_3 ;3B
	.BYTE topleft_palette_3 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;3C
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_0 ;3D
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;3E
	.BYTE topleft_palette_0 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_1 ;3F
	.BYTE topleft_palette_3 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_0 ;40
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;41
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;42
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;43
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;44
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;45
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;46
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;47
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;48
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;49
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;4A
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;4B
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;4C
	.BYTE topleft_palette_3 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_0 ;4D
	.BYTE topleft_palette_0 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_3 ;4E
	.BYTE topleft_palette_0 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_3 ;4F
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;50
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;51
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;52
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;53
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;54
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;55
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;56
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;57
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;58
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;59
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;5A
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;5B
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;5C
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;5D
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;5E
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;5F
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;60
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;61
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;62
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;63
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;64
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;65
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;66
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;67
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;68
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;69
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;6A
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;6B
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;6C
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;6D
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;6E
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;6F
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;70
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_0 ;71
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;72
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;73
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;74
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_1 ;75
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;76
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;77
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;78
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;79
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;7A
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;7B
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_3 ;7C
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_0 ;7D
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;7E
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;7F
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;80
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;81
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;82
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;83
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;84
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;85
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;86
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;87
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;88
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;89
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_0 ;8A
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_3 ;8B
	.BYTE topleft_palette_0 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_3 ;8C
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;8D
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_0 ;8E
	.BYTE topleft_palette_3 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_0 ;8F
	.BYTE topleft_palette_3 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;90
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_0 ;91
	.BYTE topleft_palette_0 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;92
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_3 ;93
	.BYTE topleft_palette_0 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_3 ;94
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_1 ;95
	.BYTE topleft_palette_3 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_0 ;96
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_0 ;97
	.BYTE topleft_palette_3 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;98
	.BYTE topleft_palette_0 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_0 ;99
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;9A
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;9B
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;9C
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;9D
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;9E
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;9F
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_0 ;A0
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_0 ;A1
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;A2
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;A3
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;A4
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;A5
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;A6
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;A7
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_3 ;A8
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_2 ;A9
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_2 ;AA
	.BYTE topleft_palette_2 | topright_palette_3 | bottomleft_palette_2 | bottomright_palette_2 ;AB
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;AC
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;AD
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;AE
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;AF
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;B0
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;B1
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;B2
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;B3
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;B4
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;B5
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;B6
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;B7
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;B8
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;B9
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;BA
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;BB
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;BC
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;BD
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;BE
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;BF
