;background tile 16x16 id | block type attributes index
	;     topleft,       bottomleft,    topright,      bottomright
	.BYTE $00 | 0 * $40, $00 | 0 * $40, $00 | 0 * $40, $00 | 0 * $40 ;00
	.BYTE $01 | 0 * $40, $01 | 0 * $40, $01 | 0 * $40, $01 | 0 * $40 ;01
	.BYTE $20 | 2 * $40, $28 | 1 * $40, $21 | 2 * $40, $29 | 1 * $40 ;02
	.BYTE $28 | 1 * $40, $28 | 1 * $40, $29 | 1 * $40, $29 | 1 * $40 ;03
	.BYTE $22 | 2 * $40, $2A | 1 * $40, $22 | 2 * $40, $2A | 1 * $40 ;04
	.BYTE $2A | 1 * $40, $2A | 1 * $40, $2A | 1 * $40, $2A | 1 * $40 ;05
	.BYTE $2B | 1 * $40, $2A | 1 * $40, $2A | 1 * $40, $2A | 1 * $40 ;06
	.BYTE $2A | 1 * $40, $2B | 1 * $40, $2B | 1 * $40, $2A | 1 * $40 ;07
	.BYTE $28 | 1 * $40, $28 | 1 * $40, $2A | 1 * $40, $28 | 1 * $40 ;08
	.BYTE $2A | 1 * $40, $28 | 1 * $40, $28 | 1 * $40, $28 | 1 * $40 ;09
	.BYTE $28 | 1 * $40, $2C | 0 * $40, $29 | 1 * $40, $2C | 0 * $40 ;0A
	.BYTE $2A | 1 * $40, $2C | 0 * $40, $2A | 1 * $40, $2C | 0 * $40 ;0B
	.BYTE $2D | 0 * $40, $20 | 2 * $40, $2D | 0 * $40, $21 | 2 * $40 ;0C
	.BYTE $2A | 1 * $40, $2A | 1 * $40, $29 | 1 * $40, $29 | 1 * $40 ;0D
	.BYTE $28 | 1 * $40, $28 | 1 * $40, $29 | 1 * $40, $2A | 1 * $40 ;0E
	.BYTE $37 | 1 * $40, $28 | 1 * $40, $37 | 1 * $40, $29 | 1 * $40 ;0F
	.BYTE $2D | 0 * $40, $2D | 0 * $40, $2D | 0 * $40, $2D | 0 * $40 ;10
	.BYTE $24 | 0 * $40, $24 | 0 * $40, $25 | 0 * $40, $25 | 0 * $40 ;11
	.BYTE $2D | 0 * $40, $24 | 0 * $40, $2D | 0 * $40, $25 | 0 * $40 ;12
	.BYTE $23 | 3 * $40, $01 | 3 * $40, $23 | 3 * $40, $01 | 3 * $40 ;13
	.BYTE $01 | 3 * $40, $01 | 3 * $40, $01 | 3 * $40, $01 | 3 * $40 ;14
	.BYTE $26 | 1 * $40, $2E | 1 * $40, $27 | 1 * $40, $2F | 1 * $40 ;15
	.BYTE $36 | 1 * $40, $28 | 1 * $40, $2F | 1 * $40, $29 | 1 * $40 ;16
	.BYTE $2C | 0 * $40, $2D | 0 * $40, $2C | 0 * $40, $2D | 0 * $40 ;17
	.BYTE $28 | 1 * $40, $28 | 1 * $40, $2C | 0 * $40, $2D | 0 * $40 ;18
	.BYTE $28 | 1 * $40, $28 | 1 * $40, $2D | 0 * $40, $2D | 0 * $40 ;19
	.BYTE $2C | 0 * $40, $2D | 0 * $40, $2D | 0 * $40, $2D | 0 * $40 ;1A
	.BYTE $2C | 0 * $40, $2D | 0 * $40, $29 | 1 * $40, $29 | 1 * $40 ;1B
	.BYTE $2D | 0 * $40, $2D | 0 * $40, $29 | 1 * $40, $29 | 1 * $40 ;1C
	.BYTE $28 | 1 * $40, $28 | 1 * $40, $22 | 2 * $40, $2A | 1 * $40 ;1D
	.BYTE $20 | 2 * $40, $28 | 1 * $40, $29 | 1 * $40, $29 | 1 * $40 ;1E
	.BYTE $2D | 0 * $40, $22 | 2 * $40, $2D | 0 * $40, $22 | 2 * $40 ;1F
	.BYTE $3A | 0 * $40, $3D | 0 * $40, $01 | 0 * $40, $38 | 0 * $40 ;20
	.BYTE $01 | 0 * $40, $39 | 0 * $40, $01 | 0 * $40, $3A | 0 * $40 ;21
	.BYTE $38 | 0 * $40, $3B | 0 * $40, $39 | 0 * $40, $3C | 0 * $40 ;22
	.BYTE $33 | 0 * $40, $35 | 0 * $40, $34 | 0 * $40, $01 | 0 * $40 ;23
	.BYTE $35 | 0 * $40, $01 | 0 * $40, $01 | 0 * $40, $01 | 0 * $40 ;24
	.BYTE $34 | 0 * $40, $33 | 0 * $40, $35 | 0 * $40, $34 | 0 * $40 ;25
	.BYTE $3A | 0 * $40, $3D | 0 * $40, $01 | 0 * $40, $01 | 0 * $40 ;26
	.BYTE $01 | 0 * $40, $34 | 0 * $40, $01 | 0 * $40, $35 | 0 * $40 ;27
	.BYTE $01 | 0 * $40, $3F | 0 * $40, $3B | 0 * $40, $3F | 0 * $40 ;28
	.BYTE $3C | 0 * $40, $3F | 0 * $40, $3D | 0 * $40, $3F | 0 * $40 ;29
	.BYTE $3E | 0 * $40, $3E | 0 * $40, $3E | 0 * $40, $3E | 0 * $40 ;2A
	.BYTE $01 | 0 * $40, $01 | 0 * $40, $3B | 0 * $40, $3F | 0 * $40 ;2B
	.BYTE $3C | 0 * $40, $3E | 0 * $40, $3D | 0 * $40, $3F | 0 * $40 ;2C
	.BYTE $01 | 0 * $40, $01 | 0 * $40, $3E | 0 * $40, $3E | 0 * $40 ;2D
	.BYTE $3E | 0 * $40, $3F | 0 * $40, $01 | 0 * $40, $3F | 0 * $40 ;2E
	.BYTE $01 | 0 * $40, $3F | 0 * $40, $3E | 0 * $40, $3F | 0 * $40 ;2F
	.BYTE $30 | 0 * $40, $30 | 0 * $40, $30 | 0 * $40, $30 | 0 * $40 ;30
	.BYTE $30 | 0 * $40, $34 | 0 * $40, $30 | 0 * $40, $34 | 0 * $40 ;31
	.BYTE $30 | 0 * $40, $34 | 0 * $40, $31 | 0 * $40, $35 | 0 * $40 ;32
	.BYTE $34 | 0 * $40, $01 | 0 * $40, $34 | 0 * $40, $01 | 0 * $40 ;33
	.BYTE $34 | 0 * $40, $01 | 0 * $40, $35 | 0 * $40, $01 | 0 * $40 ;34
	.BYTE $32 | 0 * $40, $01 | 0 * $40, $32 | 0 * $40, $01 | 0 * $40 ;35
	.BYTE $31 | 0 * $40, $33 | 0 * $40, $30 | 0 * $40, $34 | 0 * $40 ;36
	.BYTE $33 | 0 * $40, $01 | 0 * $40, $34 | 0 * $40, $01 | 0 * $40 ;37
	.BYTE $01 | 0 * $40, $33 | 0 * $40, $01 | 0 * $40, $34 | 0 * $40 ;38
	.BYTE $01 | 0 * $40, $34 | 0 * $40, $01 | 0 * $40, $34 | 0 * $40 ;39
	.BYTE $01 | 0 * $40, $35 | 0 * $40, $01 | 0 * $40, $01 | 0 * $40 ;3A
	.BYTE $30 | 0 * $40, $30 | 0 * $40, $30 | 0 * $40, $31 | 0 * $40 ;3B
	.BYTE $30 | 0 * $40, $32 | 0 * $40, $30 | 0 * $40, $32 | 0 * $40 ;3C
	.BYTE $30 | 0 * $40, $31 | 0 * $40, $30 | 0 * $40, $30 | 0 * $40 ;3D
	.BYTE $34 | 0 * $40, $34 | 0 * $40, $34 | 0 * $40, $35 | 0 * $40 ;3E
	.BYTE $34 | 0 * $40, $33 | 0 * $40, $34 | 0 * $40, $34 | 0 * $40 ;3F
	.BYTE $2D | 0 * $40, $2D | 0 * $40, $11 | 1 * $40, $11 | 1 * $40 ;40
	.BYTE $12 | 1 * $40, $12 | 1 * $40, $12 | 1 * $40, $12 | 1 * $40 ;41
	.BYTE $12 | 1 * $40, $13 | 1 * $40, $12 | 1 * $40, $13 | 1 * $40 ;42
	.BYTE $10 | 0 * $40, $10 | 0 * $40, $10 | 0 * $40, $10 | 0 * $40 ;43
	.BYTE $2C | 0 * $40, $2D | 0 * $40, $10 | 0 * $40, $10 | 0 * $40 ;44
	.BYTE $2D | 0 * $40, $2D | 0 * $40, $10 | 0 * $40, $10 | 0 * $40 ;45
	.BYTE $34 | 0 * $40, $34 | 0 * $40, $34 | 0 * $40, $34 | 0 * $40 ;46
	.BYTE $30 | 0 * $40, $32 | 0 * $40, $30 | 0 * $40, $34 | 0 * $40 ;47
	.BYTE $33 | 0 * $40, $34 | 0 * $40, $34 | 0 * $40, $35 | 0 * $40 ;48
	.BYTE $34 | 0 * $40, $34 | 0 * $40, $35 | 0 * $40, $34 | 0 * $40 ;49
	.BYTE $0A | 1 * $40, $12 | 1 * $40, $17 | 0 * $40, $17 | 0 * $40 ;4A
	.BYTE $08 | 0 * $40, $10 | 0 * $40, $0A | 0 * $40, $12 | 0 * $40 ;4B
	.BYTE $08 | 0 * $40, $10 | 0 * $40, $09 | 0 * $40, $11 | 0 * $40 ;4C
	.BYTE $09 | 0 * $40, $11 | 0 * $40, $0A | 0 * $40, $12 | 0 * $40 ;4D
	.BYTE $01 | 0 * $40, $04 | 3 * $40, $08 | 1 * $40, $10 | 1 * $40 ;4E
	.BYTE $01 | 0 * $40, $01 | 0 * $40, $01 | 0 * $40, $01 | 0 * $40 ;4F
	.BYTE $0E | 1 * $40, $10 | 1 * $40, $0E | 1 * $40, $11 | 1 * $40 ;50
	.BYTE $0E | 1 * $40, $12 | 1 * $40, $0E | 1 * $40, $10 | 1 * $40 ;51
	.BYTE $0E | 1 * $40, $11 | 1 * $40, $0E | 1 * $40, $12 | 1 * $40 ;52
	.BYTE $01 | 0 * $40, $2F | 1 * $40, $01 | 0 * $40, $24 | 1 * $40 ;53
	.BYTE $01 | 0 * $40, $01 | 0 * $40, $01 | 0 * $40, $2F | 1 * $40 ;54
	.BYTE $01 | 0 * $40, $2E | 1 * $40, $01 | 0 * $40, $2F | 1 * $40 ;55
	.BYTE $28 | 1 * $40, $00 | 0 * $40, $29 | 1 * $40, $00 | 0 * $40 ;56
	.BYTE $2A | 1 * $40, $12 | 1 * $40, $2B | 1 * $40, $10 | 1 * $40 ;57
	.BYTE $0A | 1 * $40, $12 | 1 * $40, $27 | 0 * $40, $25 | 0 * $40 ;58
	.BYTE $26 | 0 * $40, $25 | 0 * $40, $25 | 0 * $40, $26 | 0 * $40 ;59
	.BYTE $25 | 0 * $40, $26 | 0 * $40, $26 | 0 * $40, $27 | 0 * $40 ;5A
	.BYTE $26 | 0 * $40, $25 | 0 * $40, $27 | 0 * $40, $26 | 0 * $40 ;5B
	.BYTE $25 | 0 * $40, $27 | 0 * $40, $26 | 0 * $40, $27 | 0 * $40 ;5C
	.BYTE $25 | 0 * $40, $27 | 0 * $40, $27 | 0 * $40, $25 | 0 * $40 ;5D
	.BYTE $27 | 0 * $40, $26 | 0 * $40, $26 | 0 * $40, $25 | 0 * $40 ;5E
	.BYTE $25 | 0 * $40, $27 | 0 * $40, $08 | 1 * $40, $10 | 1 * $40 ;5F
	.BYTE $0A | 1 * $40, $12 | 1 * $40, $27 | 0 * $40, $26 | 0 * $40 ;60
	.BYTE $26 | 0 * $40, $25 | 0 * $40, $27 | 0 * $40, $26 | 0 * $40 ;61
	.BYTE $25 | 0 * $40, $27 | 0 * $40, $25 | 0 * $40, $25 | 0 * $40 ;62
	.BYTE $27 | 0 * $40, $26 | 0 * $40, $25 | 0 * $40, $26 | 0 * $40 ;63
	.BYTE $27 | 0 * $40, $25 | 0 * $40, $25 | 0 * $40, $26 | 0 * $40 ;64
	.BYTE $26 | 0 * $40, $25 | 0 * $40, $27 | 0 * $40, $25 | 0 * $40 ;65
	.BYTE $26 | 0 * $40, $27 | 0 * $40, $26 | 0 * $40, $27 | 0 * $40 ;66
	.BYTE $26 | 0 * $40, $25 | 0 * $40, $08 | 1 * $40, $10 | 1 * $40 ;67
	.BYTE $0A | 1 * $40, $12 | 1 * $40, $25 | 0 * $40, $26 | 0 * $40 ;68
	.BYTE $27 | 0 * $40, $26 | 0 * $40, $25 | 0 * $40, $27 | 0 * $40 ;69
	.BYTE $27 | 0 * $40, $25 | 0 * $40, $26 | 0 * $40, $25 | 0 * $40 ;6A
	.BYTE $26 | 0 * $40, $27 | 0 * $40, $25 | 0 * $40, $25 | 0 * $40 ;6B
	.BYTE $27 | 0 * $40, $26 | 0 * $40, $26 | 0 * $40, $25 | 0 * $40 ;6C
	.BYTE $25 | 0 * $40, $27 | 0 * $40, $27 | 0 * $40, $26 | 0 * $40 ;6D
	.BYTE $26 | 0 * $40, $27 | 0 * $40, $26 | 0 * $40, $25 | 0 * $40 ;6E
	.BYTE $25 | 0 * $40, $27 | 0 * $40, $08 | 1 * $40, $10 | 1 * $40 ;6F
	.BYTE $17 | 0 * $40, $17 | 0 * $40, $08 | 1 * $40, $10 | 1 * $40 ;70
	.BYTE $27 | 0 * $40, $27 | 0 * $40, $26 | 0 * $40, $25 | 0 * $40 ;71
	.BYTE $27 | 0 * $40, $26 | 0 * $40, $26 | 0 * $40, $27 | 0 * $40 ;72
	.BYTE $26 | 0 * $40, $27 | 0 * $40, $27 | 0 * $40, $26 | 0 * $40 ;73
	.BYTE $26 | 0 * $40, $25 | 0 * $40, $27 | 0 * $40, $26 | 0 * $40 ;74
	.BYTE $25 | 0 * $40, $26 | 0 * $40, $27 | 0 * $40, $27 | 0 * $40 ;75
	.BYTE $26 | 0 * $40, $26 | 0 * $40, $26 | 0 * $40, $27 | 0 * $40 ;76
	.BYTE $27 | 0 * $40, $25 | 0 * $40, $08 | 1 * $40, $10 | 1 * $40 ;77
	.BYTE $0A | 1 * $40, $12 | 1 * $40, $25 | 0 * $40, $27 | 0 * $40 ;78
	.BYTE $26 | 0 * $40, $27 | 0 * $40, $27 | 0 * $40, $25 | 0 * $40 ;79
	.BYTE $25 | 0 * $40, $27 | 0 * $40, $26 | 0 * $40, $26 | 0 * $40 ;7A
	.BYTE $25 | 0 * $40, $25 | 0 * $40, $26 | 0 * $40, $27 | 0 * $40 ;7B
	.BYTE $27 | 0 * $40, $27 | 0 * $40, $25 | 0 * $40, $26 | 0 * $40 ;7C
	.BYTE $27 | 0 * $40, $25 | 0 * $40, $25 | 0 * $40, $25 | 0 * $40 ;7D
	.BYTE $25 | 0 * $40, $27 | 0 * $40, $27 | 0 * $40, $25 | 0 * $40 ;7E
	.BYTE $26 | 0 * $40, $26 | 0 * $40, $08 | 1 * $40, $10 | 1 * $40 ;7F
	.BYTE $09 | 1 * $40, $11 | 1 * $40, $0A | 1 * $40, $12 | 1 * $40 ;80
	.BYTE $08 | 1 * $40, $10 | 1 * $40, $0A | 1 * $40, $12 | 1 * $40 ;81
	.BYTE $08 | 1 * $40, $10 | 1 * $40, $09 | 1 * $40, $11 | 1 * $40 ;82
	.BYTE $0E | 1 * $40, $0E | 1 * $40, $0E | 1 * $40, $0E | 1 * $40 ;83
	.BYTE $0E | 1 * $40, $0E | 1 * $40, $0E | 1 * $40, $21 | 1 * $40 ;84
	.BYTE $0E | 1 * $40, $01 | 0 * $40, $0E | 1 * $40, $01 | 0 * $40 ;85
	.BYTE $21 | 1 * $40, $01 | 0 * $40, $01 | 0 * $40, $01 | 0 * $40 ;86
	.BYTE $0E | 1 * $40, $01 | 0 * $40, $01 | 0 * $40, $01 | 0 * $40 ;87
	.BYTE $01 | 0 * $40, $01 | 0 * $40, $0E | 1 * $40, $01 | 0 * $40 ;88
	.BYTE $01 | 0 * $40, $01 | 0 * $40, $01 | 0 * $40, $0E | 1 * $40 ;89
	.BYTE $01 | 0 * $40, $0E | 1 * $40, $01 | 0 * $40, $0E | 1 * $40 ;8A
	.BYTE $01 | 0 * $40, $01 | 0 * $40, $20 | 1 * $40, $01 | 0 * $40 ;8B
	.BYTE $01 | 0 * $40, $2F | 1 * $40, $01 | 0 * $40, $01 | 0 * $40 ;8C
	.BYTE $00 | 0 * $40, $0E | 1 * $40, $24 | 0 * $40, $24 | 1 * $40 ;8D
	.BYTE $17 | 0 * $40, $0E | 1 * $40, $17 | 0 * $40, $0E | 1 * $40 ;8E
	.BYTE $2E | 0 * $40, $2E | 1 * $40, $00 | 0 * $40, $0E | 1 * $40 ;8F
	.BYTE $00 | 0 * $40, $00 | 0 * $40, $24 | 0 * $40, $24 | 0 * $40 ;90
	.BYTE $17 | 0 * $40, $17 | 0 * $40, $17 | 0 * $40, $17 | 0 * $40 ;91
	.BYTE $2E | 0 * $40, $2E | 0 * $40, $00 | 0 * $40, $00 | 0 * $40 ;92
	.BYTE $2F | 1 * $40, $00 | 0 * $40, $24 | 0 * $40, $24 | 0 * $40 ;93
	.BYTE $0E | 1 * $40, $16 | 0 * $40, $0E | 1 * $40, $16 | 0 * $40 ;94
	.BYTE $2E | 0 * $40, $2E | 0 * $40, $2F | 1 * $40, $00 | 0 * $40 ;95
	.BYTE $0A | 1 * $40, $12 | 1 * $40, $08 | 1 * $40, $10 | 1 * $40 ;96
	.BYTE $0E | 1 * $40, $20 | 1 * $40, $0E | 1 * $40, $0E | 1 * $40 ;97
	.BYTE $01 | 0 * $40, $01 | 0 * $40, $20 | 1 * $40, $01 | 0 * $40 ;98
	.BYTE $0E | 1 * $40, $10 | 1 * $40, $0E | 1 * $40, $11 | 1 * $40 ;99
	.BYTE $0E | 1 * $40, $12 | 1 * $40, $05 | 2 * $40, $05 | 2 * $40 ;9A
	.BYTE $0A | 1 * $40, $12 | 1 * $40, $05 | 2 * $40, $05 | 2 * $40 ;9B
	.BYTE $01 | 0 * $40, $0E | 1 * $40, $01 | 0 * $40, $01 | 0 * $40 ;9C
	.BYTE $16 | 0 * $40, $17 | 0 * $40, $17 | 0 * $40, $17 | 0 * $40 ;9D
	.BYTE $17 | 0 * $40, $17 | 0 * $40, $0E | 1 * $40, $16 | 0 * $40 ;9E
	.BYTE $17 | 0 * $40, $0E | 1 * $40, $17 | 0 * $40, $17 | 0 * $40 ;9F
	.BYTE $20 | 1 * $40, $01 | 0 * $40, $0E | 1 * $40, $20 | 1 * $40 ;A0
	.BYTE $17 | 0 * $40, $0E | 1 * $40, $17 | 0 * $40, $05 | 2 * $40 ;A1
	.BYTE $01 | 0 * $40, $04 | 3 * $40, $01 | 0 * $40, $04 | 3 * $40 ;A2
	.BYTE $16 | 0 * $40, $17 | 0 * $40, $16 | 0 * $40, $17 | 0 * $40 ;A3
	.BYTE $0E | 1 * $40, $10 | 1 * $40, $0E | 1 * $40, $12 | 1 * $40 ;A4
	.BYTE $05 | 2 * $40, $05 | 2 * $40, $08 | 1 * $40, $10 | 1 * $40 ;A5
	.BYTE $17 | 0 * $40, $17 | 0 * $40, $16 | 0 * $40, $17 | 0 * $40 ;A6
	.BYTE $01 | 0 * $40, $22 | 1 * $40, $22 | 1 * $40, $0E | 1 * $40 ;A7
	.BYTE $16 | 0 * $40, $23 | 0 * $40, $16 | 0 * $40, $24 | 0 * $40 ;A8
	.BYTE $23 | 0 * $40, $17 | 0 * $40, $24 | 0 * $40, $17 | 0 * $40 ;A9
	.BYTE $17 | 0 * $40, $05 | 2 * $40, $17 | 0 * $40, $0E | 1 * $40 ;AA
	.BYTE $01 | 0 * $40, $01 | 0 * $40, $05 | 2 * $40, $05 | 2 * $40 ;AB
	.BYTE $01 | 0 * $40, $01 | 0 * $40, $05 | 2 * $40, $0E | 1 * $40 ;AC
	.BYTE $01 | 0 * $40, $01 | 0 * $40, $08 | 1 * $40, $10 | 1 * $40 ;AD
	.BYTE $01 | 0 * $40, $04 | 3 * $40, $04 | 3 * $40, $0E | 1 * $40 ;AE
	.BYTE $17 | 0 * $40, $17 | 0 * $40, $17 | 0 * $40, $0E | 1 * $40 ;AF
	.BYTE $0E | 1 * $40, $16 | 0 * $40, $17 | 0 * $40, $17 | 0 * $40 ;B0
	.BYTE $0E | 1 * $40, $16 | 0 * $40, $0E | 1 * $40, $16 | 0 * $40 ;B1
	.BYTE $17 | 0 * $40, $05 | 2 * $40, $17 | 0 * $40, $0E | 1 * $40 ;B2
	.BYTE $10 | 0 * $40, $08 | 1 * $40, $12 | 0 * $40, $0A | 1 * $40 ;B3
	.BYTE $01 | 0 * $40, $08 | 1 * $40, $01 | 0 * $40, $0A | 1 * $40 ;B4
	.BYTE $01 | 0 * $40, $0E | 1 * $40, $00 | 0 * $40, $0E | 1 * $40 ;B5
	.BYTE $00 | 0 * $40, $0E | 1 * $40, $01 | 0 * $40, $0E | 1 * $40 ;B6
	.BYTE $01 | 0 * $40, $01 | 0 * $40, $00 | 0 * $40, $00 | 0 * $40 ;B7
	.BYTE $00 | 0 * $40, $00 | 0 * $40, $01 | 0 * $40, $01 | 0 * $40 ;B8
	.BYTE $01 | 0 * $40, $01 | 0 * $40, $2F | 1 * $40, $00 | 0 * $40 ;B9
	.BYTE $2F | 1 * $40, $00 | 0 * $40, $01 | 0 * $40, $01 | 0 * $40 ;BA
	.BYTE $00 | 0 * $40, $00 | 0 * $40, $08 | 1 * $40, $10 | 1 * $40 ;BB
	.BYTE $10 | 0 * $40, $08 | 0 * $40, $12 | 0 * $40, $0A | 0 * $40 ;BC
	.BYTE $23 | 0 * $40, $23 | 0 * $40, $24 | 0 * $40, $24 | 0 * $40 ;BD
	.BYTE $0A | 1 * $40, $12 | 1 * $40, $0E | 1 * $40, $10 | 1 * $40 ;BE
	.BYTE $0E | 1 * $40, $12 | 1 * $40, $08 | 1 * $40, $10 | 1 * $40 ;BF

;attributes
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;00
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;01
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;02
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;03
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;04
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;05
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;06
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;07
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;08
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;09
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;0A
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;0B
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_0 ;0C
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;0D
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;0E
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;0F
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;10
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;11
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_0 ;12
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;13
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;14
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;15
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;16
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;17
	.BYTE topleft_palette_0 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_3 ;18
	.BYTE topleft_palette_0 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_3 ;19
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;1A
	.BYTE topleft_palette_3 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_0 ;1B
	.BYTE topleft_palette_3 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_0 ;1C
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;1D
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;1E
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_0 ;1F
	.BYTE topleft_palette_2 | topright_palette_1 | bottomleft_palette_2 | bottomright_palette_2 ;20
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_2 | bottomright_palette_2 ;21
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;22
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;23
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;24
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;25
	.BYTE topleft_palette_2 | topright_palette_1 | bottomleft_palette_2 | bottomright_palette_1 ;26
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;27
	.BYTE topleft_palette_1 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;28
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;29
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;2A
	.BYTE topleft_palette_1 | topright_palette_2 | bottomleft_palette_1 | bottomright_palette_2 ;2B
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;2C
	.BYTE topleft_palette_1 | topright_palette_2 | bottomleft_palette_1 | bottomright_palette_2 ;2D
	.BYTE topleft_palette_2 | topright_palette_1 | bottomleft_palette_2 | bottomright_palette_2 ;2E
	.BYTE topleft_palette_1 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;2F
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;30
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;31
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;32
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;33
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;34
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;35
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;36
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;37
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;38
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;39
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;3A
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;3B
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;3C
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;3D
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;3E
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;3F
	.BYTE topleft_palette_3 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_0 ;40
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;41
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;42
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;43
	.BYTE topleft_palette_3 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_0 ;44
	.BYTE topleft_palette_3 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_0 ;45
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;46
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;47
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;48
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;49
	.BYTE topleft_palette_1 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_3 ;4A
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;4B
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;4C
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;4D
	.BYTE topleft_palette_2 | topright_palette_1 | bottomleft_palette_2 | bottomright_palette_1 ;4E
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;4F
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;50
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;51
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;52
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_0 ;53
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_0 ;54
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_0 ;55
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;56
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_1 ;57
	.BYTE topleft_palette_1 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_3 ;58
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;59
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;5A
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;5B
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;5C
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;5D
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;5E
	.BYTE topleft_palette_3 | topright_palette_1 | bottomleft_palette_3 | bottomright_palette_1 ;5F
	.BYTE topleft_palette_1 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_3 ;60
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;61
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;62
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;63
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;64
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;65
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;66
	.BYTE topleft_palette_3 | topright_palette_1 | bottomleft_palette_3 | bottomright_palette_1 ;67
	.BYTE topleft_palette_1 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_3 ;68
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;69
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;6A
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;6B
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;6C
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;6D
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;6E
	.BYTE topleft_palette_3 | topright_palette_1 | bottomleft_palette_3 | bottomright_palette_1 ;6F
	.BYTE topleft_palette_3 | topright_palette_1 | bottomleft_palette_3 | bottomright_palette_1 ;70
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;71
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;72
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;73
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;74
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;75
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;76
	.BYTE topleft_palette_3 | topright_palette_1 | bottomleft_palette_3 | bottomright_palette_1 ;77
	.BYTE topleft_palette_1 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_3 ;78
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;79
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;7A
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;7B
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;7C
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;7D
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;7E
	.BYTE topleft_palette_3 | topright_palette_1 | bottomleft_palette_3 | bottomright_palette_1 ;7F
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;80
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;81
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;82
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;83
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_2 ;84
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_2 | bottomright_palette_2 ;85
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;86
	.BYTE topleft_palette_1 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;87
	.BYTE topleft_palette_2 | topright_palette_1 | bottomleft_palette_2 | bottomright_palette_2 ;88
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_1 ;89
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_1 | bottomright_palette_1 ;8A
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;8B
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;8C
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_0 ;8D
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_1 ;8E
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_1 ;8F
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;90
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;91
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;92
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;93
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_3 | bottomright_palette_3 ;94
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;95
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;96
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_2 | bottomright_palette_1 ;97
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;98
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;99
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_0 ;9A
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_0 ;9B
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_1 | bottomright_palette_2 ;9C
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;9D
	.BYTE topleft_palette_3 | topright_palette_1 | bottomleft_palette_3 | bottomright_palette_3 ;9E
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_3 ;9F
	.BYTE topleft_palette_2 | topright_palette_1 | bottomleft_palette_2 | bottomright_palette_2 ;A0
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_0 ;A1
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;A2
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;A3
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;A4
	.BYTE topleft_palette_0 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_1 ;A5
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;A6
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_1 ;A7
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_2 | bottomright_palette_2 ;A8
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_3 ;A9
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_1 ;AA
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;AB
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_1 ;AC
	.BYTE topleft_palette_2 | topright_palette_1 | bottomleft_palette_2 | bottomright_palette_1 ;AD
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_1 ;AE
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_1 ;AF
	.BYTE topleft_palette_1 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;B0
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_3 | bottomright_palette_3 ;B1
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_1 ;B2
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;B3
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_1 | bottomright_palette_1 ;B4
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_1 ;B5
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_1 | bottomright_palette_1 ;B6
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;B7
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;B8
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;B9
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;BA
	.BYTE topleft_palette_0 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_1 ;BB
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;BC
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;BD
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;BE
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;BF
