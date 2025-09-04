;oam sprites changed per frame(s) | (table length - 1) << 4, oam frameset

oam_frameset_00:
	.BYTE 8 | (oam_frameset_00_table_end - oam_frameset_00_table - 1) << 4

oam_frameset_00_table:
	.BYTE $01, $01, $01, $01, $01, $01, $01, $01
	.BYTE $01, $01, $00
oam_frameset_00_table_end:

oam_frameset_01:
	.BYTE 8 | (oam_frameset_01_table_end - oam_frameset_01_table - 1) << 4

oam_frameset_01_table:
	.BYTE $10, $10, $10, $10, $10, $10, $10, $10
	.BYTE $10, $10, $10
oam_frameset_01_table_end:

oam_frameset_02:
	.BYTE 8 | (oam_frameset_02_table_end - oam_frameset_02_table - 1) << 4

oam_frameset_02_table:
	.BYTE $09, $09, $09, $09, $09, $09, $09, $09
	.BYTE $09, $09, $08
oam_frameset_02_table_end:

oam_frameset_03:
	.BYTE 2 | (oam_frameset_03_table_end - oam_frameset_03_table - 1) << 4

oam_frameset_03_table:
	.BYTE $01, $02, $02
oam_frameset_03_table_end:

oam_frameset_04:
	.BYTE 2 | (oam_frameset_04_table_end - oam_frameset_04_table - 1) << 4

oam_frameset_04_table:
	.BYTE $10, $10, $10
oam_frameset_04_table_end:

oam_frameset_05:
	.BYTE 2 | (oam_frameset_05_table_end - oam_frameset_05_table - 1) << 4

oam_frameset_05_table:
	.BYTE $09, $0A, $0A
oam_frameset_05_table_end:

oam_frameset_06:
	.BYTE 6 | (oam_frameset_06_table_end - oam_frameset_06_table - 1) << 4

oam_frameset_06_table:
	.BYTE $03, $05, $04, $05
oam_frameset_06_table_end:

oam_frameset_07:
	.BYTE 6 | (oam_frameset_07_table_end - oam_frameset_07_table - 1) << 4

oam_frameset_07_table:
	.BYTE $11, $13, $12, $13
oam_frameset_07_table_end:

oam_frameset_08:
	.BYTE 6 | (oam_frameset_08_table_end - oam_frameset_08_table - 1) << 4

oam_frameset_08_table:
	.BYTE $0B, $0D, $0C, $0D
oam_frameset_08_table_end:

oam_frameset_09:
	.BYTE 0 | (oam_frameset_09_table_end - oam_frameset_09_table - 1) << 4

oam_frameset_09_table:
	.BYTE $06
oam_frameset_09_table_end:

oam_frameset_0a:
	.BYTE 0 | (oam_frameset_0a_table_end - oam_frameset_0a_table - 1) << 4

oam_frameset_0a_table:
	.BYTE $14
oam_frameset_0a_table_end:

oam_frameset_0b:
	.BYTE 0 | (oam_frameset_0b_table_end - oam_frameset_0b_table - 1) << 4

oam_frameset_0b_table:
	.BYTE $0E
oam_frameset_0b_table_end:

oam_frameset_0c:
	.BYTE 6 | (oam_frameset_0c_table_end - oam_frameset_0c_table - 1) << 4

oam_frameset_0c_table:
	.BYTE $05, $02
oam_frameset_0c_table_end:

oam_frameset_0d:
	.BYTE 7 | (oam_frameset_0d_table_end - oam_frameset_0d_table - 1) << 4

oam_frameset_0d_table:
	.BYTE $13, $10
oam_frameset_0d_table_end:

oam_frameset_0e:
	.BYTE 7 | (oam_frameset_0e_table_end - oam_frameset_0e_table - 1) << 4

oam_frameset_0e_table:
	.BYTE $0D, $0A
oam_frameset_0e_table_end:

oam_frameset_0f:
	.BYTE 1 | (oam_frameset_0f_table_end - oam_frameset_0f_table - 1) << 4

oam_frameset_0f_table:
	.BYTE $04, $03
oam_frameset_0f_table_end:

oam_frameset_10:
	.BYTE 1 | (oam_frameset_10_table_end - oam_frameset_10_table - 1) << 4

oam_frameset_10_table:
	.BYTE $12, $11
oam_frameset_10_table_end:

oam_frameset_11:
	.BYTE 1 | (oam_frameset_11_table_end - oam_frameset_11_table - 1) << 4

oam_frameset_11_table:
	.BYTE $0C, $0B
oam_frameset_11_table_end:

oam_frameset_12:
	.BYTE 2 | (oam_frameset_12_table_end - oam_frameset_12_table - 1) << 4

oam_frameset_12_table:
	.BYTE $1A, $0F, $0F, $1A, $0F, $0F, $1A, $0F
	.BYTE $0F, $1A
oam_frameset_12_table_end:

oam_frameset_13:
	.BYTE 7 | (oam_frameset_13_table_end - oam_frameset_13_table - 1) << 4

oam_frameset_13_table:
	.BYTE $07, $07, $07, $07, $07, $07
oam_frameset_13_table_end:

oam_frameset_14:
	.BYTE 2 | (oam_frameset_14_table_end - oam_frameset_14_table - 1) << 4

oam_frameset_14_table:
	.BYTE $15, $16, $17, $15
oam_frameset_14_table_end:

oam_frameset_15:
	.BYTE 8 | (oam_frameset_15_table_end - oam_frameset_15_table - 1) << 4

oam_frameset_15_table:
	.BYTE $18, $19
oam_frameset_15_table_end:

oam_frameset_16:
	.BYTE 8 | (oam_frameset_16_table_end - oam_frameset_16_table - 1) << 4

oam_frameset_16_table:
	.BYTE $1B, $1B
oam_frameset_16_table_end:

oam_frameset_17:
	.BYTE 10 | (oam_frameset_17_table_end - oam_frameset_17_table - 1) << 4

oam_frameset_17_table:
	.BYTE $1C, $1D
oam_frameset_17_table_end:

oam_frameset_18:
	.BYTE 10 | (oam_frameset_18_table_end - oam_frameset_18_table - 1) << 4

oam_frameset_18_table:
	.BYTE $1B, $1B
oam_frameset_18_table_end:

oam_frameset_19:
	.BYTE 8 | (oam_frameset_19_table_end - oam_frameset_19_table - 1) << 4

oam_frameset_19_table:
	.BYTE $1E, $1F, $20
oam_frameset_19_table_end:

oam_frameset_1a:
	.BYTE 0 | (oam_frameset_1a_table_end - oam_frameset_1a_table - 1) << 4

oam_frameset_1a_table:
	.BYTE $21
oam_frameset_1a_table_end:

oam_frameset_1b:
	.BYTE 8 | (oam_frameset_1b_table_end - oam_frameset_1b_table - 1) << 4

oam_frameset_1b_table:
	.BYTE $22, $24
oam_frameset_1b_table_end:

oam_frameset_1c:
	.BYTE 2 | (oam_frameset_1c_table_end - oam_frameset_1c_table - 1) << 4

oam_frameset_1c_table:
	.BYTE $22
oam_frameset_1c_table_end:

oam_frameset_1d:
	.BYTE 15 | (oam_frameset_1d_table_end - oam_frameset_1d_table - 1) << 4

oam_frameset_1d_table:
	.BYTE $57
oam_frameset_1d_table_end:

oam_frameset_1e:
	.BYTE 12 | (oam_frameset_1e_table_end - oam_frameset_1e_table - 1) << 4

oam_frameset_1e_table:
	.BYTE $57, $57, $58, $58, $30, $30
oam_frameset_1e_table_end:

oam_frameset_1f:
	.BYTE 15 | (oam_frameset_1f_table_end - oam_frameset_1f_table - 1) << 4

oam_frameset_1f_table:
	.BYTE $39
oam_frameset_1f_table_end:

oam_frameset_20:
	.BYTE 8 | (oam_frameset_20_table_end - oam_frameset_20_table - 1) << 4

oam_frameset_20_table:
	.BYTE $37, $37, $38
oam_frameset_20_table_end:

oam_frameset_21:
	.BYTE 8 | (oam_frameset_21_table_end - oam_frameset_21_table - 1) << 4

oam_frameset_21_table:
	.BYTE $3F, $3E, $3E
oam_frameset_21_table_end:

oam_frameset_22:
	.BYTE 8 | (oam_frameset_22_table_end - oam_frameset_22_table - 1) << 4

oam_frameset_22_table:
	.BYTE $3F, $3E, $3E
oam_frameset_22_table_end:

oam_frameset_23:
	.BYTE 15 | (oam_frameset_23_table_end - oam_frameset_23_table - 1) << 4

oam_frameset_23_table:
	.BYTE $49
oam_frameset_23_table_end:

oam_frameset_24:
	.BYTE 8 | (oam_frameset_24_table_end - oam_frameset_24_table - 1) << 4

oam_frameset_24_table:
	.BYTE $47, $47, $48
oam_frameset_24_table_end:

oam_frameset_25:
	.BYTE 14 | (oam_frameset_25_table_end - oam_frameset_25_table - 1) << 4

oam_frameset_25_table:
	.BYTE $4F, $50
oam_frameset_25_table_end:

oam_frameset_26:
	.BYTE 2 | (oam_frameset_26_table_end - oam_frameset_26_table - 1) << 4

oam_frameset_26_table:
	.BYTE $4F
oam_frameset_26_table_end:

oam_frameset_27:
	.BYTE 13 | (oam_frameset_27_table_end - oam_frameset_27_table - 1) << 4

oam_frameset_27_table:
	.BYTE $5A, $5A
oam_frameset_27_table_end:

oam_frameset_28:
	.BYTE 0 | (oam_frameset_28_table_end - oam_frameset_28_table - 1) << 4

oam_frameset_28_table:
	.BYTE $59
oam_frameset_28_table_end:

oam_frameset_29:
	.BYTE 0 | (oam_frameset_29_table_end - oam_frameset_29_table - 1) << 4

oam_frameset_29_table:
	.BYTE $34
oam_frameset_29_table_end:

oam_frameset_2a:
	.BYTE 0 | (oam_frameset_2a_table_end - oam_frameset_2a_table - 1) << 4

oam_frameset_2a_table:
	.BYTE $36
oam_frameset_2a_table_end:

oam_frameset_2b:
	.BYTE 15 | (oam_frameset_2b_table_end - oam_frameset_2b_table - 1) << 4

oam_frameset_2b_table:
	.BYTE $33
oam_frameset_2b_table_end:

oam_frameset_2c:
	.BYTE 15 | (oam_frameset_2c_table_end - oam_frameset_2c_table - 1) << 4

oam_frameset_2c_table:
	.BYTE $32
oam_frameset_2c_table_end:

oam_frameset_2d:
	.BYTE 0 | (oam_frameset_2d_table_end - oam_frameset_2d_table - 1) << 4

oam_frameset_2d_table:
	.BYTE $51
oam_frameset_2d_table_end:

oam_frameset_2e:
	.BYTE 0 | (oam_frameset_2e_table_end - oam_frameset_2e_table - 1) << 4

oam_frameset_2e_table:
	.BYTE $54
oam_frameset_2e_table_end:

oam_frameset_2f:
	.BYTE 0 | (oam_frameset_2f_table_end - oam_frameset_2f_table - 1) << 4

oam_frameset_2f_table:
	.BYTE $52
oam_frameset_2f_table_end:

oam_frameset_30:
	.BYTE 0 | (oam_frameset_30_table_end - oam_frameset_30_table - 1) << 4

oam_frameset_30_table:
	.BYTE $53
oam_frameset_30_table_end:

oam_frameset_31:
	.BYTE 0 | (oam_frameset_31_table_end - oam_frameset_31_table - 1) << 4

oam_frameset_31_table:
	.BYTE $55
oam_frameset_31_table_end:

oam_frameset_32:
	.BYTE 15 | (oam_frameset_32_table_end - oam_frameset_32_table - 1) << 4

oam_frameset_32_table:
	.BYTE $5B, $5B, $5B
oam_frameset_32_table_end:

oam_frameset_33:
	.BYTE 8 | (oam_frameset_33_table_end - oam_frameset_33_table - 1) << 4

oam_frameset_33_table:
	.BYTE $3F, $3F, $3E
oam_frameset_33_table_end:

oam_frameset_34:
	.BYTE 6 | (oam_frameset_34_table_end - oam_frameset_34_table - 1) << 4

oam_frameset_34_table:
	.BYTE $42, $44, $43, $44
oam_frameset_34_table_end:

oam_frameset_35:
	.BYTE 8 | (oam_frameset_35_table_end - oam_frameset_35_table - 1) << 4

oam_frameset_35_table:
	.BYTE $46, $45, $45
oam_frameset_35_table_end:

oam_frameset_36:
	.BYTE 7 | (oam_frameset_36_table_end - oam_frameset_36_table - 1) << 4

oam_frameset_36_table:
	.BYTE $64, $65, $66
oam_frameset_36_table_end:

oam_frameset_37:
	.BYTE 6 | (oam_frameset_37_table_end - oam_frameset_37_table - 1) << 4

oam_frameset_37_table:
	.BYTE $64, $65, $66
oam_frameset_37_table_end:

oam_frameset_38:
	.BYTE 10 | (oam_frameset_38_table_end - oam_frameset_38_table - 1) << 4

oam_frameset_38_table:
	.BYTE $5F, $5E, $5E, $5F, $5E, $5E, $5F, $5E
	.BYTE $5E, $5F, $5E, $5E
oam_frameset_38_table_end:

oam_frameset_39:
	.BYTE 0 | (oam_frameset_39_table_end - oam_frameset_39_table - 1) << 4

oam_frameset_39_table:
	.BYTE $60, $60, $61, $62, $63, $60, $61, $62
	.BYTE $63
oam_frameset_39_table_end:

oam_frameset_3a:
	.BYTE 8 | (oam_frameset_3a_table_end - oam_frameset_3a_table - 1) << 4

oam_frameset_3a_table:
	.BYTE $67, $68
oam_frameset_3a_table_end:

oam_frameset_3b:
	.BYTE 12 | (oam_frameset_3b_table_end - oam_frameset_3b_table - 1) << 4

oam_frameset_3b_table:
	.BYTE $3B, $3C
oam_frameset_3b_table_end:

oam_frameset_3c:
	.BYTE 0 | (oam_frameset_3c_table_end - oam_frameset_3c_table - 1) << 4

oam_frameset_3c_table:
	.BYTE $37
oam_frameset_3c_table_end:

oam_frameset_3d:
	.BYTE 0 | (oam_frameset_3d_table_end - oam_frameset_3d_table - 1) << 4

oam_frameset_3d_table:
	.BYTE $3D
oam_frameset_3d_table_end:

oam_frameset_3e:
	.BYTE 0 | (oam_frameset_3e_table_end - oam_frameset_3e_table - 1) << 4

oam_frameset_3e_table:
	.BYTE $3A
oam_frameset_3e_table_end:

oam_frameset_3f:
	.BYTE 6 | (oam_frameset_3f_table_end - oam_frameset_3f_table - 1) << 4

oam_frameset_3f_table:
	.BYTE $2A, $2E, $2C, $2E
oam_frameset_3f_table_end:

oam_frameset_40:
	.BYTE 6 | (oam_frameset_40_table_end - oam_frameset_40_table - 1) << 4

oam_frameset_40_table:
	.BYTE $2B, $2F, $2D, $2F
oam_frameset_40_table_end:

oam_frameset_41:
	.BYTE 0 | (oam_frameset_41_table_end - oam_frameset_41_table - 1) << 4

oam_frameset_41_table:
	.BYTE $28
oam_frameset_41_table_end:

oam_frameset_42:
	.BYTE 0 | (oam_frameset_42_table_end - oam_frameset_42_table - 1) << 4

oam_frameset_42_table:
	.BYTE $29
oam_frameset_42_table_end:

oam_frameset_43:
	.BYTE 15 | (oam_frameset_43_table_end - oam_frameset_43_table - 1) << 4

oam_frameset_43_table:
	.BYTE $26, $27
oam_frameset_43_table_end:

oam_frameset_44:
	.BYTE 15 | (oam_frameset_44_table_end - oam_frameset_44_table - 1) << 4

oam_frameset_44_table:
	.BYTE $27, $27
oam_frameset_44_table_end:

oam_frameset_45:
	.BYTE 4 | (oam_frameset_45_table_end - oam_frameset_45_table - 1) << 4

oam_frameset_45_table:
	.BYTE $69, $6A, $6B, $6C
oam_frameset_45_table_end:

oam_frameset_46:
	.BYTE 8 | (oam_frameset_46_table_end - oam_frameset_46_table - 1) << 4

oam_frameset_46_table:
	.BYTE $22, $24
oam_frameset_46_table_end:

oam_frameset_47:
	.BYTE 8 | (oam_frameset_47_table_end - oam_frameset_47_table - 1) << 4

oam_frameset_47_table:
	.BYTE $23, $25
oam_frameset_47_table_end:

oam_frameset_48:
	.BYTE 6 | (oam_frameset_48_table_end - oam_frameset_48_table - 1) << 4

oam_frameset_48_table:
	.BYTE $4A, $4B
oam_frameset_48_table_end:

oam_frameset_49:
	.BYTE 0 | (oam_frameset_49_table_end - oam_frameset_49_table - 1) << 4

oam_frameset_49_table:
	.BYTE $4E
oam_frameset_49_table_end:

oam_frameset_4a:
	.BYTE 0 | (oam_frameset_4a_table_end - oam_frameset_4a_table - 1) << 4

oam_frameset_4a_table:
	.BYTE $4D
oam_frameset_4a_table_end:

oam_frameset_4b:
	.BYTE 0 | (oam_frameset_4b_table_end - oam_frameset_4b_table - 1) << 4

oam_frameset_4b_table:
	.BYTE $4C
oam_frameset_4b_table_end:

oam_frameset_4c:
	.BYTE 1 | (oam_frameset_4c_table_end - oam_frameset_4c_table - 1) << 4

oam_frameset_4c_table:
	.BYTE $6D, $6D, $6D, $6D, $6D
oam_frameset_4c_table_end:

oam_frameset_4d:
	.BYTE 1 | (oam_frameset_4d_table_end - oam_frameset_4d_table - 1) << 4

oam_frameset_4d_table:
	.BYTE $6E, $6E, $6E, $6E, $6E
oam_frameset_4d_table_end:

oam_frameset_4e:
	.BYTE 1 | (oam_frameset_4e_table_end - oam_frameset_4e_table - 1) << 4

oam_frameset_4e_table:
	.BYTE $6F, $6F, $6F, $6F, $6F
oam_frameset_4e_table_end:

oam_frameset_4f:
	.BYTE 1 | (oam_frameset_4f_table_end - oam_frameset_4f_table - 1) << 4

oam_frameset_4f_table:
	.BYTE $70, $70, $70, $70, $70
oam_frameset_4f_table_end:

oam_frameset_50:
	.BYTE 1 | (oam_frameset_50_table_end - oam_frameset_50_table - 1) << 4

oam_frameset_50_table:
	.BYTE $71, $71, $71, $71, $71
oam_frameset_50_table_end:

oam_frameset_51:
	.BYTE 1 | (oam_frameset_51_table_end - oam_frameset_51_table - 1) << 4

oam_frameset_51_table:
	.BYTE $72, $72, $72, $72, $72
oam_frameset_51_table_end:

oam_frameset_52:
	.BYTE 1 | (oam_frameset_52_table_end - oam_frameset_52_table - 1) << 4

oam_frameset_52_table:
	.BYTE $73, $73, $73, $73, $73
oam_frameset_52_table_end:

oam_frameset_53:
	.BYTE 1 | (oam_frameset_53_table_end - oam_frameset_53_table - 1) << 4

oam_frameset_53_table:
	.BYTE $74, $74, $74, $74, $74
oam_frameset_53_table_end:

oam_frameset_54:
	.BYTE 0 | (oam_frameset_54_table_end - oam_frameset_54_table - 1) << 4

oam_frameset_54_table:
	.BYTE $61, $62, $63, $60, $61, $62, $63, $60
oam_frameset_54_table_end:

oam_frameset_55:
	.BYTE 0 | (oam_frameset_55_table_end - oam_frameset_55_table - 1) << 4

oam_frameset_55_table:
	.BYTE $76
oam_frameset_55_table_end:

oam_frameset_56:
	.BYTE 0 | (oam_frameset_56_table_end - oam_frameset_56_table - 1) << 4

oam_frameset_56_table:
	.BYTE $77
oam_frameset_56_table_end:

oam_frameset_57:
	.BYTE 0 | (oam_frameset_57_table_end - oam_frameset_57_table - 1) << 4

oam_frameset_57_table:
	.BYTE $2E
oam_frameset_57_table_end:

oam_frameset_58:
	.BYTE 0 | (oam_frameset_58_table_end - oam_frameset_58_table - 1) << 4

oam_frameset_58_table:
	.BYTE $2F
oam_frameset_58_table_end:

oam_frameset_59:
	.BYTE 0 | (oam_frameset_59_table_end - oam_frameset_59_table - 1) << 4

oam_frameset_59_table:
	.BYTE $4B
oam_frameset_59_table_end:

oam_frameset_5a:
	.BYTE 12 | (oam_frameset_5a_table_end - oam_frameset_5a_table - 1) << 4

oam_frameset_5a_table:
	.BYTE $5A, $5A
oam_frameset_5a_table_end:

oam_frameset_5b:
	.BYTE 4 | (oam_frameset_5b_table_end - oam_frameset_5b_table - 1) << 4

oam_frameset_5b_table:
	.BYTE $79, $7C, $7B, $7A
oam_frameset_5b_table_end:

oam_frameset_5c:
	.BYTE 8 | (oam_frameset_5c_table_end - oam_frameset_5c_table - 1) << 4

oam_frameset_5c_table:
	.BYTE $7D, $7E
oam_frameset_5c_table_end:

oam_frameset_5d:
	.BYTE 0 | (oam_frameset_5d_table_end - oam_frameset_5d_table - 1) << 4

oam_frameset_5d_table:
	.BYTE $7F
oam_frameset_5d_table_end:

oam_frameset_5e:
	.BYTE 0 | (oam_frameset_5e_table_end - oam_frameset_5e_table - 1) << 4

oam_frameset_5e_table:
	.BYTE $80
oam_frameset_5e_table_end:

oam_frameset_5f:
	.BYTE 0 | (oam_frameset_5f_table_end - oam_frameset_5f_table - 1) << 4

oam_frameset_5f_table:
	.BYTE $60, $61, $62, $63, $60
oam_frameset_5f_table_end:

oam_frameset_60:
	.BYTE 6 | (oam_frameset_60_table_end - oam_frameset_60_table - 1) << 4

oam_frameset_60_table:
	.BYTE $84, $85, $86
oam_frameset_60_table_end:

oam_frameset_61:
	.BYTE 0 | (oam_frameset_61_table_end - oam_frameset_61_table - 1) << 4

oam_frameset_61_table:
	.BYTE $87, $88, $89, $88
oam_frameset_61_table_end:

oam_frameset_62:
	.BYTE 1 | (oam_frameset_62_table_end - oam_frameset_62_table - 1) << 4

oam_frameset_62_table:
	.BYTE $8A, $8A, $8A, $8A, $8A
oam_frameset_62_table_end:

oam_frameset_63:
	.BYTE 1 | (oam_frameset_63_table_end - oam_frameset_63_table - 1) << 4

oam_frameset_63_table:
	.BYTE $8B, $8B, $8B, $8B, $8B
oam_frameset_63_table_end:

oam_frameset_64:
	.BYTE 1 | (oam_frameset_64_table_end - oam_frameset_64_table - 1) << 4

oam_frameset_64_table:
	.BYTE $8C, $8C, $8C, $8C, $8C
oam_frameset_64_table_end:

oam_frameset_65:
	.BYTE 1 | (oam_frameset_65_table_end - oam_frameset_65_table - 1) << 4

oam_frameset_65_table:
	.BYTE $8D, $8D, $8D, $8D, $8D
oam_frameset_65_table_end:

oam_frameset_66:
	.BYTE 1 | (oam_frameset_66_table_end - oam_frameset_66_table - 1) << 4

oam_frameset_66_table:
	.BYTE $8E, $8E, $8E, $8E, $8E
oam_frameset_66_table_end:

oam_frameset_67:
	.BYTE 1 | (oam_frameset_67_table_end - oam_frameset_67_table - 1) << 4

oam_frameset_67_table:
	.BYTE $8F, $8F, $8F, $8F, $8F
oam_frameset_67_table_end:

oam_frameset_68:
	.BYTE 1 | (oam_frameset_68_table_end - oam_frameset_68_table - 1) << 4

oam_frameset_68_table:
	.BYTE $90, $90, $90, $90, $90
oam_frameset_68_table_end:

oam_frameset_69:
	.BYTE 1 | (oam_frameset_69_table_end - oam_frameset_69_table - 1) << 4

oam_frameset_69_table:
	.BYTE $91, $91, $91, $91, $91
oam_frameset_69_table_end:

oam_frameset_6a:
	.BYTE 0 | (oam_frameset_6a_table_end - oam_frameset_6a_table - 1) << 4

oam_frameset_6a_table:
	.BYTE $92, $93, $94
oam_frameset_6a_table_end:

oam_frameset_6b:
	.BYTE 1 | (oam_frameset_6b_table_end - oam_frameset_6b_table - 1) << 4

oam_frameset_6b_table:
	.BYTE $92, $94, $93
oam_frameset_6b_table_end:

oam_frameset_6c:
	.BYTE 0 | (oam_frameset_6c_table_end - oam_frameset_6c_table - 1) << 4

oam_frameset_6c_table:
	.BYTE $95
oam_frameset_6c_table_end:

oam_frameset_6d:
	.BYTE 0 | (oam_frameset_6d_table_end - oam_frameset_6d_table - 1) << 4

oam_frameset_6d_table:
	.BYTE $81
oam_frameset_6d_table_end:

oam_frameset_6e:
	.BYTE 8 | (oam_frameset_6e_table_end - oam_frameset_6e_table - 1) << 4

oam_frameset_6e_table:
	.BYTE $97, $97
oam_frameset_6e_table_end:

oam_frameset_6f:
	.BYTE 0 | (oam_frameset_6f_table_end - oam_frameset_6f_table - 1) << 4

oam_frameset_6f_table:
	.BYTE $98
oam_frameset_6f_table_end:

oam_frameset_70:
	.BYTE 0 | (oam_frameset_70_table_end - oam_frameset_70_table - 1) << 4

oam_frameset_70_table:
	.BYTE $99
oam_frameset_70_table_end:

oam_frameset_71:
	.BYTE 0 | (oam_frameset_71_table_end - oam_frameset_71_table - 1) << 4

oam_frameset_71_table:
	.BYTE $9A
oam_frameset_71_table_end:

oam_frameset_72:
	.BYTE 8 | (oam_frameset_72_table_end - oam_frameset_72_table - 1) << 4

oam_frameset_72_table:
	.BYTE $9A, $9B
oam_frameset_72_table_end:

oam_frameset_73:
	.BYTE 15 | (oam_frameset_73_table_end - oam_frameset_73_table - 1) << 4

oam_frameset_73_table:
	.BYTE $9A, $9C
oam_frameset_73_table_end:

oam_frameset_74:
	.BYTE 0 | (oam_frameset_74_table_end - oam_frameset_74_table - 1) << 4

oam_frameset_74_table:
	.BYTE $9D
oam_frameset_74_table_end:

oam_frameset_75:
	.BYTE 8 | (oam_frameset_75_table_end - oam_frameset_75_table - 1) << 4

oam_frameset_75_table:
	.BYTE $9E, $9F, $A0
oam_frameset_75_table_end:

oam_frameset_76:
	.BYTE 0 | (oam_frameset_76_table_end - oam_frameset_76_table - 1) << 4

oam_frameset_76_table:
	.BYTE $A1
oam_frameset_76_table_end:

oam_frameset_77:
	.BYTE 0 | (oam_frameset_77_table_end - oam_frameset_77_table - 1) << 4

oam_frameset_77_table:
	.BYTE $82, $83, $96
oam_frameset_77_table_end:

oam_frameset_78:
	.BYTE 0 | (oam_frameset_78_table_end - oam_frameset_78_table - 1) << 4

oam_frameset_78_table:
	.BYTE $82, $96, $83
oam_frameset_78_table_end:

oam_frameset_79:
	.BYTE 0 | (oam_frameset_79_table_end - oam_frameset_79_table - 1) << 4

oam_frameset_79_table:
	.BYTE $A2
oam_frameset_79_table_end:

oam_frameset_7a:
	.BYTE 4 | (oam_frameset_7a_table_end - oam_frameset_7a_table - 1) << 4

oam_frameset_7a_table:
	.BYTE $A5, $A4, $A3, $A4, $A5
oam_frameset_7a_table_end:

oam_frameset_7b:
	.BYTE 2 | (oam_frameset_7b_table_end - oam_frameset_7b_table - 1) << 4

oam_frameset_7b_table:
	.BYTE $A6, $A7
oam_frameset_7b_table_end:

oam_frameset_7c:
	.BYTE 0 | (oam_frameset_7c_table_end - oam_frameset_7c_table - 1) << 4

oam_frameset_7c_table:
	.BYTE $A8
oam_frameset_7c_table_end:

oam_frameset_7d:
	.BYTE 0 | (oam_frameset_7d_table_end - oam_frameset_7d_table - 1) << 4

oam_frameset_7d_table:
	.BYTE $A9, $AA, $AB, $AC, $A9
oam_frameset_7d_table_end:

oam_frameset_7e:
	.BYTE 0 | (oam_frameset_7e_table_end - oam_frameset_7e_table - 1) << 4

oam_frameset_7e_table:
	.BYTE $AD
oam_frameset_7e_table_end:

oam_frameset_7f:
	.BYTE 1 | (oam_frameset_7f_table_end - oam_frameset_7f_table - 1) << 4

oam_frameset_7f_table:
	.BYTE $AE, $AF
oam_frameset_7f_table_end:

oam_frameset_80:
	.BYTE 0 | (oam_frameset_80_table_end - oam_frameset_80_table - 1) << 4

oam_frameset_80_table:
	.BYTE $B0
oam_frameset_80_table_end:

oam_frameset_81:
	.BYTE 0 | (oam_frameset_81_table_end - oam_frameset_81_table - 1) << 4

oam_frameset_81_table:
	.BYTE $B1
oam_frameset_81_table_end:

oam_frameset_82:
	.BYTE 0 | (oam_frameset_82_table_end - oam_frameset_82_table - 1) << 4

oam_frameset_82_table:
	.BYTE $B2
oam_frameset_82_table_end:

oam_frameset_83:
	.BYTE 15 | (oam_frameset_83_table_end - oam_frameset_83_table - 1) << 4

oam_frameset_83_table:
	.BYTE $B3, $B4
oam_frameset_83_table_end:

oam_frameset_84:
	.BYTE 0 | (oam_frameset_84_table_end - oam_frameset_84_table - 1) << 4

oam_frameset_84_table:
	.BYTE $B5
oam_frameset_84_table_end:

oam_frameset_85:
	.BYTE 0 | (oam_frameset_85_table_end - oam_frameset_85_table - 1) << 4

oam_frameset_85_table:
	.BYTE $B6
oam_frameset_85_table_end:

oam_frameset_86:
	.BYTE 0 | (oam_frameset_86_table_end - oam_frameset_86_table - 1) << 4

oam_frameset_86_table:
	.BYTE $B7
oam_frameset_86_table_end:

oam_frameset_87:
	.BYTE 0 | (oam_frameset_87_table_end - oam_frameset_87_table - 1) << 4

oam_frameset_87_table:
	.BYTE $B8
oam_frameset_87_table_end:

oam_frameset_88:
	.BYTE 0 | (oam_frameset_88_table_end - oam_frameset_88_table - 1) << 4

oam_frameset_88_table:
	.BYTE $B9
oam_frameset_88_table_end:

oam_frameset_89:
	.BYTE 0 | (oam_frameset_89_table_end - oam_frameset_89_table - 1) << 4

oam_frameset_89_table:
	.BYTE $BA
oam_frameset_89_table_end:

oam_frameset_8a:
	.BYTE 0 | (oam_frameset_8a_table_end - oam_frameset_8a_table - 1) << 4

oam_frameset_8a_table:
	.BYTE $BB
oam_frameset_8a_table_end:

oam_frameset_8b:
	.BYTE 0 | (oam_frameset_8b_table_end - oam_frameset_8b_table - 1) << 4

oam_frameset_8b_table:
	.BYTE $BC
oam_frameset_8b_table_end:

oam_frameset_8c:
	.BYTE 0 | (oam_frameset_8c_table_end - oam_frameset_8c_table - 1) << 4

oam_frameset_8c_table:
	.BYTE $BD
oam_frameset_8c_table_end:

oam_frameset_8d:
	.BYTE 0 | (oam_frameset_8d_table_end - oam_frameset_8d_table - 1) << 4

oam_frameset_8d_table:
	.BYTE $BE
oam_frameset_8d_table_end:

oam_frameset_8e:
	.BYTE 0 | (oam_frameset_8e_table_end - oam_frameset_8e_table - 1) << 4

oam_frameset_8e_table:
	.BYTE $BF
oam_frameset_8e_table_end:

oam_frameset_8f:
	.BYTE 0 | (oam_frameset_8f_table_end - oam_frameset_8f_table - 1) << 4

oam_frameset_8f_table:
	.BYTE $C0
oam_frameset_8f_table_end:

oam_frameset_90:
	.BYTE 0 | (oam_frameset_90_table_end - oam_frameset_90_table - 1) << 4

oam_frameset_90_table:
	.BYTE $C1
oam_frameset_90_table_end:

oam_frameset_91:
	.BYTE 0 | (oam_frameset_91_table_end - oam_frameset_91_table - 1) << 4

oam_frameset_91_table:
	.BYTE $C2
oam_frameset_91_table_end:
