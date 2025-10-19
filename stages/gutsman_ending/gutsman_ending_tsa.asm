;background tile 16x16 id | block type attributes index
	;     topleft,      bottomleft,   topright,     bottomright
	.BYTE $00 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6 ;00
	.BYTE $01 | 0 << 6, $01 | 0 << 6, $01 | 0 << 6, $01 | 0 << 6 ;01
	.BYTE $3E | 0 << 6, $20 | 0 << 6, $3F | 0 << 6, $28 | 0 << 6 ;02
	.BYTE $29 | 1 << 6, $31 | 1 << 6, $2A | 1 << 6, $32 | 1 << 6 ;03
	.BYTE $30 | 1 << 6, $31 | 1 << 6, $30 | 1 << 6, $32 | 1 << 6 ;04
	.BYTE $30 | 1 << 6, $31 | 1 << 6, $30 | 1 << 6, $2B | 1 << 6 ;05
	.BYTE $29 | 1 << 6, $31 | 1 << 6, $2B | 1 << 6, $2B | 1 << 6 ;06
	.BYTE $01 | 0 << 6, $01 | 0 << 6, $24 | 0 << 6, $24 | 0 << 6 ;07
	.BYTE $01 | 0 << 6, $01 | 0 << 6, $21 | 0 << 6, $01 | 0 << 6 ;08
	.BYTE $01 | 0 << 6, $01 | 0 << 6, $21 | 0 << 6, $24 | 0 << 6 ;09
	.BYTE $22 | 0 << 6, $01 | 0 << 6, $22 | 0 << 6, $01 | 0 << 6 ;0A
	.BYTE $22 | 0 << 6, $01 | 0 << 6, $23 | 0 << 6, $01 | 0 << 6 ;0B
	.BYTE $23 | 0 << 6, $01 | 0 << 6, $23 | 0 << 6, $01 | 0 << 6 ;0C
	.BYTE $23 | 0 << 6, $01 | 0 << 6, $22 | 0 << 6, $01 | 0 << 6 ;0D
	.BYTE $22 | 0 << 6, $01 | 0 << 6, $21 | 0 << 6, $24 | 0 << 6 ;0E
	.BYTE $22 | 0 << 6, $01 | 0 << 6, $21 | 0 << 6, $01 | 0 << 6 ;0F
	.BYTE $04 | 2 << 6, $33 | 1 << 6, $04 | 2 << 6, $33 | 1 << 6 ;10
	.BYTE $21 | 0 << 6, $24 | 0 << 6, $01 | 0 << 6, $01 | 0 << 6 ;11
	.BYTE $24 | 0 << 6, $24 | 0 << 6, $01 | 0 << 6, $01 | 0 << 6 ;12
	.BYTE $21 | 0 << 6, $01 | 0 << 6, $01 | 0 << 6, $01 | 0 << 6 ;13
	.BYTE $23 | 0 << 6, $01 | 0 << 6, $21 | 0 << 6, $01 | 0 << 6 ;14
	.BYTE $30 | 1 << 6, $2B | 1 << 6, $33 | 1 << 6, $01 | 0 << 6 ;15
	.BYTE $33 | 1 << 6, $01 | 0 << 6, $33 | 1 << 6, $27 | 1 << 6 ;16
	.BYTE $33 | 1 << 6, $01 | 0 << 6, $01 | 0 << 6, $01 | 0 << 6 ;17
	.BYTE $01 | 0 << 6, $01 | 0 << 6, $33 | 1 << 6, $27 | 1 << 6 ;18
	.BYTE $01 | 0 << 6, $01 | 0 << 6, $27 | 1 << 6, $27 | 1 << 6 ;19
	.BYTE $33 | 1 << 6, $33 | 1 << 6, $33 | 1 << 6, $33 | 1 << 6 ;1A
	.BYTE $01 | 0 << 6, $04 | 2 << 6, $01 | 0 << 6, $04 | 2 << 6 ;1B
	.BYTE $01 | 0 << 6, $04 | 2 << 6, $27 | 1 << 6, $04 | 2 << 6 ;1C
	.BYTE $33 | 1 << 6, $33 | 1 << 6, $2A | 1 << 6, $32 | 1 << 6 ;1D
	.BYTE $01 | 0 << 6, $01 | 0 << 6, $2A | 1 << 6, $32 | 1 << 6 ;1E
	.BYTE $33 | 1 << 6, $01 | 0 << 6, $30 | 1 << 6, $32 | 1 << 6 ;1F
	.BYTE $30 | 1 << 6, $2B | 1 << 6, $33 | 1 << 6, $2E | 1 << 6 ;20
	.BYTE $2B | 1 << 6, $2B | 1 << 6, $2E | 1 << 6, $2E | 1 << 6 ;21
	.BYTE $01 | 0 << 6, $01 | 0 << 6, $2F | 1 << 6, $01 | 0 << 6 ;22
	.BYTE $2F | 1 << 6, $01 | 0 << 6, $01 | 0 << 6, $01 | 0 << 6 ;23
	.BYTE $36 | 1 << 6, $36 | 1 << 6, $2A | 1 << 6, $32 | 1 << 6 ;24
	.BYTE $2E | 1 << 6, $2E | 1 << 6, $2F | 1 << 6, $2F | 1 << 6 ;25
	.BYTE $2B | 1 << 6, $31 | 1 << 6, $2E | 1 << 6, $2B | 1 << 6 ;26
	.BYTE $01 | 0 << 6, $2E | 1 << 6, $01 | 0 << 6, $2F | 1 << 6 ;27
	.BYTE $2F | 1 << 6, $2F | 1 << 6, $2F | 1 << 6, $2F | 1 << 6 ;28
	.BYTE $10 | 0 << 6, $10 | 0 << 6, $10 | 0 << 6, $10 | 0 << 6 ;29
	.BYTE $29 | 1 << 6, $2D | 1 << 6, $2A | 1 << 6, $2D | 1 << 6 ;2A
	.BYTE $35 | 0 << 6, $35 | 0 << 6, $35 | 0 << 6, $35 | 0 << 6 ;2B
	.BYTE $35 | 0 << 6, $35 | 0 << 6, $10 | 0 << 6, $10 | 0 << 6 ;2C
	.BYTE $38 | 0 << 6, $3A | 0 << 6, $39 | 0 << 6, $3B | 0 << 6 ;2D
	.BYTE $01 | 0 << 6, $01 | 0 << 6, $30 | 1 << 6, $32 | 1 << 6 ;2E
	.BYTE $33 | 1 << 6, $01 | 0 << 6, $33 | 1 << 6, $01 | 0 << 6 ;2F
	.BYTE $3E | 0 << 6, $20 | 0 << 6, $3D | 0 << 6, $28 | 0 << 6 ;30
	.BYTE $01 | 0 << 6, $3D | 0 << 6, $01 | 0 << 6, $3C | 0 << 6 ;31
	.BYTE $3C | 0 << 6, $20 | 0 << 6, $3F | 0 << 6, $28 | 0 << 6 ;32
	.BYTE $3E | 0 << 6, $20 | 0 << 6, $26 | 0 << 6, $2C | 0 << 6 ;33
	.BYTE $3E | 0 << 6, $26 | 0 << 6, $3F | 0 << 6, $28 | 0 << 6 ;34
	.BYTE $2C | 0 << 6, $20 | 0 << 6, $26 | 0 << 6, $2C | 0 << 6 ;35
	.BYTE $01 | 0 << 6, $3C | 0 << 6, $3C | 0 << 6, $28 | 0 << 6 ;36
	.BYTE $3D | 0 << 6, $20 | 0 << 6, $01 | 0 << 6, $3D | 0 << 6 ;37
	.BYTE $01 | 0 << 6, $01 | 0 << 6, $3F | 0 << 6, $28 | 0 << 6 ;38
	.BYTE $01 | 0 << 6, $01 | 0 << 6, $3C | 0 << 6, $28 | 0 << 6 ;39
	.BYTE $3D | 0 << 6, $20 | 0 << 6, $01 | 0 << 6, $01 | 0 << 6 ;3A
	.BYTE $3E | 0 << 6, $20 | 0 << 6, $01 | 0 << 6, $01 | 0 << 6 ;3B
	.BYTE $33 | 1 << 6, $20 | 0 << 6, $33 | 1 << 6, $28 | 0 << 6 ;3C
	.BYTE $25 | 0 << 6, $34 | 0 << 6, $34 | 0 << 6, $28 | 0 << 6 ;3D
	.BYTE $3E | 0 << 6, $20 | 0 << 6, $3F | 0 << 6, $25 | 0 << 6 ;3E
	.BYTE $3E | 0 << 6, $20 | 0 << 6, $34 | 0 << 6, $28 | 0 << 6 ;3F
	.BYTE $3E | 0 << 6, $26 | 0 << 6, $3F | 0 << 6, $25 | 0 << 6 ;40
	.BYTE $25 | 0 << 6, $37 | 0 << 6, $00 | 0 << 6, $37 | 0 << 6 ;41
	.BYTE $00 | 0 << 6, $37 | 0 << 6, $00 | 0 << 6, $37 | 0 << 6 ;42
	.BYTE $00 | 0 << 6, $37 | 0 << 6, $26 | 0 << 6, $37 | 0 << 6 ;43
	.BYTE $01 | 0 << 6, $36 | 1 << 6, $01 | 0 << 6, $32 | 1 << 6 ;44
	.BYTE $33 | 1 << 6, $00 | 0 << 6, $33 | 1 << 6, $28 | 0 << 6 ;45
	.BYTE $00 | 0 << 6, $00 | 0 << 6, $2A | 1 << 6, $32 | 1 << 6 ;46
	.BYTE $3E | 0 << 6, $20 | 0 << 6, $2C | 0 << 6, $28 | 0 << 6 ;47
	.BYTE $3E | 0 << 6, $20 | 0 << 6, $3F | 0 << 6, $26 | 0 << 6 ;48
	.BYTE $3E | 0 << 6, $20 | 0 << 6, $0F | 0 << 6, $0F | 0 << 6 ;49
	.BYTE $25 | 0 << 6, $00 | 0 << 6, $34 | 0 << 6, $28 | 0 << 6 ;4A
	.BYTE $00 | 0 << 6, $00 | 0 << 6, $3F | 0 << 6, $28 | 0 << 6 ;4B
	.BYTE $01 | 0 << 6, $04 | 2 << 6, $27 | 1 << 6, $27 | 1 << 6 ;4C
	.BYTE $01 | 0 << 6, $04 | 2 << 6, $2A | 1 << 6, $32 | 1 << 6 ;4D
	.BYTE $12 | 1 << 6, $12 | 1 << 6, $12 | 1 << 6, $12 | 1 << 6 ;4E
	.BYTE $3E | 0 << 6, $20 | 0 << 6, $11 | 1 << 6, $11 | 1 << 6 ;4F
	.BYTE $25 | 0 << 6, $0F | 0 << 6, $34 | 0 << 6, $28 | 0 << 6 ;50
	.BYTE $0F | 0 << 6, $0F | 0 << 6, $3F | 0 << 6, $28 | 0 << 6 ;51
	.BYTE $30 | 1 << 6, $2B | 1 << 6, $33 | 1 << 6, $00 | 0 << 6 ;52
	.BYTE $2B | 1 << 6, $2B | 1 << 6, $00 | 0 << 6, $00 | 0 << 6 ;53
	.BYTE $12 | 1 << 6, $13 | 1 << 6, $12 | 1 << 6, $13 | 1 << 6 ;54
	.BYTE $3E | 0 << 6, $3D | 0 << 6, $3F | 0 << 6, $26 | 0 << 6 ;55
	.BYTE $25 | 0 << 6, $3D | 0 << 6, $00 | 0 << 6, $00 | 0 << 6 ;56
	.BYTE $2F | 1 << 6, $2F | 1 << 6, $35 | 0 << 6, $35 | 0 << 6 ;57
	.BYTE $35 | 0 << 6, $35 | 0 << 6, $2F | 1 << 6, $2F | 1 << 6 ;58
	.BYTE $26 | 0 << 6, $3D | 0 << 6, $3E | 0 << 6, $26 | 0 << 6 ;59
	.BYTE $01 | 0 << 6, $34 | 0 << 6, $34 | 0 << 6, $3C | 0 << 6 ;5A
	.BYTE $01 | 0 << 6, $01 | 0 << 6, $34 | 0 << 6, $00 | 0 << 6 ;5B
	.BYTE $3D | 0 << 6, $20 | 0 << 6, $26 | 0 << 6, $3D | 0 << 6 ;5C
	.BYTE $01 | 0 << 6, $01 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6 ;5D
	.BYTE $3F | 0 << 6, $25 | 0 << 6, $25 | 0 << 6, $3C | 0 << 6 ;5E
	.BYTE $3F | 0 << 6, $3E | 0 << 6, $3E | 0 << 6, $3D | 0 << 6 ;5F
	.BYTE $3F | 0 << 6, $26 | 0 << 6, $3E | 0 << 6, $3F | 0 << 6 ;60
	.BYTE $3D | 0 << 6, $3E | 0 << 6, $26 | 0 << 6, $3D | 0 << 6 ;61
	.BYTE $25 | 0 << 6, $00 | 0 << 6, $3C | 0 << 6, $26 | 0 << 6 ;62
	.BYTE $25 | 0 << 6, $3C | 0 << 6, $3C | 0 << 6, $3F | 0 << 6 ;63
	.BYTE $01 | 0 << 6, $01 | 0 << 6, $28 | 1 << 6, $28 | 1 << 6 ;64
	.BYTE $01 | 0 << 6, $0A | 2 << 6, $28 | 1 << 6, $28 | 1 << 6 ;65
	.BYTE $33 | 1 << 6, $33 | 1 << 6, $28 | 1 << 6, $28 | 1 << 6 ;66
	.BYTE $3E | 0 << 6, $20 | 0 << 6, $3F | 0 << 6, $28 | 0 << 6 ;67
	.BYTE $3D | 0 << 6, $20 | 0 << 6, $2C | 0 << 6, $3D | 0 << 6 ;68
	.BYTE $3E | 0 << 6, $20 | 0 << 6, $3D | 0 << 6, $28 | 0 << 6 ;69
	.BYTE $3C | 0 << 6, $20 | 0 << 6, $3D | 0 << 6, $28 | 0 << 6 ;6A
	.BYTE $25 | 0 << 6, $3C | 0 << 6, $3C | 0 << 6, $28 | 0 << 6 ;6B
	.BYTE $3E | 0 << 6, $20 | 0 << 6, $25 | 0 << 6, $00 | 0 << 6 ;6C
	.BYTE $2C | 0 << 6, $3D | 0 << 6, $01 | 0 << 6, $2C | 0 << 6 ;6D
	.BYTE $3E | 0 << 6, $20 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6 ;6E
	.BYTE $3E | 0 << 6, $20 | 0 << 6, $3D | 0 << 6, $35 | 0 << 6 ;6F
	.BYTE $01 | 0 << 6, $01 | 0 << 6, $01 | 0 << 6, $01 | 0 << 6 ;70
	.BYTE $38 | 0 << 6, $38 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6 ;71
	.BYTE $00 | 0 << 6, $08 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6 ;72
	.BYTE $00 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6 ;73
	.BYTE $00 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6 ;74
	.BYTE $00 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6 ;75
	.BYTE $00 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6 ;76
	.BYTE $00 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6 ;77
	.BYTE $27 | 0 << 6, $29 | 0 << 6, $29 | 0 << 6, $24 | 0 << 6 ;78
	.BYTE $00 | 0 << 6, $37 | 0 << 6, $00 | 0 << 6, $37 | 0 << 6 ;79
	.BYTE $00 | 0 << 6, $31 | 0 << 6, $00 | 0 << 6, $31 | 0 << 6 ;7A
	.BYTE $26 | 0 << 6, $32 | 0 << 6, $0C | 0 << 6, $32 | 0 << 6 ;7B
	.BYTE $25 | 0 << 6, $32 | 0 << 6, $0C | 0 << 6, $32 | 0 << 6 ;7C
	.BYTE $00 | 0 << 6, $2E | 0 << 6, $00 | 0 << 6, $2F | 0 << 6 ;7D
	.BYTE $00 | 0 << 6, $2E | 0 << 6, $00 | 0 << 6, $2E | 0 << 6 ;7E
	.BYTE $00 | 0 << 6, $2F | 0 << 6, $00 | 0 << 6, $00 | 0 << 6 ;7F
	.BYTE $3C | 0 << 6, $30 | 1 << 6, $3C | 0 << 6, $30 | 1 << 6 ;80
	.BYTE $3D | 0 << 6, $30 | 1 << 6, $3E | 0 << 6, $30 | 1 << 6 ;81
	.BYTE $3E | 0 << 6, $30 | 1 << 6, $3E | 0 << 6, $30 | 1 << 6 ;82
	.BYTE $3F | 0 << 6, $30 | 1 << 6, $3C | 0 << 6, $30 | 1 << 6 ;83
	.BYTE $3B | 0 << 6, $3A | 0 << 6, $38 | 0 << 6, $39 | 0 << 6 ;84
	.BYTE $00 | 0 << 6, $33 | 0 << 6, $00 | 0 << 6, $38 | 0 << 6 ;85
	.BYTE $33 | 0 << 6, $3A | 0 << 6, $3B | 0 << 6, $3A | 0 << 6 ;86
	.BYTE $00 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6, $33 | 0 << 6 ;87
	.BYTE $38 | 0 << 6, $39 | 0 << 6, $09 | 0 << 6, $0A | 0 << 6 ;88
	.BYTE $00 | 0 << 6, $38 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6 ;89
	.BYTE $38 | 0 << 6, $39 | 0 << 6, $33 | 0 << 6, $3A | 0 << 6 ;8A
	.BYTE $09 | 0 << 6, $0A | 0 << 6, $38 | 0 << 6, $39 | 0 << 6 ;8B
	.BYTE $00 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6, $08 | 0 << 6 ;8C
	.BYTE $09 | 0 << 6, $0A | 0 << 6, $33 | 0 << 6, $3A | 0 << 6 ;8D
	.BYTE $33 | 0 << 6, $3A | 0 << 6, $09 | 0 << 6, $0A | 0 << 6 ;8E
	.BYTE $33 | 0 << 6, $3A | 0 << 6, $00 | 0 << 6, $36 | 0 << 6 ;8F
	.BYTE $00 | 0 << 6, $34 | 0 << 6, $00 | 0 << 6, $35 | 0 << 6 ;90
	.BYTE $00 | 0 << 6, $36 | 0 << 6, $00 | 0 << 6, $34 | 0 << 6 ;91
	.BYTE $00 | 0 << 6, $35 | 0 << 6, $00 | 0 << 6, $36 | 0 << 6 ;92
	.BYTE $28 | 0 << 6, $32 | 0 << 6, $23 | 0 << 6, $32 | 0 << 6 ;93
	.BYTE $22 | 0 << 6, $32 | 0 << 6, $23 | 0 << 6, $32 | 0 << 6 ;94
	.BYTE $22 | 0 << 6, $32 | 0 << 6, $29 | 0 << 6, $32 | 0 << 6 ;95
	.BYTE $0C | 0 << 6, $32 | 0 << 6, $0C | 0 << 6, $32 | 0 << 6 ;96
	.BYTE $27 | 0 << 6, $32 | 0 << 6, $29 | 0 << 6, $32 | 0 << 6 ;97
	.BYTE $27 | 0 << 6, $32 | 0 << 6, $23 | 0 << 6, $32 | 0 << 6 ;98
	.BYTE $25 | 0 << 6, $32 | 0 << 6, $21 | 0 << 6, $32 | 0 << 6 ;99
	.BYTE $00 | 0 << 6, $31 | 0 << 6, $28 | 0 << 6, $32 | 0 << 6 ;9A
	.BYTE $29 | 0 << 6, $32 | 0 << 6, $0C | 0 << 6, $32 | 0 << 6 ;9B
	.BYTE $0C | 0 << 6, $32 | 0 << 6, $27 | 0 << 6, $32 | 0 << 6 ;9C
	.BYTE $23 | 0 << 6, $32 | 0 << 6, $22 | 0 << 6, $32 | 0 << 6 ;9D
	.BYTE $23 | 0 << 6, $32 | 0 << 6, $27 | 0 << 6, $32 | 0 << 6 ;9E
	.BYTE $29 | 0 << 6, $32 | 0 << 6, $0C | 0 << 6, $32 | 0 << 6 ;9F
	.BYTE $00 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6, $20 | 0 << 6 ;A0
	.BYTE $00 | 0 << 6, $21 | 0 << 6, $00 | 0 << 6, $20 | 0 << 6 ;A1
	.BYTE $00 | 0 << 6, $21 | 0 << 6, $00 | 0 << 6, $28 | 0 << 6 ;A2
	.BYTE $20 | 0 << 6, $23 | 0 << 6, $21 | 0 << 6, $22 | 0 << 6 ;A3
	.BYTE $20 | 0 << 6, $23 | 0 << 6, $21 | 0 << 6, $27 | 0 << 6 ;A4
	.BYTE $28 | 0 << 6, $29 | 0 << 6, $23 | 0 << 6, $24 | 0 << 6 ;A5
	.BYTE $26 | 0 << 6, $0C | 0 << 6, $21 | 0 << 6, $22 | 0 << 6 ;A6
	.BYTE $00 | 0 << 6, $21 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6 ;A7
	.BYTE $28 | 0 << 6, $29 | 0 << 6, $29 | 0 << 6, $0C | 0 << 6 ;A8
	.BYTE $0C | 0 << 6, $0C | 0 << 6, $0C | 0 << 6, $0C | 0 << 6 ;A9
	.BYTE $22 | 0 << 6, $0C | 0 << 6, $23 | 0 << 6, $22 | 0 << 6 ;AA
	.BYTE $27 | 0 << 6, $29 | 0 << 6, $23 | 0 << 6, $24 | 0 << 6 ;AB
	.BYTE $20 | 0 << 6, $23 | 0 << 6, $21 | 0 << 6, $24 | 0 << 6 ;AC
	.BYTE $00 | 0 << 6, $21 | 0 << 6, $00 | 0 << 6, $20 | 0 << 6 ;AD
	.BYTE $28 | 0 << 6, $29 | 0 << 6, $23 | 0 << 6, $27 | 0 << 6 ;AE
	.BYTE $00 | 0 << 6, $28 | 0 << 6, $20 | 0 << 6, $23 | 0 << 6 ;AF
	.BYTE $21 | 0 << 6, $22 | 0 << 6, $28 | 0 << 6, $29 | 0 << 6 ;B0
	.BYTE $23 | 0 << 6, $0C | 0 << 6, $22 | 0 << 6, $07 | 0 << 6 ;B1
	.BYTE $23 | 0 << 6, $0C | 0 << 6, $26 | 0 << 6, $0C | 0 << 6 ;B2
	.BYTE $21 | 0 << 6, $26 | 0 << 6, $00 | 0 << 6, $21 | 0 << 6 ;B3
	.BYTE $00 | 0 << 6, $20 | 0 << 6, $00 | 0 << 6, $21 | 0 << 6 ;B4
	.BYTE $21 | 0 << 6, $27 | 0 << 6, $20 | 0 << 6, $23 | 0 << 6 ;B5
	.BYTE $21 | 0 << 6, $22 | 0 << 6, $20 | 0 << 6, $23 | 0 << 6 ;B6
	.BYTE $07 | 0 << 6, $32 | 0 << 6, $0C | 0 << 6, $32 | 0 << 6 ;B7
	.BYTE $2A | 0 << 6, $30 | 1 << 6, $2A | 0 << 6, $30 | 1 << 6 ;B8
	.BYTE $2A | 0 << 6, $30 | 1 << 6, $01 | 0 << 6, $30 | 1 << 6 ;B9
	.BYTE $0D | 0 << 6, $30 | 1 << 6, $3C | 0 << 6, $30 | 1 << 6 ;BA
	.BYTE $2A | 0 << 6, $2A | 0 << 6, $2A | 0 << 6, $2B | 0 << 6 ;BB
	.BYTE $2A | 0 << 6, $2A | 0 << 6, $2A | 0 << 6, $01 | 0 << 6 ;BC
	.BYTE $0E | 0 << 6, $0D | 0 << 6, $09 | 0 << 6, $0A | 0 << 6 ;BD
	.BYTE $2A | 0 << 6, $2E | 0 << 6, $2B | 0 << 6, $2E | 0 << 6 ;BE
	.BYTE $2A | 0 << 6, $2E | 0 << 6, $0D | 0 << 6, $2E | 0 << 6 ;BF

;attributes
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;00
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;01
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;02
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;03
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_3 | bottomright_palette_3 ;04
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_3 | bottomright_palette_3 ;05
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;06
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;07
	.BYTE topleft_palette_1 | topright_palette_2 | bottomleft_palette_1 | bottomright_palette_1 ;08
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;09
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_1 | bottomright_palette_1 ;0A
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_1 | bottomright_palette_1 ;0B
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_1 | bottomright_palette_1 ;0C
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_1 | bottomright_palette_1 ;0D
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_1 | bottomright_palette_2 ;0E
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_1 | bottomright_palette_1 ;0F
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;10
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;11
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;12
	.BYTE topleft_palette_2 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;13
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;14
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_3 | bottomright_palette_1 ;15
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;16
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;17
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;18
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;19
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;1A
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;1B
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;1C
	.BYTE topleft_palette_1 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_3 ;1D
	.BYTE topleft_palette_1 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_3 ;1E
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_3 ;1F
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_3 | bottomright_palette_1 ;20
	.BYTE topleft_palette_3 | topright_palette_1 | bottomleft_palette_3 | bottomright_palette_1 ;21
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;22
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;23
	.BYTE topleft_palette_1 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_3 ;24
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;25
	.BYTE topleft_palette_3 | topright_palette_1 | bottomleft_palette_3 | bottomright_palette_3 ;26
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;27
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;28
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;29
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;2A
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;2B
	.BYTE topleft_palette_0 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_1 ;2C
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;2D
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_3 ;2E
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;2F
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_0 ;30
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_2 | bottomright_palette_2 ;31
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;32
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;33
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;34
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;35
	.BYTE topleft_palette_1 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_0 ;36
	.BYTE topleft_palette_2 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_2 ;37
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_0 ;38
	.BYTE topleft_palette_1 | topright_palette_2 | bottomleft_palette_1 | bottomright_palette_0 ;39
	.BYTE topleft_palette_2 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_1 ;3A
	.BYTE topleft_palette_0 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_1 ;3B
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_0 ;3C
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;3D
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;3E
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;3F
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;40
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;41
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;42
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;43
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_1 | bottomright_palette_3 ;44
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_0 ;45
	.BYTE topleft_palette_0 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_3 ;46
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;47
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;48
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;49
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;4A
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;4B
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;4C
	.BYTE topleft_palette_1 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_3 ;4D
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;4E
	.BYTE topleft_palette_0 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_1 ;4F
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;50
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;51
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_3 | bottomright_palette_0 ;52
	.BYTE topleft_palette_3 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_0 ;53
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;54
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;55
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;56
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_0 ;57
	.BYTE topleft_palette_0 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_1 ;58
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;59
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_0 ;5A
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_0 ;5B
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;5C
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_0 ;5D
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;5E
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;5F
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;60
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;61
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;62
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;63
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_0 ;64
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_0 ;65
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;66
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;67
	.BYTE topleft_palette_0 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_0 ;68
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;69
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;6A
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;6B
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;6C
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_1 ;6D
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;6E
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;6F
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;70
	.BYTE topleft_palette_3 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_0 ;71
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_0 ;72
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;73
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;74
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;75
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;76
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;77
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;78
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_2 ;79
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_1 ;7A
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_1 ;7B
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_1 ;7C
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;7D
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;7E
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;7F
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_1 | bottomright_palette_1 ;80
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_1 | bottomright_palette_1 ;81
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_1 | bottomright_palette_1 ;82
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_1 | bottomright_palette_1 ;83
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;84
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;85
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;86
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_3 ;87
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;88
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_0 ;89
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;8A
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;8B
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_3 ;8C
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;8D
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;8E
	.BYTE topleft_palette_3 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_2 ;8F
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_2 ;90
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_2 ;91
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_2 ;92
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_1 ;93
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_1 ;94
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_1 ;95
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_1 ;96
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_1 ;97
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_1 ;98
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_1 ;99
	.BYTE topleft_palette_0 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_1 ;9A
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_1 ;9B
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_1 ;9C
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_1 ;9D
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_1 ;9E
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_1 ;9F
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_3 ;A0
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;A1
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;A2
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;A3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;A4
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;A5
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;A6
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_0 ;A7
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;A8
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;A9
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;AA
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;AB
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;AC
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;AD
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;AE
	.BYTE topleft_palette_0 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;AF
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;B0
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;B1
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;B2
	.BYTE topleft_palette_3 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;B3
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;B4
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;B5
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;B6
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_1 ;B7
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_1 ;B8
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_1 ;B9
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_1 | bottomright_palette_1 ;BA
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;BB
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;BC
	.BYTE topleft_palette_0 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_3 ;BD
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;BE
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;BF
