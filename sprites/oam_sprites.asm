;oam sprites data
;table length, oamcoord index, oam set

oam_sprites_00:
	.BYTE (oam_sprites_00_table_end - oam_sprites_00_table) / 2
	.BYTE $00

oam_sprites_00_table:
	.BYTE $1A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $29, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $2A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $2B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $09, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $0A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $0B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $19, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $1B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $20, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_00_table_end:

oam_sprites_01:
	.BYTE (oam_sprites_01_table_end - oam_sprites_01_table) / 2
	.BYTE $00

oam_sprites_01_table:
	.BYTE $1A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $29, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $2A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $2B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $09, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $0A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $0B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $19, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $1B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $00, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_01_table_end:

oam_sprites_02:
	.BYTE (oam_sprites_02_table_end - oam_sprites_02_table) / 2
	.BYTE $00

oam_sprites_02_table:
	.BYTE $1A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $03, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $04, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $2B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $09, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $0A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $0B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $19, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $1B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $00, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_02_table_end:

oam_sprites_03:
	.BYTE (oam_sprites_03_table_end - oam_sprites_03_table) / 2
	.BYTE $01

oam_sprites_03_table:
	.BYTE $01, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $02, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $11, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $12, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $21, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $22, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $23, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $00, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $13, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $10, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_03_table_end:

oam_sprites_04:
	.BYTE (oam_sprites_04_table_end - oam_sprites_04_table) / 2
	.BYTE $01

oam_sprites_04_table:
	.BYTE $01, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $05, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $14, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $15, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $24, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $25, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $26, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $00, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $16, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_04_table_end:

oam_sprites_05:
	.BYTE (oam_sprites_05_table_end - oam_sprites_05_table) / 2
	.BYTE $02

oam_sprites_05_table:
	.BYTE $07, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $08, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $17, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $18, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $27, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $28, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $06, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $00, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_05_table_end:

oam_sprites_06:
	.BYTE (oam_sprites_06_table_end - oam_sprites_06_table) / 2
	.BYTE $04

oam_sprites_06_table:
	.BYTE $31, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $32, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $41, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $42, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $51, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $52, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $30, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $50, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $40, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $2F, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $30, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_06_table_end:

oam_sprites_07:
	.BYTE (oam_sprites_07_table_end - oam_sprites_07_table) / 2
	.BYTE $03

oam_sprites_07_table:
	.BYTE $0C, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $0D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $47, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $1D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $57, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $38, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $2E, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $1E, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $46, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $56, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_07_table_end:

oam_sprites_08:
	.BYTE (oam_sprites_08_table_end - oam_sprites_08_table) / 2
	.BYTE $00

oam_sprites_08_table:
	.BYTE $1A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $49, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $2A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $2B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $48, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $0A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $0B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $58, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $1B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $20, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_08_table_end:

oam_sprites_09:
	.BYTE (oam_sprites_09_table_end - oam_sprites_09_table) / 2
	.BYTE $00

oam_sprites_09_table:
	.BYTE $1A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $49, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $2A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $2B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $48, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $0A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $0B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $58, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $1B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $00, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_09_table_end:

oam_sprites_0a:
	.BYTE (oam_sprites_0a_table_end - oam_sprites_0a_table) / 2
	.BYTE $00

oam_sprites_0a_table:
	.BYTE $1A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $39, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $04, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $2B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $48, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $0A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $0B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $58, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $1B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $00, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_0a_table_end:

oam_sprites_0b:
	.BYTE (oam_sprites_0b_table_end - oam_sprites_0b_table) / 2
	.BYTE $01

oam_sprites_0b_table:
	.BYTE $5B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $02, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $5C, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $12, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $4B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $22, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $23, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $00, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $13, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_0b_table_end:

oam_sprites_0c:
	.BYTE (oam_sprites_0c_table_end - oam_sprites_0c_table) / 2
	.BYTE $01

oam_sprites_0c_table:
	.BYTE $5B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $05, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $5A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $3B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $24, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $25, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $4D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $00, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_0c_table_end:

oam_sprites_0d:
	.BYTE (oam_sprites_0d_table_end - oam_sprites_0d_table) / 2
	.BYTE $02

oam_sprites_0d_table:
	.BYTE $3C, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $08, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $4C, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $18, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $27, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $28, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $06, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $00, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_0d_table_end:

oam_sprites_0e:
	.BYTE (oam_sprites_0e_table_end - oam_sprites_0e_table) / 2
	.BYTE $04

oam_sprites_0e_table:
	.BYTE $3C, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $32, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $3D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $42, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $51, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $52, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $30, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $50, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $40, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $2F, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_0e_table_end:

oam_sprites_0f:
	.BYTE (oam_sprites_0f_table_end - oam_sprites_0f_table) / 2
	.BYTE $05

oam_sprites_0f_table:
	.BYTE $0C, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $0D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $1C, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $1D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $2C, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $2D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $1E, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $50, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $0E, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $2E, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $1E, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
oam_sprites_0f_table_end:

oam_sprites_10:
	.BYTE (oam_sprites_10_table_end - oam_sprites_10_table) / 2
	.BYTE $07

oam_sprites_10_table:
	.BYTE $07, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $0D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $43, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $44, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $53, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $54, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $55, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $45, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $0F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $00, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_10_table_end:

oam_sprites_11:
	.BYTE (oam_sprites_11_table_end - oam_sprites_11_table) / 2
	.BYTE $01

oam_sprites_11_table:
	.BYTE $01, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $02, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $4A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $12, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $4B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $22, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $23, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $00, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $13, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $0F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_11_table_end:

oam_sprites_12:
	.BYTE (oam_sprites_12_table_end - oam_sprites_12_table) / 2
	.BYTE $08

oam_sprites_12_table:
	.BYTE $01, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $05, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $3A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $3B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $24, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $25, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $00, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $0F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $4D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_12_table_end:

oam_sprites_13:
	.BYTE (oam_sprites_13_table_end - oam_sprites_13_table) / 2
	.BYTE $02

oam_sprites_13_table:
	.BYTE $07, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $08, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $59, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $18, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $27, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $28, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $06, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $00, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $0F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_13_table_end:

oam_sprites_14:
	.BYTE (oam_sprites_14_table_end - oam_sprites_14_table) / 2
	.BYTE $06

oam_sprites_14_table:
	.BYTE $07, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $32, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $6C, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $42, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $51, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $52, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $30, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $50, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $40, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $2F, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $0F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_14_table_end:

oam_sprites_15:
	.BYTE (oam_sprites_15_table_end - oam_sprites_15_table) / 2
	.BYTE $09

oam_sprites_15_table:
	.BYTE $33, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $33, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $33, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $33, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_15_table_end:

oam_sprites_16:
	.BYTE (oam_sprites_16_table_end - oam_sprites_16_table) / 2
	.BYTE $09

oam_sprites_16_table:
	.BYTE $1F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $36, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $36, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $37, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $35, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $35, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $34, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $35, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $35, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $34, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
oam_sprites_16_table_end:

oam_sprites_17:
	.BYTE (oam_sprites_17_table_end - oam_sprites_17_table) / 2
	.BYTE $00

oam_sprites_17_table:
	.BYTE $1F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $34, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $37, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $34, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
oam_sprites_17_table_end:

oam_sprites_18:
	.BYTE (oam_sprites_18_table_end - oam_sprites_18_table) / 2
	.BYTE $0B

oam_sprites_18_table:
	.BYTE $3E, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $3F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $4E, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $4F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $5F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $5E, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $5D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_18_table_end:

oam_sprites_19:
	.BYTE (oam_sprites_19_table_end - oam_sprites_19_table) / 2
	.BYTE $0A

oam_sprites_19_table:
	.BYTE $3F, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $3E, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $4F, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $4E, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $5F, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $5E, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $5D, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
oam_sprites_19_table_end:

oam_sprites_1a:
	.BYTE (oam_sprites_1a_table_end - oam_sprites_1a_table) / 2
	.BYTE $00

oam_sprites_1a_table:
	.BYTE $7B, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $79, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $7A, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $79, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $77, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $7A, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $77, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $78, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $78, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
oam_sprites_1a_table_end:

oam_sprites_1b:
	.BYTE (oam_sprites_1b_table_end - oam_sprites_1b_table) / 2
	.BYTE $0A

oam_sprites_1b_table:
	.BYTE $6D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $6E, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $7D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $7E, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $6F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $5E, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $5D, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $0F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $7C, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_1b_table_end:

oam_sprites_1c:
	.BYTE (oam_sprites_1c_table_end - oam_sprites_1c_table) / 2
	.BYTE $0B

oam_sprites_1c_table:
	.BYTE $60, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $60, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $62, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $61, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $63, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
oam_sprites_1c_table_end:

oam_sprites_1d:
	.BYTE (oam_sprites_1d_table_end - oam_sprites_1d_table) / 2
	.BYTE $0A

oam_sprites_1d_table:
	.BYTE $60, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $60, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $61, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $62, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $63, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_1d_table_end:

oam_sprites_1e:
	.BYTE (oam_sprites_1e_table_end - oam_sprites_1e_table) / 2
	.BYTE $0C

oam_sprites_1e_table:
	.BYTE $74, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $74, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $74, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_1e_table_end:

oam_sprites_1f:
	.BYTE (oam_sprites_1f_table_end - oam_sprites_1f_table) / 2
	.BYTE $0C

oam_sprites_1f_table:
	.BYTE $75, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $75, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $75, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_1f_table_end:

oam_sprites_20:
	.BYTE (oam_sprites_20_table_end - oam_sprites_20_table) / 2
	.BYTE $0C

oam_sprites_20_table:
	.BYTE $76, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $76, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $76, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_20_table_end:

oam_sprites_21:
	.BYTE (oam_sprites_21_table_end - oam_sprites_21_table) / 2
	.BYTE $00

oam_sprites_21_table:
	.BYTE $69, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_21_table_end:

oam_sprites_22:
	.BYTE (oam_sprites_22_table_end - oam_sprites_22_table) / 2
	.BYTE $0D

oam_sprites_22_table:
	.BYTE $82, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $80, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $85, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $84, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $83, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $88, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
oam_sprites_22_table_end:

oam_sprites_23:
	.BYTE (oam_sprites_23_table_end - oam_sprites_23_table) / 2
	.BYTE $0D

oam_sprites_23_table:
	.BYTE $82, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $80, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $85, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $84, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $83, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $88, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
oam_sprites_23_table_end:

oam_sprites_24:
	.BYTE (oam_sprites_24_table_end - oam_sprites_24_table) / 2
	.BYTE $0E

oam_sprites_24_table:
	.BYTE $82, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $80, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $8B, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $8A, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $88, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $97, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
oam_sprites_24_table_end:

oam_sprites_25:
	.BYTE (oam_sprites_25_table_end - oam_sprites_25_table) / 2
	.BYTE $0E

oam_sprites_25_table:
	.BYTE $82, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $80, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $8B, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $8A, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $88, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
oam_sprites_25_table_end:

oam_sprites_26:
	.BYTE (oam_sprites_26_table_end - oam_sprites_26_table) / 2
	.BYTE $0D

oam_sprites_26_table:
	.BYTE $B2, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $B1, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $B0, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $B4, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $84, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $B3, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $88, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
oam_sprites_26_table_end:

oam_sprites_27:
	.BYTE (oam_sprites_27_table_end - oam_sprites_27_table) / 2
	.BYTE $0F

oam_sprites_27_table:
	.BYTE $B7, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $B6, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $B9, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $B8, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $BD, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $BC, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $BA, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $B5, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $BB, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
oam_sprites_27_table_end:

oam_sprites_28:
	.BYTE (oam_sprites_28_table_end - oam_sprites_28_table) / 2
	.BYTE $10

oam_sprites_28_table:
	.BYTE $8C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8F, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $90, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $91, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $92, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $94, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
oam_sprites_28_table_end:

oam_sprites_29:
	.BYTE (oam_sprites_29_table_end - oam_sprites_29_table) / 2
	.BYTE $10

oam_sprites_29_table:
	.BYTE $8C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8F, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $90, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $91, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $92, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $94, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_29_table_end:

oam_sprites_2a:
	.BYTE (oam_sprites_2a_table_end - oam_sprites_2a_table) / 2
	.BYTE $11

oam_sprites_2a_table:
	.BYTE $A4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A5, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $10, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AE, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AF, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $13, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $21, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $22, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $23, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
oam_sprites_2a_table_end:

oam_sprites_2b:
	.BYTE (oam_sprites_2b_table_end - oam_sprites_2b_table) / 2
	.BYTE $11

oam_sprites_2b_table:
	.BYTE $A4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A5, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $10, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AE, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AF, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $13, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $21, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $22, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $23, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_2b_table_end:

oam_sprites_2c:
	.BYTE (oam_sprites_2c_table_end - oam_sprites_2c_table) / 2
	.BYTE $12

oam_sprites_2c_table:
	.BYTE $A2, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A3, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AC, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AD, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $16, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $24, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $25, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $26, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
oam_sprites_2c_table_end:

oam_sprites_2d:
	.BYTE (oam_sprites_2d_table_end - oam_sprites_2d_table) / 2
	.BYTE $12

oam_sprites_2d_table:
	.BYTE $A2, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A3, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AC, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AD, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $16, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $24, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $25, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $26, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_2d_table_end:

oam_sprites_2e:
	.BYTE (oam_sprites_2e_table_end - oam_sprites_2e_table) / 2
	.BYTE $13

oam_sprites_2e_table:
	.BYTE $A0, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A1, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AA, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AB, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $06, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $27, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $28, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_2e_table_end:

oam_sprites_2f:
	.BYTE (oam_sprites_2f_table_end - oam_sprites_2f_table) / 2
	.BYTE $13

oam_sprites_2f_table:
	.BYTE $A0, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A1, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AA, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AB, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $06, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $27, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $28, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_2f_table_end:

oam_sprites_30:
	.BYTE (oam_sprites_30_table_end - oam_sprites_30_table) / 2
	.BYTE $00

oam_sprites_30_table:
	.BYTE $84, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $88, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $80, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8F, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_30_table_end:

oam_sprites_31:
	.BYTE (oam_sprites_31_table_end - oam_sprites_31_table) / 2
	.BYTE $00

oam_sprites_31_table:
	.BYTE $84, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $88, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8F, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_31_table_end:

oam_sprites_32:
	.BYTE (oam_sprites_32_table_end - oam_sprites_32_table) / 2
	.BYTE $27

oam_sprites_32_table:
	.BYTE $8B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $92, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $94, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $90, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $91, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8E, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9E, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
oam_sprites_32_table_end:

oam_sprites_33:
	.BYTE (oam_sprites_33_table_end - oam_sprites_33_table) / 2
	.BYTE $14

oam_sprites_33_table:
	.BYTE $A5, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A6, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A7, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A8, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A9, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AA, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B7, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B6, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8F, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_33_table_end:

oam_sprites_34:
	.BYTE (oam_sprites_34_table_end - oam_sprites_34_table) / 2
	.BYTE $28

oam_sprites_34_table:
	.BYTE $80, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $84, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B8, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A0, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A1, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A2, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8F, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9E, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A3, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_34_table_end:

oam_sprites_35:
	.BYTE (oam_sprites_35_table_end - oam_sprites_35_table) / 2
	.BYTE $00

oam_sprites_35_table:
	.BYTE $84, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $99, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $80, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8F, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_35_table_end:

oam_sprites_36:
	.BYTE (oam_sprites_36_table_end - oam_sprites_36_table) / 2
	.BYTE $15

oam_sprites_36_table:
	.BYTE $AB, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AC, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AD, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AE, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AF, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B0, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B1, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B2, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B3, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8F, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9E, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $B4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B5, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_36_table_end:

oam_sprites_37:
	.BYTE (oam_sprites_37_table_end - oam_sprites_37_table) / 2
	.BYTE $16

oam_sprites_37_table:
	.BYTE $80, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $84, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $88, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_37_table_end:

oam_sprites_38:
	.BYTE (oam_sprites_38_table_end - oam_sprites_38_table) / 2
	.BYTE $16

oam_sprites_38_table:
	.BYTE $89, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8F, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $90, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $91, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $99, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_38_table_end:

oam_sprites_39:
	.BYTE (oam_sprites_39_table_end - oam_sprites_39_table) / 2
	.BYTE $16

oam_sprites_39_table:
	.BYTE $92, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $94, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9A, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_39_table_end:

oam_sprites_3a:
	.BYTE (oam_sprites_3a_table_end - oam_sprites_3a_table) / 2
	.BYTE $17

oam_sprites_3a_table:
	.BYTE $B7, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B8, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B9, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BA, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BB, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BC, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BD, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BE, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BF, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9A, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_3a_table_end:

oam_sprites_3b:
	.BYTE (oam_sprites_3b_table_end - oam_sprites_3b_table) / 2
	.BYTE $18

oam_sprites_3b_table:
	.BYTE $9B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A0, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A1, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A2, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A3, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_3b_table_end:

oam_sprites_3c:
	.BYTE (oam_sprites_3c_table_end - oam_sprites_3c_table) / 2
	.BYTE $19

oam_sprites_3c_table:
	.BYTE $A4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A5, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A6, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A7, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A8, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A9, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AA, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AB, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AC, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_3c_table_end:

oam_sprites_3d:
	.BYTE (oam_sprites_3d_table_end - oam_sprites_3d_table) / 2
	.BYTE $1A

oam_sprites_3d_table:
	.BYTE $A6, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $AE, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AF, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B0, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B1, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B2, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B3, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B5, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B6, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_3d_table_end:

oam_sprites_3e:
	.BYTE (oam_sprites_3e_table_end - oam_sprites_3e_table) / 2
	.BYTE $16

oam_sprites_3e_table:
	.BYTE $80, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $84, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $88, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8C, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8D, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_3e_table_end:

oam_sprites_3f:
	.BYTE (oam_sprites_3f_table_end - oam_sprites_3f_table) / 2
	.BYTE $16

oam_sprites_3f_table:
	.BYTE $80, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $84, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $88, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8E, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8F, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_3f_table_end:

oam_sprites_40:
	.BYTE (oam_sprites_40_table_end - oam_sprites_40_table) / 2
	.BYTE $1B

oam_sprites_40_table:
	.BYTE $99, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $90, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8B, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8E, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8F, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_40_table_end:

oam_sprites_41:
	.BYTE (oam_sprites_41_table_end - oam_sprites_41_table) / 2
	.BYTE $1C

oam_sprites_41_table:
	.BYTE $91, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $92, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $94, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8C, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8D, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_41_table_end:

oam_sprites_42:
	.BYTE (oam_sprites_42_table_end - oam_sprites_42_table) / 2
	.BYTE $1D

oam_sprites_42_table:
	.BYTE $9A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A0, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A1, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B8, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BA, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_42_table_end:

oam_sprites_43:
	.BYTE (oam_sprites_43_table_end - oam_sprites_43_table) / 2
	.BYTE $1D

oam_sprites_43_table:
	.BYTE $9A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A2, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A3, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A5, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A6, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A7, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A8, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B9, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_43_table_end:

oam_sprites_44:
	.BYTE (oam_sprites_44_table_end - oam_sprites_44_table) / 2
	.BYTE $1E

oam_sprites_44_table:
	.BYTE $A9, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AA, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AB, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AC, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AF, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AD, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AE, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B8, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_44_table_end:

oam_sprites_45:
	.BYTE (oam_sprites_45_table_end - oam_sprites_45_table) / 2
	.BYTE $0D

oam_sprites_45_table:
	.BYTE $90, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $91, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $92, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $94, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8C, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8D, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $99, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_45_table_end:

oam_sprites_46:
	.BYTE (oam_sprites_46_table_end - oam_sprites_46_table) / 2
	.BYTE $0D

oam_sprites_46_table:
	.BYTE $90, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $91, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $92, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $94, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8E, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8F, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $99, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_46_table_end:

oam_sprites_47:
	.BYTE (oam_sprites_47_table_end - oam_sprites_47_table) / 2
	.BYTE $1F

oam_sprites_47_table:
	.BYTE $80, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $84, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $88, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_47_table_end:

oam_sprites_48:
	.BYTE (oam_sprites_48_table_end - oam_sprites_48_table) / 2
	.BYTE $1F

oam_sprites_48_table:
	.BYTE $80, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $84, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AE, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_48_table_end:

oam_sprites_49:
	.BYTE (oam_sprites_49_table_end - oam_sprites_49_table) / 2
	.BYTE $21

oam_sprites_49_table:
	.BYTE $8D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8F, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $90, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $91, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $92, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $94, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_49_table_end:

oam_sprites_4a:
	.BYTE (oam_sprites_4a_table_end - oam_sprites_4a_table) / 2
	.BYTE $1F

oam_sprites_4a_table:
	.BYTE $80, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B8, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $84, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $99, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_4a_table_end:

oam_sprites_4b:
	.BYTE (oam_sprites_4b_table_end - oam_sprites_4b_table) / 2
	.BYTE $20

oam_sprites_4b_table:
	.BYTE $9B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A0, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A1, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A2, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A3, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_4b_table_end:

oam_sprites_4c:
	.BYTE (oam_sprites_4c_table_end - oam_sprites_4c_table) / 2
	.BYTE $0B

oam_sprites_4c_table:
	.BYTE $A5, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A6, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A8, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A9, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AC, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AB, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AD, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A7, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AA, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_4c_table_end:

oam_sprites_4d:
	.BYTE (oam_sprites_4d_table_end - oam_sprites_4d_table) / 2
	.BYTE $23

oam_sprites_4d_table:
	.BYTE $B0, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B1, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B2, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B3, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B5, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B6, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B7, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BD, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $97, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BF, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BF, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_4d_table_end:

oam_sprites_4e:
	.BYTE (oam_sprites_4e_table_end - oam_sprites_4e_table) / 2
	.BYTE $22

oam_sprites_4e_table:
	.BYTE $B9, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BA, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BB, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BC, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BD, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BE, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AF, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AE, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_4e_table_end:

oam_sprites_4f:
	.BYTE (oam_sprites_4f_table_end - oam_sprites_4f_table) / 2
	.BYTE $24

oam_sprites_4f_table:
	.BYTE $95, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $99, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $91, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $92, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $90, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $94, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_4f_table_end:

oam_sprites_50:
	.BYTE (oam_sprites_50_table_end - oam_sprites_50_table) / 2
	.BYTE $24

oam_sprites_50_table:
	.BYTE $83, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $84, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $91, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $92, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $80, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $88, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_50_table_end:

oam_sprites_51:
	.BYTE (oam_sprites_51_table_end - oam_sprites_51_table) / 2
	.BYTE $24

oam_sprites_51_table:
	.BYTE $95, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $99, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $91, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $90, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $94, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8F, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_51_table_end:

oam_sprites_52:
	.BYTE (oam_sprites_52_table_end - oam_sprites_52_table) / 2
	.BYTE $25

oam_sprites_52_table:
	.BYTE $95, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $99, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A7, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $90, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $91, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $94, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A8, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A9, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AA, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AB, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AC, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_52_table_end:

oam_sprites_53:
	.BYTE (oam_sprites_53_table_end - oam_sprites_53_table) / 2
	.BYTE $24

oam_sprites_53_table:
	.BYTE $83, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $84, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A1, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A2, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $91, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $92, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A5, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $80, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A0, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $88, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A3, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A6, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_53_table_end:

oam_sprites_54:
	.BYTE (oam_sprites_54_table_end - oam_sprites_54_table) / 2
	.BYTE $26

oam_sprites_54_table:
	.BYTE $BB, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BC, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B0, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B1, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B6, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B7, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B8, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B9, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BA, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BD, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BE, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B2, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BF, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B3, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B5, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_54_table_end:

oam_sprites_55:
	.BYTE (oam_sprites_55_table_end - oam_sprites_55_table) / 2
	.BYTE $25

oam_sprites_55_table:
	.BYTE $95, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $99, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $90, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $91, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $92, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $94, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A9, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AA, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AB, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AC, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_55_table_end:

oam_sprites_56:
	.BYTE (oam_sprites_56_table_end - oam_sprites_56_table) / 2
	.BYTE $24

oam_sprites_56_table:
	.BYTE $DD, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $DE, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $DF, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $DF, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
oam_sprites_56_table_end:

oam_sprites_57:
	.BYTE (oam_sprites_57_table_end - oam_sprites_57_table) / 2
	.BYTE $28

oam_sprites_57_table:
	.BYTE $80, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $84, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $88, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8F, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9E, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
oam_sprites_57_table_end:

oam_sprites_58:
	.BYTE (oam_sprites_58_table_end - oam_sprites_58_table) / 2
	.BYTE $27

oam_sprites_58_table:
	.BYTE $89, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $84, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $88, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8F, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9E, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
oam_sprites_58_table_end:

oam_sprites_59:
	.BYTE (oam_sprites_59_table_end - oam_sprites_59_table) / 2
	.BYTE $28

oam_sprites_59_table:
	.BYTE $80, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $84, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $99, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8F, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9E, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_59_table_end:

oam_sprites_5a:
	.BYTE (oam_sprites_5a_table_end - oam_sprites_5a_table) / 2
	.BYTE $24

oam_sprites_5a_table:
	.BYTE $CA, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CB, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CC, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
oam_sprites_5a_table_end:

oam_sprites_5b:
	.BYTE (oam_sprites_5b_table_end - oam_sprites_5b_table) / 2
	.BYTE $24

oam_sprites_5b_table:
	.BYTE $C3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_5b_table_end:

oam_sprites_5c:
	.BYTE (oam_sprites_5c_table_end - oam_sprites_5c_table) / 2
	.BYTE $29

oam_sprites_5c_table:
	.BYTE $80, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $84, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $7C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $7D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $7E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $7F, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_5c_table_end:

oam_sprites_5d:
	.BYTE (oam_sprites_5d_table_end - oam_sprites_5d_table) / 2
	.BYTE $29

oam_sprites_5d_table:
	.BYTE $80, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $84, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $38, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $39, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $3A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $3B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8C, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8D, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_5d_table_end:

oam_sprites_5e:
	.BYTE (oam_sprites_5e_table_end - oam_sprites_5e_table) / 2
	.BYTE $24

oam_sprites_5e_table:
	.BYTE $B0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_5e_table_end:

oam_sprites_5f:
	.BYTE (oam_sprites_5f_table_end - oam_sprites_5f_table) / 2
	.BYTE $24

oam_sprites_5f_table:
	.BYTE $B4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_5f_table_end:

oam_sprites_60:
	.BYTE (oam_sprites_60_table_end - oam_sprites_60_table) / 2
	.BYTE $00

oam_sprites_60_table:
	.BYTE $D6, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_60_table_end:

oam_sprites_61:
	.BYTE (oam_sprites_61_table_end - oam_sprites_61_table) / 2
	.BYTE $24

oam_sprites_61_table:
	.BYTE $D7, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $D7, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $D7, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $D7, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
oam_sprites_61_table_end:

oam_sprites_62:
	.BYTE (oam_sprites_62_table_end - oam_sprites_62_table) / 2
	.BYTE $24

oam_sprites_62_table:
	.BYTE $D8, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $D8, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $D8, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $D8, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
oam_sprites_62_table_end:

oam_sprites_63:
	.BYTE (oam_sprites_63_table_end - oam_sprites_63_table) / 2
	.BYTE $24

oam_sprites_63_table:
	.BYTE $D9, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $D9, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $D9, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $D9, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
oam_sprites_63_table_end:

oam_sprites_64:
	.BYTE (oam_sprites_64_table_end - oam_sprites_64_table) / 2
	.BYTE $24

oam_sprites_64_table:
	.BYTE $C2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C2, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $C3, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $C0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C0, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $C1, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
oam_sprites_64_table_end:

oam_sprites_65:
	.BYTE (oam_sprites_65_table_end - oam_sprites_65_table) / 2
	.BYTE $24

oam_sprites_65_table:
	.BYTE $C6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C6, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $C7, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $C4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C4, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $C5, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
oam_sprites_65_table_end:

oam_sprites_66:
	.BYTE (oam_sprites_66_table_end - oam_sprites_66_table) / 2
	.BYTE $24

oam_sprites_66_table:
	.BYTE $CA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CA, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $CB, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $C8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C8, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $C9, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
oam_sprites_66_table_end:

oam_sprites_67:
	.BYTE (oam_sprites_67_table_end - oam_sprites_67_table) / 2
	.BYTE $24

oam_sprites_67_table:
	.BYTE $C0, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C1, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C2, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C3, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_67_table_end:

oam_sprites_68:
	.BYTE (oam_sprites_68_table_end - oam_sprites_68_table) / 2
	.BYTE $24

oam_sprites_68_table:
	.BYTE $C4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C5, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C6, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C7, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_68_table_end:

oam_sprites_69:
	.BYTE (oam_sprites_69_table_end - oam_sprites_69_table) / 2
	.BYTE $24

oam_sprites_69_table:
	.BYTE $CC, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CC, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $CD, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CD, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
oam_sprites_69_table_end:

oam_sprites_6a:
	.BYTE (oam_sprites_6a_table_end - oam_sprites_6a_table) / 2
	.BYTE $24

oam_sprites_6a_table:
	.BYTE $CF, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $CE, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $CF, oam_palette_2 | oam_priority_foreground | x_flip | y_flip
	.BYTE $CE, oam_palette_2 | oam_priority_foreground | x_flip | y_flip
oam_sprites_6a_table_end:

oam_sprites_6b:
	.BYTE (oam_sprites_6b_table_end - oam_sprites_6b_table) / 2
	.BYTE $24

oam_sprites_6b_table:
	.BYTE $CD, oam_palette_2 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $CD, oam_palette_2 | oam_priority_foreground | x_flip | y_flip
	.BYTE $CC, oam_palette_2 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $CC, oam_palette_2 | oam_priority_foreground | x_flip | y_flip
oam_sprites_6b_table_end:

oam_sprites_6c:
	.BYTE (oam_sprites_6c_table_end - oam_sprites_6c_table) / 2
	.BYTE $24

oam_sprites_6c_table:
	.BYTE $CF, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $CE, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $CF, oam_palette_2 | oam_priority_foreground | x_flip | y_flip
	.BYTE $CE, oam_palette_2 | oam_priority_foreground | x_flip | y_flip
oam_sprites_6c_table_end:

oam_sprites_6d:
	.BYTE (oam_sprites_6d_table_end - oam_sprites_6d_table) / 2
	.BYTE $2B

oam_sprites_6d_table:
	.BYTE $C0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C1, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_6d_table_end:

oam_sprites_6e:
	.BYTE (oam_sprites_6e_table_end - oam_sprites_6e_table) / 2
	.BYTE $2A

oam_sprites_6e_table:
	.BYTE $C3, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C2, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_6e_table_end:

oam_sprites_6f:
	.BYTE (oam_sprites_6f_table_end - oam_sprites_6f_table) / 2
	.BYTE $2B

oam_sprites_6f_table:
	.BYTE $C4, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $C4, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_6f_table_end:

oam_sprites_70:
	.BYTE (oam_sprites_70_table_end - oam_sprites_70_table) / 2
	.BYTE $2B

oam_sprites_70_table:
	.BYTE $C2, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $C5, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_70_table_end:

oam_sprites_71:
	.BYTE (oam_sprites_71_table_end - oam_sprites_71_table) / 2
	.BYTE $2B

oam_sprites_71_table:
	.BYTE $C3, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $C6, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
oam_sprites_71_table_end:

oam_sprites_72:
	.BYTE (oam_sprites_72_table_end - oam_sprites_72_table) / 2
	.BYTE $2A

oam_sprites_72_table:
	.BYTE $C8, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C2, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_72_table_end:

oam_sprites_73:
	.BYTE (oam_sprites_73_table_end - oam_sprites_73_table) / 2
	.BYTE $2A

oam_sprites_73_table:
	.BYTE $C9, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C7, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_73_table_end:

oam_sprites_74:
	.BYTE (oam_sprites_74_table_end - oam_sprites_74_table) / 2
	.BYTE $2B

oam_sprites_74_table:
	.BYTE $C1, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C6, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_74_table_end:

oam_sprites_75:
	.BYTE (oam_sprites_75_table_end - oam_sprites_75_table) / 2
	.BYTE $24

oam_sprites_75_table:
	.BYTE $7B, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $7B, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $7B, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $7B, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $7A, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $7A, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $7A, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $7A, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $77, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $77, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $78, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $78, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $78, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $78, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $79, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $79, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
oam_sprites_75_table_end:

oam_sprites_76:
	.BYTE (oam_sprites_76_table_end - oam_sprites_76_table) / 2
	.BYTE $00

oam_sprites_76_table:
	.BYTE $FF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_76_table_end:

oam_sprites_77:
	.BYTE (oam_sprites_77_table_end - oam_sprites_77_table) / 2
	.BYTE $24

oam_sprites_77_table:
	.BYTE $FF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $FF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $FF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $FF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_77_table_end:

oam_sprites_78:
	.BYTE (oam_sprites_78_table_end - oam_sprites_78_table) / 2
	.BYTE $1C

oam_sprites_78_table:
	.BYTE $91, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $92, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $94, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8E, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8F, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_78_table_end:

oam_sprites_79:
	.BYTE (oam_sprites_79_table_end - oam_sprites_79_table) / 2
	.BYTE $24

oam_sprites_79_table:
	.BYTE $EC, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EC, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $ED, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $ED, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
oam_sprites_79_table_end:

oam_sprites_7a:
	.BYTE (oam_sprites_7a_table_end - oam_sprites_7a_table) / 2
	.BYTE $24

oam_sprites_7a_table:
	.BYTE $EE, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EF, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EE, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $EF, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
oam_sprites_7a_table_end:

oam_sprites_7b:
	.BYTE (oam_sprites_7b_table_end - oam_sprites_7b_table) / 2
	.BYTE $24

oam_sprites_7b_table:
	.BYTE $ED, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $ED, oam_palette_0 | oam_priority_foreground | x_flip | y_flip
	.BYTE $EC, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $EC, oam_palette_0 | oam_priority_foreground | x_flip | y_flip
oam_sprites_7b_table_end:

oam_sprites_7c:
	.BYTE (oam_sprites_7c_table_end - oam_sprites_7c_table) / 2
	.BYTE $24

oam_sprites_7c_table:
	.BYTE $EF, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $EE, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $EF, oam_palette_0 | oam_priority_foreground | x_flip | y_flip
	.BYTE $EE, oam_palette_0 | oam_priority_foreground | x_flip | y_flip
oam_sprites_7c_table_end:

oam_sprites_7d:
	.BYTE (oam_sprites_7d_table_end - oam_sprites_7d_table) / 2
	.BYTE $24

oam_sprites_7d_table:
	.BYTE $E0, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E1, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E2, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E3, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_7d_table_end:

oam_sprites_7e:
	.BYTE (oam_sprites_7e_table_end - oam_sprites_7e_table) / 2
	.BYTE $24

oam_sprites_7e_table:
	.BYTE $E4, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E5, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E6, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E7, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_7e_table_end:

oam_sprites_7f:
	.BYTE (oam_sprites_7f_table_end - oam_sprites_7f_table) / 2
	.BYTE $24

oam_sprites_7f_table:
	.BYTE $EA, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EB, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EC, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EC, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
oam_sprites_7f_table_end:

oam_sprites_80:
	.BYTE (oam_sprites_80_table_end - oam_sprites_80_table) / 2
	.BYTE $2A

oam_sprites_80_table:
	.BYTE $E8, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E8, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_80_table_end:

oam_sprites_81:
	.BYTE (oam_sprites_81_table_end - oam_sprites_81_table) / 2
	.BYTE $24

oam_sprites_81_table:
	.BYTE $FF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $FF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $FF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $FF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_81_table_end:

oam_sprites_82:
	.BYTE (oam_sprites_82_table_end - oam_sprites_82_table) / 2
	.BYTE $24

oam_sprites_82_table:
	.BYTE $CE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CA, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CB, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CD, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CD, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_82_table_end:

oam_sprites_83:
	.BYTE (oam_sprites_83_table_end - oam_sprites_83_table) / 2
	.BYTE $24

oam_sprites_83_table:
	.BYTE $CC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CD, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_83_table_end:

;unknown
	.BYTE $CA, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CB, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CA, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CB, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip

oam_sprites_84:
	.BYTE (oam_sprites_84_table_end - oam_sprites_84_table) / 2
	.BYTE $24

oam_sprites_84_table:
	.BYTE $E0, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E1, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E0, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $E1, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
oam_sprites_84_table_end:

oam_sprites_85:
	.BYTE (oam_sprites_85_table_end - oam_sprites_85_table) / 2
	.BYTE $24

oam_sprites_85_table:
	.BYTE $E4, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E5, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E4, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $E5, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
oam_sprites_85_table_end:

oam_sprites_86:
	.BYTE (oam_sprites_86_table_end - oam_sprites_86_table) / 2
	.BYTE $24

oam_sprites_86_table:
	.BYTE $E8, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E9, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E8, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $E9, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
oam_sprites_86_table_end:

oam_sprites_87:
	.BYTE (oam_sprites_87_table_end - oam_sprites_87_table) / 2
	.BYTE $24

oam_sprites_87_table:
	.BYTE $EC, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EC, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $EC, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $EC, oam_palette_0 | oam_priority_foreground | x_flip | y_flip
oam_sprites_87_table_end:

oam_sprites_88:
	.BYTE (oam_sprites_88_table_end - oam_sprites_88_table) / 2
	.BYTE $24

oam_sprites_88_table:
	.BYTE $ED, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $ED, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $ED, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $ED, oam_palette_0 | oam_priority_foreground | x_flip | y_flip
oam_sprites_88_table_end:

oam_sprites_89:
	.BYTE (oam_sprites_89_table_end - oam_sprites_89_table) / 2
	.BYTE $24

oam_sprites_89_table:
	.BYTE $EE, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EE, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $EE, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $EE, oam_palette_0 | oam_priority_foreground | x_flip | y_flip
oam_sprites_89_table_end:

oam_sprites_8a:
	.BYTE (oam_sprites_8a_table_end - oam_sprites_8a_table) / 2
	.BYTE $2B

oam_sprites_8a_table:
	.BYTE $E0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E1, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_8a_table_end:

oam_sprites_8b:
	.BYTE (oam_sprites_8b_table_end - oam_sprites_8b_table) / 2
	.BYTE $2A

oam_sprites_8b_table:
	.BYTE $E3, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E2, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_8b_table_end:

oam_sprites_8c:
	.BYTE (oam_sprites_8c_table_end - oam_sprites_8c_table) / 2
	.BYTE $2B

oam_sprites_8c_table:
	.BYTE $E4, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $E4, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_8c_table_end:

oam_sprites_8d:
	.BYTE (oam_sprites_8d_table_end - oam_sprites_8d_table) / 2
	.BYTE $2B

oam_sprites_8d_table:
	.BYTE $E2, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $E5, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_8d_table_end:

oam_sprites_8e:
	.BYTE (oam_sprites_8e_table_end - oam_sprites_8e_table) / 2
	.BYTE $2B

oam_sprites_8e_table:
	.BYTE $E3, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $E6, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_8e_table_end:

oam_sprites_8f:
	.BYTE (oam_sprites_8f_table_end - oam_sprites_8f_table) / 2
	.BYTE $2A

oam_sprites_8f_table:
	.BYTE $E8, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E2, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_8f_table_end:

oam_sprites_90:
	.BYTE (oam_sprites_90_table_end - oam_sprites_90_table) / 2
	.BYTE $2A

oam_sprites_90_table:
	.BYTE $E9, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E7, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_90_table_end:

oam_sprites_91:
	.BYTE (oam_sprites_91_table_end - oam_sprites_91_table) / 2
	.BYTE $2B

oam_sprites_91_table:
	.BYTE $E1, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E6, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_91_table_end:

oam_sprites_92:
	.BYTE (oam_sprites_92_table_end - oam_sprites_92_table) / 2
	.BYTE $24

oam_sprites_92_table:
	.BYTE $EE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EA, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EB, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $ED, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $ED, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_92_table_end:

oam_sprites_93:
	.BYTE (oam_sprites_93_table_end - oam_sprites_93_table) / 2
	.BYTE $24

oam_sprites_93_table:
	.BYTE $EC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $ED, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EA, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EB, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EA, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EB, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_93_table_end:

oam_sprites_94:
	.BYTE (oam_sprites_94_table_end - oam_sprites_94_table) / 2
	.BYTE $24

oam_sprites_94_table:
	.BYTE $EA, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EB, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $ED, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_94_table_end:

oam_sprites_95:
	.BYTE (oam_sprites_95_table_end - oam_sprites_95_table) / 2
	.BYTE $24

oam_sprites_95_table:
	.BYTE $E3, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E5, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EA, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E2, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E4, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EB, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $ED, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E6, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E1, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E7, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E8, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E9, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_95_table_end:

oam_sprites_96:
	.BYTE (oam_sprites_96_table_end - oam_sprites_96_table) / 2
	.BYTE $00

oam_sprites_96_table:
	.BYTE $CA, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_96_table_end:

;unknown
	.BYTE $CB, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CD, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip

oam_sprites_97:
	.BYTE (oam_sprites_97_table_end - oam_sprites_97_table) / 2
	.BYTE $2C

oam_sprites_97_table:
	.BYTE $07, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $08, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $70, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $44, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $71, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $54, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $55, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $45, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $72, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $00, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $73, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_97_table_end:

oam_sprites_98:
	.BYTE (oam_sprites_98_table_end - oam_sprites_98_table) / 2
	.BYTE $06

oam_sprites_98_table:
	.BYTE $07, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $32, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $6C, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $42, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $51, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $52, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $30, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $50, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $40, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $2F, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $64, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_98_table_end:

oam_sprites_99:
	.BYTE (oam_sprites_99_table_end - oam_sprites_99_table) / 2
	.BYTE $0A

oam_sprites_99_table:
	.BYTE $6D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $6E, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $7D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $7E, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $6F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $5E, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $5D, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $7F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $7C, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_99_table_end:

oam_sprites_9a:
	.BYTE (oam_sprites_9a_table_end - oam_sprites_9a_table) / 2
	.BYTE $00

oam_sprites_9a_table:
	.BYTE $84, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $88, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $80, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_9a_table_end:

oam_sprites_9b:
	.BYTE (oam_sprites_9b_table_end - oam_sprites_9b_table) / 2
	.BYTE $00

oam_sprites_9b_table:
	.BYTE $84, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $88, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_9b_table_end:

oam_sprites_9c:
	.BYTE (oam_sprites_9c_table_end - oam_sprites_9c_table) / 2
	.BYTE $00

oam_sprites_9c_table:
	.BYTE $84, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8B, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8C, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_9c_table_end:

oam_sprites_9d:
	.BYTE (oam_sprites_9d_table_end - oam_sprites_9d_table) / 2
	.BYTE $2D

oam_sprites_9d_table:
	.BYTE $9C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $9C, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $9F, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A0, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A1, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A0, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A1, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A0, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
oam_sprites_9d_table_end:

oam_sprites_9e:
	.BYTE (oam_sprites_9e_table_end - oam_sprites_9e_table) / 2
	.BYTE $2B

oam_sprites_9e_table:
	.BYTE $A4, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A7, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A4, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A6, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A4, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A6, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $A3, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A5, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A3, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $A5, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $A2, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A2, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
oam_sprites_9e_table_end:

oam_sprites_9f:
	.BYTE (oam_sprites_9f_table_end - oam_sprites_9f_table) / 2
	.BYTE $2B

oam_sprites_9f_table:
	.BYTE $AA, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A7, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AA, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A6, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AA, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A6, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $A9, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A5, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AB, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A5, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $A8, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_9f_table_end:

oam_sprites_a0:
	.BYTE (oam_sprites_a0_table_end - oam_sprites_a0_table) / 2
	.BYTE $2B

oam_sprites_a0_table:
	.BYTE $AF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A7, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A6, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A6, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $AE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A5, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AE, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $A5, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $AD, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AD, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
oam_sprites_a0_table_end:

oam_sprites_a1:
	.BYTE (oam_sprites_a1_table_end - oam_sprites_a1_table) / 2
	.BYTE $2B

oam_sprites_a1_table:
	.BYTE $AF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A7, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A6, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A6, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $AE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A5, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AE, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $A5, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $AD, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AD, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $9A, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9A, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
oam_sprites_a1_table_end:

oam_sprites_a2:
	.BYTE (oam_sprites_a2_table_end - oam_sprites_a2_table) / 2
	.BYTE $3C

oam_sprites_a2_table:
	.BYTE $82, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $84, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $80, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_a2_table_end:

oam_sprites_a3:
	.BYTE (oam_sprites_a3_table_end - oam_sprites_a3_table) / 2
	.BYTE $2A

oam_sprites_a3_table:
	.BYTE $86, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_a3_table_end:

oam_sprites_a4:
	.BYTE (oam_sprites_a4_table_end - oam_sprites_a4_table) / 2
	.BYTE $2A

oam_sprites_a4_table:
	.BYTE $88, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_a4_table_end:

oam_sprites_a5:
	.BYTE (oam_sprites_a5_table_end - oam_sprites_a5_table) / 2
	.BYTE $2A

oam_sprites_a5_table:
	.BYTE $8A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_a5_table_end:

oam_sprites_a6:
	.BYTE (oam_sprites_a6_table_end - oam_sprites_a6_table) / 2
	.BYTE $24

oam_sprites_a6_table:
	.BYTE $9C, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $9B, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $9E, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $9D, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
oam_sprites_a6_table_end:

oam_sprites_a7:
	.BYTE (oam_sprites_a7_table_end - oam_sprites_a7_table) / 2
	.BYTE $24

oam_sprites_a7_table:
	.BYTE $A0, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $9F, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $A2, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $A1, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
oam_sprites_a7_table_end:

oam_sprites_a8:
	.BYTE (oam_sprites_a8_table_end - oam_sprites_a8_table) / 2
	.BYTE $00

oam_sprites_a8_table:
	.BYTE $BF, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_a8_table_end:

oam_sprites_a9:
	.BYTE (oam_sprites_a9_table_end - oam_sprites_a9_table) / 2
	.BYTE $00

oam_sprites_a9_table:
	.BYTE $D6, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_a9_table_end:

oam_sprites_aa:
	.BYTE (oam_sprites_aa_table_end - oam_sprites_aa_table) / 2
	.BYTE $24

oam_sprites_aa_table:
	.BYTE $D7, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $D7, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $D7, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $D7, oam_palette_0 | oam_priority_foreground | x_flip | y_flip
oam_sprites_aa_table_end:

oam_sprites_ab:
	.BYTE (oam_sprites_ab_table_end - oam_sprites_ab_table) / 2
	.BYTE $24

oam_sprites_ab_table:
	.BYTE $D8, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $D8, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $D8, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $D8, oam_palette_0 | oam_priority_foreground | x_flip | y_flip
oam_sprites_ab_table_end:

oam_sprites_ac:
	.BYTE (oam_sprites_ac_table_end - oam_sprites_ac_table) / 2
	.BYTE $24

oam_sprites_ac_table:
	.BYTE $D9, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $D9, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $D9, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $D9, oam_palette_0 | oam_priority_foreground | x_flip | y_flip
oam_sprites_ac_table_end:

oam_sprites_ad:
	.BYTE (oam_sprites_ad_table_end - oam_sprites_ad_table) / 2
	.BYTE $00

oam_sprites_ad_table:
	.BYTE $CB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_ad_table_end:

oam_sprites_ae:
	.BYTE (oam_sprites_ae_table_end - oam_sprites_ae_table) / 2
	.BYTE $42

oam_sprites_ae_table:
	.BYTE $B9, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BA, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_ae_table_end:

oam_sprites_af:
	.BYTE (oam_sprites_af_table_end - oam_sprites_af_table) / 2
	.BYTE $43

oam_sprites_af_table:
	.BYTE $BB, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B9, oam_palette_2 | oam_priority_foreground | no_x_flip | y_flip
oam_sprites_af_table_end:

oam_sprites_b0:
	.BYTE (oam_sprites_b0_table_end - oam_sprites_b0_table) / 2
	.BYTE $00

oam_sprites_b0_table:
	.BYTE $98, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_b0_table_end:

oam_sprites_b1:
	.BYTE (oam_sprites_b1_table_end - oam_sprites_b1_table) / 2
	.BYTE $00

oam_sprites_b1_table:
	.BYTE $B0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_b1_table_end:

oam_sprites_b2:
	.BYTE (oam_sprites_b2_table_end - oam_sprites_b2_table) / 2
	.BYTE $00

oam_sprites_b2_table:
	.BYTE $BC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_b2_table_end:

oam_sprites_b3:
	.BYTE (oam_sprites_b3_table_end - oam_sprites_b3_table) / 2
	.BYTE $0D

oam_sprites_b3_table:
	.BYTE $89, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C1, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C2, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C3, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C4, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_b3_table_end:

oam_sprites_b4:
	.BYTE (oam_sprites_b4_table_end - oam_sprites_b4_table) / 2
	.BYTE $0D

oam_sprites_b4_table:
	.BYTE $80, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B1, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B2, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B3, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B4, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B5, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_b4_table_end:

oam_sprites_b5:
	.BYTE (oam_sprites_b5_table_end - oam_sprites_b5_table) / 2
	.BYTE $0D

oam_sprites_b5_table:
	.BYTE $96, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $90, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $91, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $92, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $94, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_b5_table_end:

oam_sprites_b6:
	.BYTE (oam_sprites_b6_table_end - oam_sprites_b6_table) / 2
	.BYTE $2B

oam_sprites_b6_table:
	.BYTE $B7, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B8, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_b6_table_end:

oam_sprites_b7:
	.BYTE (oam_sprites_b7_table_end - oam_sprites_b7_table) / 2
	.BYTE $00

oam_sprites_b7_table:
	.BYTE $C6, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_b7_table_end:

oam_sprites_b8:
	.BYTE (oam_sprites_b8_table_end - oam_sprites_b8_table) / 2
	.BYTE $44

oam_sprites_b8_table:
	.BYTE $B0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B2, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B4, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B6, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B8, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B1, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B3, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B5, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B7, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B9, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BB, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_b8_table_end:

oam_sprites_b9:
	.BYTE (oam_sprites_b9_table_end - oam_sprites_b9_table) / 2
	.BYTE $44

oam_sprites_b9_table:
	.BYTE $D3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BD, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $F0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $F0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $F0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BA, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B3, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B7, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BB, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_b9_table_end:

oam_sprites_ba:
	.BYTE (oam_sprites_ba_table_end - oam_sprites_ba_table) / 2
	.BYTE $44

oam_sprites_ba_table:
	.BYTE $F0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $F0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $F0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_ba_table_end:

oam_sprites_bb:
	.BYTE (oam_sprites_bb_table_end - oam_sprites_bb_table) / 2
	.BYTE $44

oam_sprites_bb_table:
	.BYTE $F0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_bb_table_end:

oam_sprites_bc:
	.BYTE (oam_sprites_bc_table_end - oam_sprites_bc_table) / 2
	.BYTE $2B

oam_sprites_bc_table:
	.BYTE $AE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_bc_table_end:

oam_sprites_bd:
	.BYTE (oam_sprites_bd_table_end - oam_sprites_bd_table) / 2
	.BYTE $3C

oam_sprites_bd_table:
	.BYTE $8A, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_2 | oam_priority_background | x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $8C, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_background | x_flip | no_y_flip
	.BYTE $8C, oam_palette_2 | oam_priority_background | x_flip | no_y_flip
	.BYTE $D9, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $8B, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $D9, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $8B, oam_palette_2 | oam_priority_background | x_flip | no_y_flip
oam_sprites_bd_table_end:

oam_sprites_be:
	.BYTE (oam_sprites_be_table_end - oam_sprites_be_table) / 2
	.BYTE $3C

oam_sprites_be_table:
	.BYTE $96, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $8E, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $8E, oam_palette_2 | oam_priority_background | x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $8D, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $8F, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $8D, oam_palette_2 | oam_priority_background | x_flip | no_y_flip
	.BYTE $8F, oam_palette_2 | oam_priority_background | x_flip | no_y_flip
oam_sprites_be_table_end:

oam_sprites_bf:
	.BYTE (oam_sprites_bf_table_end - oam_sprites_bf_table) / 2
	.BYTE $3C

oam_sprites_bf_table:
	.BYTE $98, oam_palette_2 | oam_priority_background | x_flip | no_y_flip
	.BYTE $98, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_2 | oam_priority_background | x_flip | no_y_flip
	.BYTE $97, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_2 | oam_priority_background | x_flip | no_y_flip
	.BYTE $98, oam_palette_2 | oam_priority_background | x_flip | no_y_flip
	.BYTE $D9, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_2 | oam_priority_background | x_flip | no_y_flip
	.BYTE $97, oam_palette_2 | oam_priority_background | x_flip | no_y_flip
oam_sprites_bf_table_end:

oam_sprites_c0:
	.BYTE (oam_sprites_c0_table_end - oam_sprites_c0_table) / 2
	.BYTE $1F

oam_sprites_c0_table:
	.BYTE $E9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EC, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $ED, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EE, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EF, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $FD, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $FE, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $FF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_c0_table_end:

oam_sprites_c1:
	.BYTE (oam_sprites_c1_table_end - oam_sprites_c1_table) / 2
	.BYTE $1F

oam_sprites_c1_table:
	.BYTE $E0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E1, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E2, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E3, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E4, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E5, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E6, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E7, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E8, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_c1_table_end:

oam_sprites_c2:
	.BYTE (oam_sprites_c2_table_end - oam_sprites_c2_table) / 2
	.BYTE $04

oam_sprites_c2_table:
	.BYTE $BA, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BB, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CA, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CB, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BE, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BF, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BC, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BD, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CF, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $00, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B9, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
oam_sprites_c2_table_end:
