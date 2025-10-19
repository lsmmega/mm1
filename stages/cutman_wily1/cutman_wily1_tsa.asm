;background tile 16x16 id | block type attributes index
	;     topleft,      bottomleft,   topright,     bottomright
	.BYTE $00 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6 ;00
	.BYTE $01 | 0 << 6, $01 | 0 << 6, $01 | 0 << 6, $01 | 0 << 6 ;01
	.BYTE $22 | 1 << 6, $28 | 1 << 6, $22 | 1 << 6, $29 | 1 << 6 ;02
	.BYTE $29 | 1 << 6, $28 | 1 << 6, $28 | 1 << 6, $29 | 1 << 6 ;03
	.BYTE $22 | 1 << 6, $25 | 0 << 6, $22 | 1 << 6, $25 | 0 << 6 ;04
	.BYTE $26 | 0 << 6, $34 | 0 << 6, $26 | 0 << 6, $35 | 0 << 6 ;05
	.BYTE $23 | 0 << 6, $24 | 0 << 6, $23 | 0 << 6, $24 | 0 << 6 ;06
	.BYTE $2C | 0 << 6, $26 | 0 << 6, $26 | 0 << 6, $26 | 0 << 6 ;07
	.BYTE $26 | 0 << 6, $35 | 0 << 6, $26 | 0 << 6, $3C | 0 << 6 ;08
	.BYTE $23 | 0 << 6, $24 | 0 << 6, $26 | 0 << 6, $26 | 0 << 6 ;09
	.BYTE $35 | 0 << 6, $26 | 0 << 6, $26 | 0 << 6, $26 | 0 << 6 ;0A
	.BYTE $22 | 1 << 6, $25 | 0 << 6, $02 | 2 << 6, $02 | 2 << 6 ;0B
	.BYTE $26 | 0 << 6, $26 | 0 << 6, $02 | 2 << 6, $02 | 2 << 6 ;0C
	.BYTE $26 | 0 << 6, $2C | 0 << 6, $26 | 0 << 6, $26 | 0 << 6 ;0D
	.BYTE $26 | 0 << 6, $26 | 0 << 6, $26 | 0 << 6, $2C | 0 << 6 ;0E
	.BYTE $38 | 0 << 6, $3A | 0 << 6, $39 | 0 << 6, $3B | 0 << 6 ;0F
	.BYTE $22 | 1 << 6, $01 | 0 << 6, $22 | 1 << 6, $01 | 0 << 6 ;10
	.BYTE $22 | 1 << 6, $01 | 0 << 6, $02 | 2 << 6, $02 | 2 << 6 ;11
	.BYTE $01 | 0 << 6, $01 | 0 << 6, $02 | 2 << 6, $02 | 2 << 6 ;12
	.BYTE $01 | 0 << 6, $01 | 0 << 6, $01 | 0 << 6, $22 | 1 << 6 ;13
	.BYTE $01 | 0 << 6, $22 | 1 << 6, $01 | 0 << 6, $01 | 0 << 6 ;14
	.BYTE $01 | 0 << 6, $22 | 1 << 6, $01 | 0 << 6, $22 | 1 << 6 ;15
	.BYTE $29 | 1 << 6, $28 | 1 << 6, $02 | 2 << 6, $02 | 2 << 6 ;16
	.BYTE $25 | 0 << 6, $2C | 0 << 6, $25 | 0 << 6, $26 | 0 << 6 ;17
	.BYTE $26 | 0 << 6, $22 | 1 << 6, $26 | 0 << 6, $22 | 1 << 6 ;18
	.BYTE $25 | 0 << 6, $35 | 0 << 6, $2B | 0 << 6, $3C | 0 << 6 ;19
	.BYTE $34 | 0 << 6, $26 | 0 << 6, $35 | 0 << 6, $34 | 0 << 6 ;1A
	.BYTE $26 | 0 << 6, $22 | 1 << 6, $2C | 0 << 6, $26 | 0 << 6 ;1B
	.BYTE $25 | 0 << 6, $2C | 0 << 6, $26 | 0 << 6, $26 | 0 << 6 ;1C
	.BYTE $35 | 0 << 6, $35 | 0 << 6, $35 | 0 << 6, $3C | 0 << 6 ;1D
	.BYTE $34 | 0 << 6, $26 | 0 << 6, $3C | 0 << 6, $26 | 0 << 6 ;1E
	.BYTE $26 | 0 << 6, $2C | 0 << 6, $22 | 1 << 6, $29 | 1 << 6 ;1F
	.BYTE $22 | 1 << 6, $28 | 1 << 6, $28 | 1 << 6, $29 | 1 << 6 ;20
	.BYTE $25 | 0 << 6, $2C | 0 << 6, $02 | 2 << 6, $02 | 2 << 6 ;21
	.BYTE $01 | 0 << 6, $22 | 1 << 6, $02 | 2 << 6, $22 | 1 << 6 ;22
	.BYTE $29 | 1 << 6, $01 | 0 << 6, $28 | 1 << 6, $01 | 0 << 6 ;23
	.BYTE $29 | 1 << 6, $2B | 0 << 6, $28 | 1 << 6, $2B | 0 << 6 ;24
	.BYTE $29 | 1 << 6, $25 | 0 << 6, $28 | 1 << 6, $25 | 0 << 6 ;25
	.BYTE $26 | 0 << 6, $22 | 1 << 6, $26 | 0 << 6, $02 | 2 << 6 ;26
	.BYTE $01 | 0 << 6, $01 | 0 << 6, $02 | 2 << 6, $22 | 1 << 6 ;27
	.BYTE $01 | 0 << 6, $01 | 0 << 6, $22 | 1 << 6, $01 | 0 << 6 ;28
	.BYTE $01 | 0 << 6, $01 | 0 << 6, $28 | 1 << 6, $29 | 1 << 6 ;29
	.BYTE $26 | 0 << 6, $23 | 0 << 6, $2C | 0 << 6, $23 | 0 << 6 ;2A
	.BYTE $24 | 0 << 6, $22 | 1 << 6, $24 | 0 << 6, $22 | 1 << 6 ;2B
	.BYTE $29 | 1 << 6, $2B | 0 << 6, $28 | 1 << 6, $29 | 1 << 6 ;2C
	.BYTE $26 | 0 << 6, $23 | 0 << 6, $25 | 0 << 6, $23 | 0 << 6 ;2D
	.BYTE $26 | 0 << 6, $26 | 0 << 6, $25 | 0 << 6, $26 | 0 << 6 ;2E
	.BYTE $25 | 0 << 6, $34 | 0 << 6, $25 | 0 << 6, $35 | 0 << 6 ;2F
	.BYTE $25 | 0 << 6, $35 | 0 << 6, $2B | 0 << 6, $3C | 0 << 6 ;30
	.BYTE $02 | 2 << 6, $02 | 2 << 6, $22 | 1 << 6, $25 | 0 << 6 ;31
	.BYTE $22 | 1 << 6, $2B | 0 << 6, $22 | 1 << 6, $25 | 0 << 6 ;32
	.BYTE $02 | 2 << 6, $02 | 2 << 6, $2C | 0 << 6, $26 | 0 << 6 ;33
	.BYTE $02 | 2 << 6, $22 | 1 << 6, $26 | 0 << 6, $22 | 1 << 6 ;34
	.BYTE $2C | 0 << 6, $26 | 0 << 6, $26 | 0 << 6, $22 | 1 << 6 ;35
	.BYTE $26 | 0 << 6, $22 | 1 << 6, $2C | 0 << 6, $22 | 1 << 6 ;36
	.BYTE $22 | 1 << 6, $28 | 1 << 6, $02 | 2 << 6, $02 | 2 << 6 ;37
	.BYTE $01 | 0 << 6, $01 | 0 << 6, $01 | 0 << 6, $02 | 2 << 6 ;38
	.BYTE $3D | 0 << 6, $22 | 1 << 6, $2D | 0 << 6, $22 | 1 << 6 ;39
	.BYTE $3D | 0 << 6, $3D | 0 << 6, $2D | 0 << 6, $2D | 0 << 6 ;3A
	.BYTE $20 | 0 << 6, $3D | 0 << 6, $21 | 0 << 6, $2D | 0 << 6 ;3B
	.BYTE $21 | 0 << 6, $2E | 0 << 6, $21 | 0 << 6, $2F | 0 << 6 ;3C
	.BYTE $36 | 0 << 6, $3E | 0 << 6, $37 | 0 << 6, $3F | 0 << 6 ;3D
	.BYTE $2E | 0 << 6, $22 | 1 << 6, $2F | 0 << 6, $22 | 1 << 6 ;3E
	.BYTE $2D | 0 << 6, $22 | 1 << 6, $27 | 0 << 6, $22 | 1 << 6 ;3F
	.BYTE $2D | 0 << 6, $2D | 0 << 6, $27 | 0 << 6, $27 | 0 << 6 ;40
	.BYTE $21 | 0 << 6, $2D | 0 << 6, $2A | 0 << 6, $27 | 0 << 6 ;41
	.BYTE $01 | 0 << 6, $22 | 1 << 6, $01 | 0 << 6, $02 | 2 << 6 ;42
	.BYTE $29 | 1 << 6, $01 | 0 << 6, $02 | 2 << 6, $02 | 2 << 6 ;43
	.BYTE $29 | 1 << 6, $28 | 1 << 6, $01 | 0 << 6, $01 | 0 << 6 ;44
	.BYTE $26 | 0 << 6, $22 | 1 << 6, $02 | 2 << 6, $22 | 1 << 6 ;45
	.BYTE $02 | 2 << 6, $02 | 2 << 6, $22 | 1 << 6, $29 | 1 << 6 ;46
	.BYTE $02 | 2 << 6, $02 | 2 << 6, $28 | 1 << 6, $29 | 1 << 6 ;47
	.BYTE $29 | 1 << 6, $28 | 1 << 6, $28 | 1 << 6, $01 | 0 << 6 ;48
	.BYTE $29 | 1 << 6, $28 | 1 << 6, $01 | 0 << 6, $22 | 1 << 6 ;49
	.BYTE $29 | 1 << 6, $25 | 0 << 6, $28 | 1 << 6, $01 | 0 << 6 ;4A
	.BYTE $26 | 0 << 6, $26 | 0 << 6, $01 | 0 << 6, $01 | 0 << 6 ;4B
	.BYTE $2C | 0 << 6, $22 | 1 << 6, $01 | 0 << 6, $22 | 1 << 6 ;4C
	.BYTE $01 | 0 << 6, $02 | 2 << 6, $01 | 0 << 6, $22 | 1 << 6 ;4D
	.BYTE $02 | 2 << 6, $01 | 0 << 6, $28 | 1 << 6, $01 | 0 << 6 ;4E
	.BYTE $02 | 2 << 6, $02 | 2 << 6, $01 | 0 << 6, $01 | 0 << 6 ;4F
	.BYTE $02 | 2 << 6, $22 | 1 << 6, $01 | 0 << 6, $22 | 1 << 6 ;50
	.BYTE $26 | 0 << 6, $02 | 2 << 6, $26 | 0 << 6, $22 | 1 << 6 ;51
	.BYTE $22 | 1 << 6, $01 | 0 << 6, $01 | 0 << 6, $01 | 0 << 6 ;52
	.BYTE $01 | 0 << 6, $01 | 0 << 6, $01 | 0 << 6, $04 | 3 << 6 ;53
	.BYTE $01 | 0 << 6, $04 | 3 << 6, $01 | 0 << 6, $01 | 0 << 6 ;54
	.BYTE $01 | 0 << 6, $04 | 3 << 6, $01 | 0 << 6, $04 | 3 << 6 ;55
	.BYTE $01 | 0 << 6, $01 | 0 << 6, $11 | 1 << 6, $11 | 1 << 6 ;56
	.BYTE $12 | 1 << 6, $12 | 1 << 6, $12 | 1 << 6, $12 | 1 << 6 ;57
	.BYTE $10 | 0 << 6, $10 | 0 << 6, $10 | 0 << 6, $10 | 0 << 6 ;58
	.BYTE $22 | 1 << 6, $22 | 1 << 6, $22 | 1 << 6, $22 | 1 << 6 ;59
	.BYTE $2B | 0 << 6, $2C | 0 << 6, $2B | 0 << 6, $2C | 0 << 6 ;5A
	.BYTE $2C | 0 << 6, $2C | 0 << 6, $2C | 0 << 6, $2C | 0 << 6 ;5B
	.BYTE $2B | 0 << 6, $2C | 0 << 6, $10 | 0 << 6, $10 | 0 << 6 ;5C
	.BYTE $2C | 0 << 6, $2C | 0 << 6, $10 | 0 << 6, $10 | 0 << 6 ;5D
	.BYTE $29 | 1 << 6, $28 | 1 << 6, $2B | 0 << 6, $2C | 0 << 6 ;5E
	.BYTE $29 | 1 << 6, $28 | 1 << 6, $2C | 0 << 6, $2C | 0 << 6 ;5F
	.BYTE $2B | 0 << 6, $2C | 0 << 6, $2C | 0 << 6, $2C | 0 << 6 ;60
	.BYTE $2B | 0 << 6, $2C | 0 << 6, $28 | 1 << 6, $29 | 1 << 6 ;61
	.BYTE $2C | 0 << 6, $2C | 0 << 6, $28 | 1 << 6, $29 | 1 << 6 ;62
	.BYTE $22 | 1 << 6, $28 | 1 << 6, $28 | 1 << 6, $29 | 1 << 6 ;63
	.BYTE $24 | 0 << 6, $26 | 0 << 6, $24 | 0 << 6, $26 | 0 << 6 ;64
	.BYTE $29 | 1 << 6, $28 | 1 << 6, $26 | 0 << 6, $26 | 0 << 6 ;65
	.BYTE $26 | 0 << 6, $26 | 0 << 6, $28 | 1 << 6, $29 | 1 << 6 ;66
	.BYTE $12 | 1 << 6, $13 | 1 << 6, $12 | 1 << 6, $13 | 1 << 6 ;67
	.BYTE $02 | 2 << 6, $02 | 2 << 6, $22 | 1 << 6, $01 | 0 << 6 ;68
	.BYTE $22 | 1 << 6, $28 | 1 << 6, $26 | 0 << 6, $2C | 0 << 6 ;69
	.BYTE $02 | 2 << 6, $02 | 2 << 6, $28 | 1 << 6, $01 | 0 << 6 ;6A
	.BYTE $01 | 0 << 6, $02 | 2 << 6, $01 | 0 << 6, $29 | 1 << 6 ;6B
	.BYTE $25 | 0 << 6, $26 | 0 << 6, $26 | 0 << 6, $2C | 0 << 6 ;6C
	.BYTE $21 | 0 << 6, $21 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6 ;6D
	.BYTE $21 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6 ;6E
	.BYTE $0F | 1 << 6, $0F | 1 << 6, $0F | 1 << 6, $21 | 0 << 6 ;6F
	.BYTE $05 | 3 << 6, $05 | 3 << 6, $17 | 0 << 6, $17 | 0 << 6 ;70
	.BYTE $17 | 0 << 6, $17 | 0 << 6, $17 | 0 << 6, $0E | 1 << 6 ;71
	.BYTE $16 | 0 << 6, $17 | 0 << 6, $08 | 1 << 6, $10 | 1 << 6 ;72
	.BYTE $2E | 2 << 6, $10 | 1 << 6, $2E | 2 << 6, $11 | 1 << 6 ;73
	.BYTE $2E | 2 << 6, $12 | 1 << 6, $08 | 1 << 6, $10 | 1 << 6 ;74
	.BYTE $0A | 1 << 6, $12 | 1 << 6, $2E | 2 << 6, $10 | 1 << 6 ;75
	.BYTE $2E | 2 << 6, $11 | 1 << 6, $2E | 2 << 6, $11 | 1 << 6 ;76
	.BYTE $0E | 1 << 6, $08 | 1 << 6, $0E | 1 << 6, $09 | 1 << 6 ;77
	.BYTE $10 | 1 << 6, $16 | 0 << 6, $11 | 1 << 6, $16 | 0 << 6 ;78
	.BYTE $11 | 1 << 6, $16 | 0 << 6, $12 | 1 << 6, $16 | 0 << 6 ;79
	.BYTE $0E | 1 << 6, $08 | 1 << 6, $17 | 0 << 6, $2E | 2 << 6 ;7A
	.BYTE $17 | 0 << 6, $2E | 2 << 6, $0E | 1 << 6, $0A | 1 << 6 ;7B
	.BYTE $0E | 1 << 6, $0A | 1 << 6, $17 | 0 << 6, $17 | 0 << 6 ;7C
	.BYTE $12 | 1 << 6, $16 | 0 << 6, $17 | 0 << 6, $17 | 0 << 6 ;7D
	.BYTE $17 | 0 << 6, $0E | 1 << 6, $17 | 0 << 6, $17 | 0 << 6 ;7E
	.BYTE $17 | 0 << 6, $0E | 1 << 6, $05 | 3 << 6, $05 | 3 << 6 ;7F
	.BYTE $00 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6 ;80
	.BYTE $01 | 0 << 6, $01 | 0 << 6, $01 | 0 << 6, $01 | 0 << 6 ;81
	.BYTE $26 | 1 << 6, $26 | 1 << 6, $26 | 1 << 6, $26 | 1 << 6 ;82
	.BYTE $23 | 0 << 6, $23 | 0 << 6, $23 | 0 << 6, $23 | 0 << 6 ;83
	.BYTE $08 | 1 << 6, $10 | 1 << 6, $09 | 1 << 6, $11 | 1 << 6 ;84
	.BYTE $08 | 1 << 6, $10 | 1 << 6, $0A | 1 << 6, $12 | 1 << 6 ;85
	.BYTE $09 | 1 << 6, $11 | 1 << 6, $0A | 1 << 6, $12 | 1 << 6 ;86
	.BYTE $0B | 1 << 6, $13 | 1 << 6, $0D | 1 << 6, $15 | 1 << 6 ;87
	.BYTE $0B | 1 << 6, $13 | 1 << 6, $0C | 1 << 6, $14 | 1 << 6 ;88
	.BYTE $0C | 1 << 6, $14 | 1 << 6, $0D | 1 << 6, $15 | 1 << 6 ;89
	.BYTE $0C | 1 << 6, $14 | 1 << 6, $0C | 1 << 6, $14 | 1 << 6 ;8A
	.BYTE $09 | 1 << 6, $11 | 1 << 6, $09 | 1 << 6, $11 | 1 << 6 ;8B
	.BYTE $16 | 0 << 6, $17 | 0 << 6, $16 | 0 << 6, $17 | 0 << 6 ;8C
	.BYTE $17 | 0 << 6, $17 | 0 << 6, $17 | 0 << 6, $17 | 0 << 6 ;8D
	.BYTE $00 | 0 << 6, $00 | 0 << 6, $16 | 0 << 6, $17 | 0 << 6 ;8E
	.BYTE $00 | 0 << 6, $00 | 0 << 6, $08 | 1 << 6, $10 | 1 << 6 ;8F
	.BYTE $0A | 1 << 6, $12 | 1 << 6, $00 | 0 << 6, $00 | 0 << 6 ;90
	.BYTE $16 | 0 << 6, $17 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6 ;91
	.BYTE $16 | 0 << 6, $17 | 0 << 6, $17 | 0 << 6, $17 | 0 << 6 ;92
	.BYTE $0A | 1 << 6, $12 | 1 << 6, $16 | 0 << 6, $17 | 0 << 6 ;93
	.BYTE $0A | 1 << 6, $12 | 1 << 6, $05 | 3 << 6, $05 | 3 << 6 ;94
	.BYTE $00 | 0 << 6, $00 | 0 << 6, $05 | 3 << 6, $05 | 3 << 6 ;95
	.BYTE $05 | 3 << 6, $05 | 3 << 6, $08 | 1 << 6, $10 | 1 << 6 ;96
	.BYTE $05 | 3 << 6, $05 | 3 << 6, $16 | 0 << 6, $17 | 0 << 6 ;97
	.BYTE $05 | 3 << 6, $0E | 1 << 6, $17 | 0 << 6, $0E | 1 << 6 ;98
	.BYTE $17 | 0 << 6, $0E | 1 << 6, $17 | 0 << 6, $0E | 1 << 6 ;99
	.BYTE $17 | 0 << 6, $0E | 1 << 6, $17 | 0 << 6, $05 | 3 << 6 ;9A
	.BYTE $16 | 0 << 6, $17 | 0 << 6, $05 | 3 << 6, $05 | 3 << 6 ;9B
	.BYTE $17 | 0 << 6, $0E | 1 << 6, $05 | 3 << 6, $0E | 1 << 6 ;9C
	.BYTE $17 | 0 << 6, $05 | 3 << 6, $17 | 0 << 6, $0E | 1 << 6 ;9D
	.BYTE $38 | 0 << 6, $3A | 0 << 6, $39 | 0 << 6, $3B | 0 << 6 ;9E
	.BYTE $17 | 0 << 6, $2E | 2 << 6, $17 | 0 << 6, $2E | 2 << 6 ;9F
	.BYTE $17 | 0 << 6, $2E | 2 << 6, $0E | 1 << 6, $13 | 1 << 6 ;A0
	.BYTE $0E | 1 << 6, $15 | 1 << 6, $17 | 0 << 6, $2E | 2 << 6 ;A1
	.BYTE $06 | 0 << 6, $06 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6 ;A2
	.BYTE $17 | 0 << 6, $0E | 1 << 6, $17 | 0 << 6, $00 | 0 << 6 ;A3
	.BYTE $01 | 0 << 6, $27 | 0 << 6, $01 | 0 << 6, $27 | 0 << 6 ;A4
	.BYTE $17 | 0 << 6, $17 | 0 << 6, $08 | 1 << 6, $10 | 1 << 6 ;A5
	.BYTE $17 | 0 << 6, $17 | 0 << 6, $16 | 0 << 6, $17 | 0 << 6 ;A6
	.BYTE $0E | 1 << 6, $13 | 1 << 6, $0E | 1 << 6, $14 | 1 << 6 ;A7
	.BYTE $0E | 1 << 6, $14 | 1 << 6, $0E | 1 << 6, $15 | 1 << 6 ;A8
	.BYTE $0E | 1 << 6, $13 | 1 << 6, $0E | 1 << 6, $15 | 1 << 6 ;A9
	.BYTE $00 | 0 << 6, $00 | 0 << 6, $0E | 1 << 6, $13 | 1 << 6 ;AA
	.BYTE $0E | 1 << 6, $15 | 1 << 6, $00 | 0 << 6, $00 | 0 << 6 ;AB
	.BYTE $05 | 3 << 6, $05 | 3 << 6, $0E | 1 << 6, $13 | 1 << 6 ;AC
	.BYTE $0E | 1 << 6, $14 | 1 << 6, $0E | 1 << 6, $14 | 1 << 6 ;AD
	.BYTE $0E | 1 << 6, $15 | 1 << 6, $05 | 3 << 6, $05 | 3 << 6 ;AE
	.BYTE $0E | 1 << 6, $15 | 1 << 6, $08 | 1 << 6, $10 | 1 << 6 ;AF
	.BYTE $00 | 0 << 6, $2B | 1 << 6, $00 | 0 << 6, $2B | 1 << 6 ;B0
	.BYTE $00 | 0 << 6, $2E | 2 << 6, $00 | 0 << 6, $00 | 0 << 6 ;B1
	.BYTE $00 | 0 << 6, $00 | 0 << 6, $2B | 1 << 6, $00 | 0 << 6 ;B2
	.BYTE $00 | 0 << 6, $00 | 0 << 6, $00 | 0 << 6, $0F | 1 << 6 ;B3
	.BYTE $00 | 0 << 6, $0F | 1 << 6, $00 | 0 << 6, $0F | 1 << 6 ;B4
	.BYTE $00 | 0 << 6, $00 | 0 << 6, $0F | 1 << 6, $0F | 1 << 6 ;B5
	.BYTE $00 | 0 << 6, $0F | 1 << 6, $0F | 1 << 6, $0F | 1 << 6 ;B6
	.BYTE $22 | 0 << 6, $22 | 0 << 6, $0F | 1 << 6, $0F | 1 << 6 ;B7
	.BYTE $22 | 0 << 6, $0F | 1 << 6, $0F | 1 << 6, $0F | 1 << 6 ;B8
	.BYTE $30 | 1 << 6, $32 | 1 << 6, $31 | 1 << 6, $33 | 1 << 6 ;B9
	.BYTE $3F | 0 << 6, $00 | 0 << 6, $3F | 0 << 6, $00 | 0 << 6 ;BA
	.BYTE $34 | 1 << 6, $35 | 1 << 6, $36 | 1 << 6, $37 | 1 << 6 ;BB
	.BYTE $0A | 1 << 6, $12 | 1 << 6, $17 | 0 << 6, $17 | 0 << 6 ;BC
	.BYTE $3F | 2 << 6, $16 | 0 << 6, $17 | 0 << 6, $17 | 0 << 6 ;BD
	.BYTE $17 | 0 << 6, $17 | 0 << 6, $05 | 3 << 6, $05 | 3 << 6 ;BE
	.BYTE $3F | 2 << 6, $16 | 0 << 6, $3F | 2 << 6, $16 | 0 << 6 ;BF

;attributes
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;00
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;01
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;02
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;03
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_2 ;04
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;05
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;06
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;07
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;08
	.BYTE topleft_palette_3 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_2 ;09
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;0A
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;0B
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;0C
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;0D
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;0E
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;0F
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_1 ;10
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_0 ;11
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_0 ;12
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_0 ;13
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_1 ;14
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_0 ;15
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;16
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;17
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_0 ;18
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;19
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;1A
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;1B
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;1C
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;1D
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;1E
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;1F
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;20
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;21
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;22
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_1 ;23
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_2 ;24
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_2 ;25
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_0 ;26
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_0 ;27
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_1 ;28
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_0 ;29
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_3 ;2A
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_0 ;2B
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;2C
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_3 ;2D
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;2E
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;2F
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;30
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_2 ;31
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_2 ;32
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;33
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_0 ;34
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_0 ;35
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_0 ;36
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;37
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_0 ;38
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_0 ;39
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;3A
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;3B
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;3C
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;3D
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_0 ;3E
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_0 ;3F
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;40
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;41
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_0 ;42
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_0 ;43
	.BYTE topleft_palette_0 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_1 ;44
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;45
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;46
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;47
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_1 ;48
	.BYTE topleft_palette_0 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_0 ;49
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_1 ;4A
	.BYTE topleft_palette_2 | topright_palette_1 | bottomleft_palette_2 | bottomright_palette_1 ;4B
	.BYTE topleft_palette_2 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_0 ;4C
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_0 ;4D
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_1 ;4E
	.BYTE topleft_palette_0 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_1 ;4F
	.BYTE topleft_palette_0 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_0 ;50
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_0 ;51
	.BYTE topleft_palette_0 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;52
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;53
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;54
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;55
	.BYTE topleft_palette_1 | topright_palette_0 | bottomleft_palette_1 | bottomright_palette_0 ;56
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;57
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;58
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;59
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;5A
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;5B
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;5C
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;5D
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;5E
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;5F
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;60
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;61
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;62
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;63
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_2 | bottomright_palette_2 ;64
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;65
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;66
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;67
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_1 ;68
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;69
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_1 ;6A
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_0 ;6B
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;6C
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;6D
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;6E
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_0 ;6F
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;70
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_3 ;71
	.BYTE topleft_palette_2 | topright_palette_3 | bottomleft_palette_2 | bottomright_palette_3 ;72
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;73
	.BYTE topleft_palette_0 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;74
	.BYTE topleft_palette_3 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;75
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;76
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;77
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_2 | bottomright_palette_2 ;78
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_2 | bottomright_palette_2 ;79
	.BYTE topleft_palette_3 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_0 ;7A
	.BYTE topleft_palette_2 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_3 ;7B
	.BYTE topleft_palette_3 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_2 ;7C
	.BYTE topleft_palette_3 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;7D
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_2 ;7E
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_0 ;7F
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;80
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;81
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;82
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;83
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;84
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;85
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;86
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;87
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;88
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;89
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;8A
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;8B
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;8C
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;8D
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;8E
	.BYTE topleft_palette_1 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_3 ;8F
	.BYTE topleft_palette_3 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_0 ;90
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;91
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;92
	.BYTE topleft_palette_3 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_2 ;93
	.BYTE topleft_palette_3 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_0 ;94
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;95
	.BYTE topleft_palette_0 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_3 ;96
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_2 ;97
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_3 ;98
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_3 ;99
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_0 ;9A
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;9B
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;9C
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_3 ;9D
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;9E
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_0 ;9F
	.BYTE topleft_palette_2 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_0 ;A0
	.BYTE topleft_palette_3 | topright_palette_2 | bottomleft_palette_0 | bottomright_palette_0 ;A1
	.BYTE topleft_palette_0 | topright_palette_1 | bottomleft_palette_0 | bottomright_palette_1 ;A2
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_0 ;A3
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;A4
	.BYTE topleft_palette_2 | topright_palette_3 | bottomleft_palette_2 | bottomright_palette_3 ;A5
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;A6
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_0 ;A7
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_0 ;A8
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_0 ;A9
	.BYTE topleft_palette_0 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_0 ;AA
	.BYTE topleft_palette_3 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;AB
	.BYTE topleft_palette_0 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_0 ;AC
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_0 ;AD
	.BYTE topleft_palette_3 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;AE
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_3 ;AF
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;B0
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;B1
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;B2
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_3 ;B3
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3 ;B4
	.BYTE topleft_palette_0 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_3 ;B5
	.BYTE topleft_palette_0 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;B6
	.BYTE topleft_palette_0 | topright_palette_3 | bottomleft_palette_0 | bottomright_palette_3 ;B7
	.BYTE topleft_palette_0 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3 ;B8
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;B9
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;BA
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;BB
	.BYTE topleft_palette_3 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_2 ;BC
	.BYTE topleft_palette_0 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;BD
	.BYTE topleft_palette_2 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_0 ;BE
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_2 | bottomright_palette_2 ;BF
