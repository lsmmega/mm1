;oam sprites changed per frame(s) | (@start length - 1) << 4, oam frameset
oam_frameset_00:
	.BYTE 8 | (@end - @start - 1) << 4

@start:
	.BYTE $01, $01, $01, $01, $01, $01, $01, $01
	.BYTE $01, $01, $00
@end:

oam_frameset_01:
	.BYTE 8 | (@end - @start - 1) << 4

@start:
	.BYTE $10, $10, $10, $10, $10, $10, $10, $10
	.BYTE $10, $10, $10
@end:

oam_frameset_02:
	.BYTE 8 | (@end - @start - 1) << 4

@start:
	.BYTE $09, $09, $09, $09, $09, $09, $09, $09
	.BYTE $09, $09, $08
@end:

oam_frameset_03:
	.BYTE 2 | (@end - @start - 1) << 4

@start:
	.BYTE $01, $02, $02
@end:

oam_frameset_04:
	.BYTE 2 | (@end - @start - 1) << 4

@start:
	.BYTE $10, $10, $10
@end:

oam_frameset_05:
	.BYTE 2 | (@end - @start - 1) << 4

@start:
	.BYTE $09, $0A, $0A
@end:

oam_frameset_06:
	.BYTE 6 | (@end - @start - 1) << 4

@start:
	.BYTE $03, $05, $04, $05
@end:

oam_frameset_07:
	.BYTE 6 | (@end - @start - 1) << 4

@start:
	.BYTE $11, $13, $12, $13
@end:

oam_frameset_08:
	.BYTE 6 | (@end - @start - 1) << 4

@start:
	.BYTE $0B, $0D, $0C, $0D
@end:

oam_frameset_09:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $06
@end:

oam_frameset_0a:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $14
@end:

oam_frameset_0b:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $0E
@end:

oam_frameset_0c:
	.BYTE 6 | (@end - @start - 1) << 4

@start:
	.BYTE $05, $02
@end:

oam_frameset_0d:
	.BYTE 7 | (@end - @start - 1) << 4

@start:
	.BYTE $13, $10
@end:

oam_frameset_0e:
	.BYTE 7 | (@end - @start - 1) << 4

@start:
	.BYTE $0D, $0A
@end:

oam_frameset_0f:
	.BYTE 1 | (@end - @start - 1) << 4

@start:
	.BYTE $04, $03
@end:

oam_frameset_10:
	.BYTE 1 | (@end - @start - 1) << 4

@start:
	.BYTE $12, $11
@end:

oam_frameset_11:
	.BYTE 1 | (@end - @start - 1) << 4

@start:
	.BYTE $0C, $0B
@end:

oam_frameset_12:
	.BYTE 2 | (@end - @start - 1) << 4

@start:
	.BYTE $1A, $0F, $0F, $1A, $0F, $0F, $1A, $0F
	.BYTE $0F, $1A
@end:

oam_frameset_13:
	.BYTE 7 | (@end - @start - 1) << 4

@start:
	.BYTE $07, $07, $07, $07, $07, $07
@end:

oam_frameset_14:
	.BYTE 2 | (@end - @start - 1) << 4

@start:
	.BYTE $15, $16, $17, $15
@end:

oam_frameset_15:
	.BYTE 8 | (@end - @start - 1) << 4

@start:
	.BYTE $18, $19
@end:

oam_frameset_16:
	.BYTE 8 | (@end - @start - 1) << 4

@start:
	.BYTE $1B, $1B
@end:

oam_frameset_17:
	.BYTE 10 | (@end - @start - 1) << 4

@start:
	.BYTE $1C, $1D
@end:

oam_frameset_18:
	.BYTE 10 | (@end - @start - 1) << 4

@start:
	.BYTE $1B, $1B
@end:

oam_frameset_19:
	.BYTE 8 | (@end - @start - 1) << 4

@start:
	.BYTE $1E, $1F, $20
@end:

oam_frameset_1a:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $21
@end:

oam_frameset_1b:
	.BYTE 8 | (@end - @start - 1) << 4

@start:
	.BYTE $22, $24
@end:

oam_frameset_1c:
	.BYTE 2 | (@end - @start - 1) << 4

@start:
	.BYTE $22
@end:

oam_frameset_1d:
	.BYTE 15 | (@end - @start - 1) << 4

@start:
	.BYTE $57
@end:

oam_frameset_1e:
	.BYTE 12 | (@end - @start - 1) << 4

@start:
	.BYTE $57, $57, $58, $58, $30, $30
@end:

oam_frameset_1f:
	.BYTE 15 | (@end - @start - 1) << 4

@start:
	.BYTE $39
@end:

oam_frameset_20:
	.BYTE 8 | (@end - @start - 1) << 4

@start:
	.BYTE $37, $37, $38
@end:

oam_frameset_21:
	.BYTE 8 | (@end - @start - 1) << 4

@start:
	.BYTE $3F, $3E, $3E
@end:

oam_frameset_22:
	.BYTE 8 | (@end - @start - 1) << 4

@start:
	.BYTE $3F, $3E, $3E
@end:

oam_frameset_23:
	.BYTE 15 | (@end - @start - 1) << 4

@start:
	.BYTE $49
@end:

oam_frameset_24:
	.BYTE 8 | (@end - @start - 1) << 4

@start:
	.BYTE $47, $47, $48
@end:

oam_frameset_25:
	.BYTE 14 | (@end - @start - 1) << 4

@start:
	.BYTE $4F, $50
@end:

oam_frameset_26:
	.BYTE 2 | (@end - @start - 1) << 4

@start:
	.BYTE $4F
@end:

oam_frameset_27:
	.BYTE 13 | (@end - @start - 1) << 4

@start:
	.BYTE $5A, $5A
@end:

oam_frameset_28:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $59
@end:

oam_frameset_29:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $34
@end:

oam_frameset_2a:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $36
@end:

oam_frameset_2b:
	.BYTE 15 | (@end - @start - 1) << 4

@start:
	.BYTE $33
@end:

oam_frameset_2c:
	.BYTE 15 | (@end - @start - 1) << 4

@start:
	.BYTE $32
@end:

oam_frameset_2d:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $51
@end:

oam_frameset_2e:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $54
@end:

oam_frameset_2f:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $52
@end:

oam_frameset_30:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $53
@end:

oam_frameset_31:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $55
@end:

oam_frameset_32:
	.BYTE 15 | (@end - @start - 1) << 4

@start:
	.BYTE $5B, $5B, $5B
@end:

oam_frameset_33:
	.BYTE 8 | (@end - @start - 1) << 4

@start:
	.BYTE $3F, $3F, $3E
@end:

oam_frameset_34:
	.BYTE 6 | (@end - @start - 1) << 4

@start:
	.BYTE $42, $44, $43, $44
@end:

oam_frameset_35:
	.BYTE 8 | (@end - @start - 1) << 4

@start:
	.BYTE $46, $45, $45
@end:

oam_frameset_36:
	.BYTE 7 | (@end - @start - 1) << 4

@start:
	.BYTE $64, $65, $66
@end:

oam_frameset_37:
	.BYTE 6 | (@end - @start - 1) << 4

@start:
	.BYTE $64, $65, $66
@end:

oam_frameset_38:
	.BYTE 10 | (@end - @start - 1) << 4

@start:
	.BYTE $5F, $5E, $5E, $5F, $5E, $5E, $5F, $5E
	.BYTE $5E, $5F, $5E, $5E
@end:

oam_frameset_39:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $60, $60, $61, $62, $63, $60, $61, $62
	.BYTE $63
@end:

oam_frameset_3a:
	.BYTE 8 | (@end - @start - 1) << 4

@start:
	.BYTE $67, $68
@end:

oam_frameset_3b:
	.BYTE 12 | (@end - @start - 1) << 4

@start:
	.BYTE $3B, $3C
@end:

oam_frameset_3c:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $37
@end:

oam_frameset_3d:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $3D
@end:

oam_frameset_3e:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $3A
@end:

oam_frameset_3f:
	.BYTE 6 | (@end - @start - 1) << 4

@start:
	.BYTE $2A, $2E, $2C, $2E
@end:

oam_frameset_40:
	.BYTE 6 | (@end - @start - 1) << 4

@start:
	.BYTE $2B, $2F, $2D, $2F
@end:

oam_frameset_41:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $28
@end:

oam_frameset_42:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $29
@end:

oam_frameset_43:
	.BYTE 15 | (@end - @start - 1) << 4

@start:
	.BYTE $26, $27
@end:

oam_frameset_44:
	.BYTE 15 | (@end - @start - 1) << 4

@start:
	.BYTE $27, $27
@end:

oam_frameset_45:
	.BYTE 4 | (@end - @start - 1) << 4

@start:
	.BYTE $69, $6A, $6B, $6C
@end:

oam_frameset_46:
	.BYTE 8 | (@end - @start - 1) << 4

@start:
	.BYTE $22, $24
@end:

oam_frameset_47:
	.BYTE 8 | (@end - @start - 1) << 4

@start:
	.BYTE $23, $25
@end:

oam_frameset_48:
	.BYTE 6 | (@end - @start - 1) << 4

@start:
	.BYTE $4A, $4B
@end:

oam_frameset_49:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $4E
@end:

oam_frameset_4a:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $4D
@end:

oam_frameset_4b:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $4C
@end:

oam_frameset_4c:
	.BYTE 1 | (@end - @start - 1) << 4

@start:
	.BYTE $6D, $6D, $6D, $6D, $6D
@end:

oam_frameset_4d:
	.BYTE 1 | (@end - @start - 1) << 4

@start:
	.BYTE $6E, $6E, $6E, $6E, $6E
@end:

oam_frameset_4e:
	.BYTE 1 | (@end - @start - 1) << 4

@start:
	.BYTE $6F, $6F, $6F, $6F, $6F
@end:

oam_frameset_4f:
	.BYTE 1 | (@end - @start - 1) << 4

@start:
	.BYTE $70, $70, $70, $70, $70
@end:

oam_frameset_50:
	.BYTE 1 | (@end - @start - 1) << 4

@start:
	.BYTE $71, $71, $71, $71, $71
@end:

oam_frameset_51:
	.BYTE 1 | (@end - @start - 1) << 4

@start:
	.BYTE $72, $72, $72, $72, $72
@end:

oam_frameset_52:
	.BYTE 1 | (@end - @start - 1) << 4

@start:
	.BYTE $73, $73, $73, $73, $73
@end:

oam_frameset_53:
	.BYTE 1 | (@end - @start - 1) << 4

@start:
	.BYTE $74, $74, $74, $74, $74
@end:

oam_frameset_54:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $61, $62, $63, $60, $61, $62, $63, $60
@end:

oam_frameset_55:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $76
@end:

oam_frameset_56:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $77
@end:

oam_frameset_57:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $2E
@end:

oam_frameset_58:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $2F
@end:

oam_frameset_59:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $4B
@end:

oam_frameset_5a:
	.BYTE 12 | (@end - @start - 1) << 4

@start:
	.BYTE $5A, $5A
@end:

oam_frameset_5b:
	.BYTE 4 | (@end - @start - 1) << 4

@start:
	.BYTE $79, $7C, $7B, $7A
@end:

oam_frameset_5c:
	.BYTE 8 | (@end - @start - 1) << 4

@start:
	.BYTE $7D, $7E
@end:

oam_frameset_5d:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $7F
@end:

oam_frameset_5e:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $80
@end:

oam_frameset_5f:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $60, $61, $62, $63, $60
@end:

oam_frameset_60:
	.BYTE 6 | (@end - @start - 1) << 4

@start:
	.BYTE $84, $85, $86
@end:

oam_frameset_61:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $87, $88, $89, $88
@end:

oam_frameset_62:
	.BYTE 1 | (@end - @start - 1) << 4

@start:
	.BYTE $8A, $8A, $8A, $8A, $8A
@end:

oam_frameset_63:
	.BYTE 1 | (@end - @start - 1) << 4

@start:
	.BYTE $8B, $8B, $8B, $8B, $8B
@end:

oam_frameset_64:
	.BYTE 1 | (@end - @start - 1) << 4

@start:
	.BYTE $8C, $8C, $8C, $8C, $8C
@end:

oam_frameset_65:
	.BYTE 1 | (@end - @start - 1) << 4

@start:
	.BYTE $8D, $8D, $8D, $8D, $8D
@end:

oam_frameset_66:
	.BYTE 1 | (@end - @start - 1) << 4

@start:
	.BYTE $8E, $8E, $8E, $8E, $8E
@end:

oam_frameset_67:
	.BYTE 1 | (@end - @start - 1) << 4

@start:
	.BYTE $8F, $8F, $8F, $8F, $8F
@end:

oam_frameset_68:
	.BYTE 1 | (@end - @start - 1) << 4

@start:
	.BYTE $90, $90, $90, $90, $90
@end:

oam_frameset_69:
	.BYTE 1 | (@end - @start - 1) << 4

@start:
	.BYTE $91, $91, $91, $91, $91
@end:

oam_frameset_6a:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $92, $93, $94
@end:

oam_frameset_6b:
	.BYTE 1 | (@end - @start - 1) << 4

@start:
	.BYTE $92, $94, $93
@end:

oam_frameset_6c:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $95
@end:

oam_frameset_6d:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $81
@end:

oam_frameset_6e:
	.BYTE 8 | (@end - @start - 1) << 4

@start:
	.BYTE $97, $97
@end:

oam_frameset_6f:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $98
@end:

oam_frameset_70:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $99
@end:

oam_frameset_71:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $9A
@end:

oam_frameset_72:
	.BYTE 8 | (@end - @start - 1) << 4

@start:
	.BYTE $9A, $9B
@end:

oam_frameset_73:
	.BYTE 15 | (@end - @start - 1) << 4

@start:
	.BYTE $9A, $9C
@end:

oam_frameset_74:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $9D
@end:

oam_frameset_75:
	.BYTE 8 | (@end - @start - 1) << 4

@start:
	.BYTE $9E, $9F, $A0
@end:

oam_frameset_76:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $A1
@end:

oam_frameset_77:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $82, $83, $96
@end:

oam_frameset_78:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $82, $96, $83
@end:

oam_frameset_79:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $A2
@end:

oam_frameset_7a:
	.BYTE 4 | (@end - @start - 1) << 4

@start:
	.BYTE $A5, $A4, $A3, $A4, $A5
@end:

oam_frameset_7b:
	.BYTE 2 | (@end - @start - 1) << 4

@start:
	.BYTE $A6, $A7
@end:

oam_frameset_7c:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $A8
@end:

oam_frameset_7d:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $A9, $AA, $AB, $AC, $A9
@end:

oam_frameset_7e:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $AD
@end:

oam_frameset_7f:
	.BYTE 1 | (@end - @start - 1) << 4

@start:
	.BYTE $AE, $AF
@end:

oam_frameset_80:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $B0
@end:

oam_frameset_81:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $B1
@end:

oam_frameset_82:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $B2
@end:

oam_frameset_83:
	.BYTE 15 | (@end - @start - 1) << 4

@start:
	.BYTE $B3, $B4
@end:

oam_frameset_84:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $B5
@end:

oam_frameset_85:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $B6
@end:

oam_frameset_86:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $B7
@end:

oam_frameset_87:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $B8
@end:

oam_frameset_88:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $B9
@end:

oam_frameset_89:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $BA
@end:

oam_frameset_8a:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $BB
@end:

oam_frameset_8b:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $BC
@end:

oam_frameset_8c:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $BD
@end:

oam_frameset_8d:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $BE
@end:

oam_frameset_8e:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $BF
@end:

oam_frameset_8f:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $C0
@end:

oam_frameset_90:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $C1
@end:

oam_frameset_91:
	.BYTE 0 | (@end - @start - 1) << 4

@start:
	.BYTE $C2
@end:
