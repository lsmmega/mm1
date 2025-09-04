;same as sprites/oam_sprites.asm, but enemies

oam_enemies_sprites_00:
	.BYTE (oam_enemies_sprites_00_table_end - oam_enemies_sprites_00_table) / 2
	.BYTE $2E

oam_enemies_sprites_00_table:
	.BYTE $B1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_00_table_end:

oam_enemies_sprites_01:
	.BYTE (oam_enemies_sprites_01_table_end - oam_enemies_sprites_01_table) / 2
	.BYTE $2E

oam_enemies_sprites_01_table:
	.BYTE $B3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_01_table_end:

oam_enemies_sprites_02:
	.BYTE (oam_enemies_sprites_02_table_end - oam_enemies_sprites_02_table) / 2
	.BYTE $2E

oam_enemies_sprites_02_table:
	.BYTE $B6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_02_table_end:

oam_enemies_sprites_03:
	.BYTE (oam_enemies_sprites_03_table_end - oam_enemies_sprites_03_table) / 2
	.BYTE $2E

oam_enemies_sprites_03_table:
	.BYTE $B9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_03_table_end:

oam_enemies_sprites_04:
	.BYTE (oam_enemies_sprites_04_table_end - oam_enemies_sprites_04_table) / 2
	.BYTE $2A

oam_enemies_sprites_04_table:
	.BYTE $B0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B1, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_04_table_end:

oam_enemies_sprites_05:
	.BYTE (oam_enemies_sprites_05_table_end - oam_enemies_sprites_05_table) / 2
	.BYTE $2A

oam_enemies_sprites_05_table:
	.BYTE $BE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_05_table_end:

oam_enemies_sprites_06:
	.BYTE (oam_enemies_sprites_06_table_end - oam_enemies_sprites_06_table) / 2
	.BYTE $24

oam_enemies_sprites_06_table:
	.BYTE $A0, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A1, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A2, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A3, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_06_table_end:

oam_enemies_sprites_07:
	.BYTE (oam_enemies_sprites_07_table_end - oam_enemies_sprites_07_table) / 2
	.BYTE $24

oam_enemies_sprites_07_table:
	.BYTE $A4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A5, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A6, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A7, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_07_table_end:

oam_enemies_sprites_08:
	.BYTE (oam_enemies_sprites_08_table_end - oam_enemies_sprites_08_table) / 2
	.BYTE $3C

oam_enemies_sprites_08_table:
	.BYTE $B9, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BB, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B6, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B8, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BA, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B5, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B7, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B5, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B7, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B8, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BA, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B6, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B9, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BB, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_08_table_end:

oam_enemies_sprites_09:
	.BYTE (oam_enemies_sprites_09_table_end - oam_enemies_sprites_09_table) / 2
	.BYTE $3C

oam_enemies_sprites_09_table:
	.BYTE $B5, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B8, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B7, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BA, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B6, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B9, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BB, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B9, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BB, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B6, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B8, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BA, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B5, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B7, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_09_table_end:

oam_enemies_sprites_0a:
	.BYTE (oam_enemies_sprites_0a_table_end - oam_enemies_sprites_0a_table) / 2
	.BYTE $00

oam_enemies_sprites_0a_table:
	.BYTE $6A, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_0a_table_end:

oam_enemies_sprites_0b:
	.BYTE (oam_enemies_sprites_0b_table_end - oam_enemies_sprites_0b_table) / 2
	.BYTE $01

oam_enemies_sprites_0b_table:
	.BYTE $80, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $84, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $84, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_0b_table_end:

oam_enemies_sprites_0c:
	.BYTE (oam_enemies_sprites_0c_table_end - oam_enemies_sprites_0c_table) / 2
	.BYTE $01

oam_enemies_sprites_0c_table:
	.BYTE $8A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8F, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_0c_table_end:

oam_enemies_sprites_0d:
	.BYTE (oam_enemies_sprites_0d_table_end - oam_enemies_sprites_0d_table) / 2
	.BYTE $01

oam_enemies_sprites_0d_table:
	.BYTE $8B, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $8A, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $8C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8F, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_0d_table_end:

oam_enemies_sprites_0e:
	.BYTE (oam_enemies_sprites_0e_table_end - oam_enemies_sprites_0e_table) / 2
	.BYTE $3B

oam_enemies_sprites_0e_table:
	.BYTE $A3, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A3, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $99, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A1, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A0, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A2, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $94, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $90, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $91, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $92, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A3, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_0e_table_end:

oam_enemies_sprites_0f:
	.BYTE (oam_enemies_sprites_0f_table_end - oam_enemies_sprites_0f_table) / 2
	.BYTE $3B

oam_enemies_sprites_0f_table:
	.BYTE $98, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $99, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $94, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A1, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A0, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A2, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $90, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $91, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $92, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A3, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A3, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A3, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A3, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_0f_table_end:

oam_enemies_sprites_10:
	.BYTE (oam_enemies_sprites_10_table_end - oam_enemies_sprites_10_table) / 2
	.BYTE $01

oam_enemies_sprites_10_table:
	.BYTE $85, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $88, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_10_table_end:

oam_enemies_sprites_11:
	.BYTE (oam_enemies_sprites_11_table_end - oam_enemies_sprites_11_table) / 2
	.BYTE $01

oam_enemies_sprites_11_table:
	.BYTE $85, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_11_table_end:

oam_enemies_sprites_12:
	.BYTE (oam_enemies_sprites_12_table_end - oam_enemies_sprites_12_table) / 2
	.BYTE $01

oam_enemies_sprites_12_table:
	.BYTE $8C, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8D, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8E, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8F, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_12_table_end:

oam_enemies_sprites_13:
	.BYTE (oam_enemies_sprites_13_table_end - oam_enemies_sprites_13_table) / 2
	.BYTE $01

oam_enemies_sprites_13_table:
	.BYTE $8B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $88, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_13_table_end:

oam_enemies_sprites_14:
	.BYTE (oam_enemies_sprites_14_table_end - oam_enemies_sprites_14_table) / 2
	.BYTE $2F

oam_enemies_sprites_14_table:
	.BYTE $CF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_14_table_end:

oam_enemies_sprites_15:
	.BYTE (oam_enemies_sprites_15_table_end - oam_enemies_sprites_15_table) / 2
	.BYTE $24

oam_enemies_sprites_15_table:
	.BYTE $C1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_15_table_end:

oam_enemies_sprites_16:
	.BYTE (oam_enemies_sprites_16_table_end - oam_enemies_sprites_16_table) / 2
	.BYTE $2F

oam_enemies_sprites_16_table:
	.BYTE $BF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_16_table_end:

oam_enemies_sprites_17:
	.BYTE (oam_enemies_sprites_17_table_end - oam_enemies_sprites_17_table) / 2
	.BYTE $2F

oam_enemies_sprites_17_table:
	.BYTE $BD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_17_table_end:

oam_enemies_sprites_18:
	.BYTE (oam_enemies_sprites_18_table_end - oam_enemies_sprites_18_table) / 2
	.BYTE $2F

oam_enemies_sprites_18_table:
	.BYTE $CF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_18_table_end:

oam_enemies_sprites_19:
	.BYTE (oam_enemies_sprites_19_table_end - oam_enemies_sprites_19_table) / 2
	.BYTE $40

oam_enemies_sprites_19_table:
	.BYTE $80, oam_palette_3 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_3 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_3 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_3 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_3 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_3 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_3 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_3 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_3 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_3 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_3 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_3 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_3 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_3 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_3 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_3 | oam_priority_background | no_x_flip | no_y_flip
oam_enemies_sprites_19_table_end:

oam_enemies_sprites_1a:
	.BYTE (oam_enemies_sprites_1a_table_end - oam_enemies_sprites_1a_table) / 2
	.BYTE $3C

oam_enemies_sprites_1a_table:
	.BYTE $93, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $93, oam_palette_2 | oam_priority_background | x_flip | y_flip
	.BYTE $91, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $91, oam_palette_2 | oam_priority_background | x_flip | y_flip
	.BYTE $92, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $90, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $92, oam_palette_2 | oam_priority_background | x_flip | y_flip
	.BYTE $90, oam_palette_2 | oam_priority_background | x_flip | y_flip
oam_enemies_sprites_1a_table_end:

oam_enemies_sprites_1b:
	.BYTE (oam_enemies_sprites_1b_table_end - oam_enemies_sprites_1b_table) / 2
	.BYTE $3C

oam_enemies_sprites_1b_table:
	.BYTE $97, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $97, oam_palette_2 | oam_priority_background | x_flip | y_flip
	.BYTE $95, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $95, oam_palette_2 | oam_priority_background | x_flip | y_flip
	.BYTE $96, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $94, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $96, oam_palette_2 | oam_priority_background | x_flip | y_flip
	.BYTE $94, oam_palette_2 | oam_priority_background | x_flip | y_flip
oam_enemies_sprites_1b_table_end:

oam_enemies_sprites_1c:
	.BYTE (oam_enemies_sprites_1c_table_end - oam_enemies_sprites_1c_table) / 2
	.BYTE $3C

oam_enemies_sprites_1c_table:
	.BYTE $9B, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $9B, oam_palette_2 | oam_priority_background | x_flip | y_flip
	.BYTE $99, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $99, oam_palette_2 | oam_priority_background | x_flip | y_flip
	.BYTE $9A, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $98, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $9A, oam_palette_2 | oam_priority_background | x_flip | y_flip
	.BYTE $98, oam_palette_2 | oam_priority_background | x_flip | y_flip
oam_enemies_sprites_1c_table_end:

oam_enemies_sprites_31:
	.BYTE (oam_enemies_sprites_31_table_end - oam_enemies_sprites_31_table) / 2
	.BYTE $24

oam_enemies_sprites_31_table:
	.BYTE $C2, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $C3, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $C2, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $C3, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $C0, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $C1, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $C0, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $C1, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
oam_enemies_sprites_31_table_end:

oam_enemies_sprites_32:
	.BYTE (oam_enemies_sprites_32_table_end - oam_enemies_sprites_32_table) / 2
	.BYTE $24

oam_enemies_sprites_32_table:
	.BYTE $C6, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $C7, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $C6, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $C7, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $C4, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $C5, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $C4, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $C5, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
oam_enemies_sprites_32_table_end:

oam_enemies_sprites_33:
	.BYTE (oam_enemies_sprites_33_table_end - oam_enemies_sprites_33_table) / 2
	.BYTE $24

oam_enemies_sprites_33_table:
	.BYTE $CA, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $CB, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $CA, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $CB, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $C8, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $C9, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $C8, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $C9, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
oam_enemies_sprites_33_table_end:

oam_enemies_sprites_1d:
	.BYTE (oam_enemies_sprites_1d_table_end - oam_enemies_sprites_1d_table) / 2
	.BYTE $24

oam_enemies_sprites_1d_table:
	.BYTE $95, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
oam_enemies_sprites_1d_table_end:

oam_enemies_sprites_1e:
	.BYTE (oam_enemies_sprites_1e_table_end - oam_enemies_sprites_1e_table) / 2
	.BYTE $24

oam_enemies_sprites_1f:
oam_enemies_sprites_1e_table:
	.BYTE (oam_enemies_sprites_1f_table_end - oam_enemies_sprites_1f_table) / 2
	.BYTE $30

oam_enemies_sprites_1f_table:
	.BYTE $97, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_1e_table_end:

	.BYTE $9C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_1f_table_end:

oam_enemies_sprites_20:
	.BYTE (oam_enemies_sprites_20_table_end - oam_enemies_sprites_20_table) / 2
	.BYTE $24

oam_enemies_sprites_20_table:
	.BYTE $80, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $80, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $80, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $80, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
oam_enemies_sprites_20_table_end:

oam_enemies_sprites_21:
	.BYTE (oam_enemies_sprites_21_table_end - oam_enemies_sprites_21_table) / 2
	.BYTE $24

oam_enemies_sprites_21_table:
	.BYTE $81, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $82, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
oam_enemies_sprites_21_table_end:

oam_enemies_sprites_22:
	.BYTE (oam_enemies_sprites_22_table_end - oam_enemies_sprites_22_table) / 2
	.BYTE $24

oam_enemies_sprites_22_table:
	.BYTE $83, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $84, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $84, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
oam_enemies_sprites_22_table_end:

oam_enemies_sprites_23:
	.BYTE (oam_enemies_sprites_23_table_end - oam_enemies_sprites_23_table) / 2
	.BYTE $24

oam_enemies_sprites_23_table:
	.BYTE $8B, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8C, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8D, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8E, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_23_table_end:

oam_enemies_sprites_24:
	.BYTE (oam_enemies_sprites_24_table_end - oam_enemies_sprites_24_table) / 2
	.BYTE $00

oam_enemies_sprites_24_table:
	.BYTE $8A, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_24_table_end:

oam_enemies_sprites_25:
	.BYTE (oam_enemies_sprites_25_table_end - oam_enemies_sprites_25_table) / 2
	.BYTE $24

oam_enemies_sprites_25_table:
	.BYTE $C0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_25_table_end:

oam_enemies_sprites_26:
	.BYTE (oam_enemies_sprites_26_table_end - oam_enemies_sprites_26_table) / 2
	.BYTE $31

oam_enemies_sprites_26_table:
	.BYTE $C6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_26_table_end:

oam_enemies_sprites_27:
	.BYTE (oam_enemies_sprites_27_table_end - oam_enemies_sprites_27_table) / 2
	.BYTE $32

oam_enemies_sprites_27_table:
	.BYTE $C2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_27_table_end:

oam_enemies_sprites_28:
	.BYTE (oam_enemies_sprites_28_table_end - oam_enemies_sprites_28_table) / 2
	.BYTE $32

oam_enemies_sprites_28_table:
	.BYTE $C8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_28_table_end:

oam_enemies_sprites_29:
	.BYTE (oam_enemies_sprites_29_table_end - oam_enemies_sprites_29_table) / 2
	.BYTE $24

oam_enemies_sprites_29_table:
	.BYTE $BB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_29_table_end:

oam_enemies_sprites_2a:
	.BYTE (oam_enemies_sprites_2a_table_end - oam_enemies_sprites_2a_table) / 2
	.BYTE $2B

oam_enemies_sprites_2a_table:
	.BYTE $B9, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BB, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B7, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B8, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BA, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_2a_table_end:

oam_enemies_sprites_2b:
	.BYTE (oam_enemies_sprites_2b_table_end - oam_enemies_sprites_2b_table) / 2
	.BYTE $2B

oam_enemies_sprites_2b_table:
	.BYTE $B9, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BB, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BD, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BA, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_2b_table_end:

oam_enemies_sprites_2c:
	.BYTE (oam_enemies_sprites_2c_table_end - oam_enemies_sprites_2c_table) / 2
	.BYTE $2A

oam_enemies_sprites_2c_table:
	.BYTE $CA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_2c_table_end:

oam_enemies_sprites_2d:
	.BYTE (oam_enemies_sprites_2d_table_end - oam_enemies_sprites_2d_table) / 2
	.BYTE $2A

oam_enemies_sprites_2d_table:
	.BYTE $CC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_2d_table_end:

oam_enemies_sprites_2e:
	.BYTE (oam_enemies_sprites_2e_table_end - oam_enemies_sprites_2e_table) / 2
	.BYTE $33

oam_enemies_sprites_2e_table:
	.BYTE $90, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $91, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $92, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $94, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $99, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9A, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9B, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_2e_table_end:

oam_enemies_sprites_2f:
	.BYTE (oam_enemies_sprites_2f_table_end - oam_enemies_sprites_2f_table) / 2
	.BYTE $34

oam_enemies_sprites_2f_table:
	.BYTE $9C, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9E, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_2f_table_end:

oam_enemies_sprites_30:
	.BYTE (oam_enemies_sprites_30_table_end - oam_enemies_sprites_30_table) / 2
	.BYTE $35

oam_enemies_sprites_30_table:
	.BYTE $A7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_30_table_end:

oam_enemies_sprites_34:
	.BYTE (oam_enemies_sprites_34_table_end - oam_enemies_sprites_34_table) / 2
	.BYTE $2F

oam_enemies_sprites_34_table:
	.BYTE $B5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_34_table_end:

oam_enemies_sprites_35:
	.BYTE (oam_enemies_sprites_35_table_end - oam_enemies_sprites_35_table) / 2
	.BYTE $36

oam_enemies_sprites_35_table:
	.BYTE $B8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_35_table_end:

oam_enemies_sprites_36:
	.BYTE (oam_enemies_sprites_36_table_end - oam_enemies_sprites_36_table) / 2
	.BYTE $37

oam_enemies_sprites_36_table:
	.BYTE $B5, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $B6, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $B7, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
oam_enemies_sprites_36_table_end:

oam_enemies_sprites_37:
	.BYTE (oam_enemies_sprites_37_table_end - oam_enemies_sprites_37_table) / 2
	.BYTE $2E

oam_enemies_sprites_37_table:
	.BYTE $B8, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $B9, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $BA, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
oam_enemies_sprites_37_table_end:

oam_enemies_sprites_38:
	.BYTE (oam_enemies_sprites_38_table_end - oam_enemies_sprites_38_table) / 2
	.BYTE $33

oam_enemies_sprites_38_table:
	.BYTE $80, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $84, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AD, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AE, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AF, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_38_table_end:

oam_enemies_sprites_39:
	.BYTE (oam_enemies_sprites_39_table_end - oam_enemies_sprites_39_table) / 2
	.BYTE $33

oam_enemies_sprites_39_table:
	.BYTE $90, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $91, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $92, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $94, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_39_table_end:

oam_enemies_sprites_3a:
	.BYTE (oam_enemies_sprites_3a_table_end - oam_enemies_sprites_3a_table) / 2
	.BYTE $33

oam_enemies_sprites_3a_table:
	.BYTE $99, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A0, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A1, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_3a_table_end:

oam_enemies_sprites_3b:
	.BYTE (oam_enemies_sprites_3b_table_end - oam_enemies_sprites_3b_table) / 2
	.BYTE $3A

oam_enemies_sprites_3b_table:
	.BYTE $A2, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A3, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A6, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A7, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A8, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A9, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AA, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AB, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AC, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A5, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_3b_table_end:

oam_enemies_sprites_3c:
	.BYTE (oam_enemies_sprites_3c_table_end - oam_enemies_sprites_3c_table) / 2
	.BYTE $38

oam_enemies_sprites_3c_table:
	.BYTE $80, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $84, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_3c_table_end:

oam_enemies_sprites_3d:
	.BYTE (oam_enemies_sprites_3d_table_end - oam_enemies_sprites_3d_table) / 2
	.BYTE $38

oam_enemies_sprites_3d_table:
	.BYTE $8F, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $90, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $94, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $92, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $99, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $91, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_3d_table_end:

oam_enemies_sprites_3e:
	.BYTE (oam_enemies_sprites_3e_table_end - oam_enemies_sprites_3e_table) / 2
	.BYTE $38

oam_enemies_sprites_3e_table:
	.BYTE $80, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A0, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A1, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_3e_table_end:

oam_enemies_sprites_3f:
	.BYTE (oam_enemies_sprites_3f_table_end - oam_enemies_sprites_3f_table) / 2
	.BYTE $38

oam_enemies_sprites_3f_table:
	.BYTE $A6, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A0, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A1, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A7, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A8, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A5, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_3f_table_end:

oam_enemies_sprites_40:
	.BYTE (oam_enemies_sprites_40_table_end - oam_enemies_sprites_40_table) / 2
	.BYTE $38

oam_enemies_sprites_40_table:
	.BYTE $80, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A0, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A1, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A2, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A3, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_40_table_end:

oam_enemies_sprites_41:
	.BYTE (oam_enemies_sprites_41_table_end - oam_enemies_sprites_41_table) / 2
	.BYTE $38

oam_enemies_sprites_41_table:
	.BYTE $87, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $88, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_41_table_end:

oam_enemies_sprites_42:
	.BYTE (oam_enemies_sprites_42_table_end - oam_enemies_sprites_42_table) / 2
	.BYTE $38

oam_enemies_sprites_42_table:
	.BYTE $97, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_42_table_end:

oam_enemies_sprites_43:
	.BYTE (oam_enemies_sprites_43_table_end - oam_enemies_sprites_43_table) / 2
	.BYTE $38

oam_enemies_sprites_43_table:
	.BYTE $9C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_43_table_end:

oam_enemies_sprites_44:
	.BYTE (oam_enemies_sprites_44_table_end - oam_enemies_sprites_44_table) / 2
	.BYTE $39

oam_enemies_sprites_44_table:
	.BYTE $91, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $92, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $94, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $90, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_44_table_end:

oam_enemies_sprites_45:
	.BYTE (oam_enemies_sprites_45_table_end - oam_enemies_sprites_45_table) / 2
	.BYTE $39

oam_enemies_sprites_45_table:
	.BYTE $97, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $94, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $99, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_45_table_end:

oam_enemies_sprites_46:
	.BYTE (oam_enemies_sprites_46_table_end - oam_enemies_sprites_46_table) / 2
	.BYTE $39

oam_enemies_sprites_46_table:
	.BYTE $9C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $94, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_46_table_end:

oam_enemies_sprites_47:
	.BYTE (oam_enemies_sprites_47_table_end - oam_enemies_sprites_47_table) / 2
	.BYTE $40

oam_enemies_sprites_47_table:
	.BYTE $80, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
oam_enemies_sprites_47_table_end:

oam_enemies_sprites_48:
	.BYTE (oam_enemies_sprites_48_table_end - oam_enemies_sprites_48_table) / 2
	.BYTE $40

oam_enemies_sprites_48_table:
	.BYTE $84, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
oam_enemies_sprites_48_table_end:

oam_enemies_sprites_49:
	.BYTE (oam_enemies_sprites_49_table_end - oam_enemies_sprites_49_table) / 2
	.BYTE $40

oam_enemies_sprites_49_table:
	.BYTE $88, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $8B, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $8B, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $8B, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $8B, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $8B, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $8B, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $8B, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
oam_enemies_sprites_49_table_end:

oam_enemies_sprites_4a:
	.BYTE (oam_enemies_sprites_4a_table_end - oam_enemies_sprites_4a_table) / 2
	.BYTE $00

oam_enemies_sprites_4a_table:
	.BYTE $BC, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_4a_table_end:

oam_enemies_sprites_4b:
	.BYTE (oam_enemies_sprites_4b_table_end - oam_enemies_sprites_4b_table) / 2
	.BYTE $00

oam_enemies_sprites_4b_table:
	.BYTE $BD, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_4b_table_end:

oam_enemies_sprites_4c:
	.BYTE (oam_enemies_sprites_4c_table_end - oam_enemies_sprites_4c_table) / 2
	.BYTE $24

oam_enemies_sprites_4c_table:
	.BYTE $A5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A5, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $A6, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $A3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A3, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $A4, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
oam_enemies_sprites_4c_table_end:

oam_enemies_sprites_4d:
	.BYTE (oam_enemies_sprites_4d_table_end - oam_enemies_sprites_4d_table) / 2
	.BYTE $24

oam_enemies_sprites_4d_table:
	.BYTE $AB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_4d_table_end:

oam_enemies_sprites_4e:
oam_enemies_sprites_4f:
oam_enemies_sprites_50:
	.BYTE (oam_enemies_sprites_4e_4f_50_table_end - oam_enemies_sprites_4e_4f_50_table) / 2
	.BYTE $24

oam_enemies_sprites_4e_4f_50_table:
	.BYTE $8D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8E, oam_palette_2 | oam_priority_foreground | x_flip | y_flip
	.BYTE $8D, oam_palette_2 | oam_priority_foreground | x_flip | y_flip
oam_enemies_sprites_4e_4f_50_table_end:

oam_enemies_sprites_51:
	.BYTE (oam_enemies_sprites_51_table_end - oam_enemies_sprites_51_table) / 2
	.BYTE $00

oam_enemies_sprites_51_table:
	.BYTE $6A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_51_table_end:

oam_enemies_sprites_52:
	.BYTE (oam_enemies_sprites_52_table_end - oam_enemies_sprites_52_table) / 2
	.BYTE $00

oam_enemies_sprites_52_table:
	.BYTE $D6, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_52_table_end:

oam_enemies_sprites_53:
	.BYTE (oam_enemies_sprites_53_table_end - oam_enemies_sprites_53_table) / 2
	.BYTE $24

oam_enemies_sprites_53_table:
	.BYTE $D7, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $D7, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $D7, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $D7, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
oam_enemies_sprites_53_table_end:

oam_enemies_sprites_54:
	.BYTE (oam_enemies_sprites_54_table_end - oam_enemies_sprites_54_table) / 2
	.BYTE $24

oam_enemies_sprites_54_table:
	.BYTE $D8, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $D8, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $D8, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $D8, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
oam_enemies_sprites_54_table_end:

oam_enemies_sprites_55:
	.BYTE (oam_enemies_sprites_55_table_end - oam_enemies_sprites_55_table) / 2
	.BYTE $24

oam_enemies_sprites_55_table:
	.BYTE $D9, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $D9, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $D9, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $D9, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
oam_enemies_sprites_55_table_end:

oam_enemies_sprites_56:
	.BYTE (oam_enemies_sprites_56_table_end - oam_enemies_sprites_56_table) / 2
	.BYTE $37

oam_enemies_sprites_56_table:
	.BYTE $BC, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
	.BYTE $CF, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
oam_enemies_sprites_56_table_end:

oam_enemies_sprites_57:
	.BYTE (oam_enemies_sprites_57_table_end - oam_enemies_sprites_57_table) / 2
	.BYTE $24

oam_enemies_sprites_57_table:
	.BYTE $C4, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
	.BYTE $C3, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
	.BYTE $C2, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
	.BYTE $C1, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
oam_enemies_sprites_57_table_end:

oam_enemies_sprites_58:
	.BYTE (oam_enemies_sprites_58_table_end - oam_enemies_sprites_58_table) / 2
	.BYTE $37

oam_enemies_sprites_58_table:
	.BYTE $C0, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
	.BYTE $BF, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
	.BYTE $CE, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
oam_enemies_sprites_58_table_end:

oam_enemies_sprites_59:
	.BYTE (oam_enemies_sprites_59_table_end - oam_enemies_sprites_59_table) / 2
	.BYTE $37

oam_enemies_sprites_59_table:
	.BYTE $BE, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
	.BYTE $BD, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
	.BYTE $CE, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
oam_enemies_sprites_59_table_end:

oam_enemies_sprites_5a:
	.BYTE (oam_enemies_sprites_5a_table_end - oam_enemies_sprites_5a_table) / 2
	.BYTE $37

oam_enemies_sprites_5a_table:
	.BYTE $BC, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
	.BYTE $CF, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
	.BYTE $CE, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
oam_enemies_sprites_5a_table_end:

oam_enemies_sprites_5b:
oam_enemies_sprites_5c:
	.BYTE (oam_enemies_sprites_5b_5c_table_end - oam_enemies_sprites_5b_5c_table) / 2
	.BYTE $3B

oam_enemies_sprites_5b_5c_table:
	.BYTE $AC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AC, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $AC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_5b_5c_table_end:

oam_enemies_sprites_5d:
	.BYTE (oam_enemies_sprites_5d_table_end - oam_enemies_sprites_5d_table) / 2
	.BYTE $35

oam_enemies_sprites_5d_table:
	.BYTE $82, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $84, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $88, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $80, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_5d_table_end:

oam_enemies_sprites_5e:
	.BYTE (oam_enemies_sprites_5e_table_end - oam_enemies_sprites_5e_table) / 2
	.BYTE $00

oam_enemies_sprites_5e_table:
	.BYTE $A4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_5e_table_end:

oam_enemies_sprites_5f:
	.BYTE (oam_enemies_sprites_5f_table_end - oam_enemies_sprites_5f_table) / 2
	.BYTE $3B

oam_enemies_sprites_5f_table:
	.BYTE $AC, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $AC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AC, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
oam_enemies_sprites_5f_table_end:

oam_enemies_sprites_60:
	.BYTE (oam_enemies_sprites_60_table_end - oam_enemies_sprites_60_table) / 2
	.BYTE $00

oam_enemies_sprites_60_table:
	.BYTE $A8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9E, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_60_table_end:

oam_enemies_sprites_61:
	.BYTE (oam_enemies_sprites_61_table_end - oam_enemies_sprites_61_table) / 2
	.BYTE $00

oam_enemies_sprites_61_table:
	.BYTE $A8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_61_table_end:

oam_enemies_sprites_62:
	.BYTE (oam_enemies_sprites_62_table_end - oam_enemies_sprites_62_table) / 2
	.BYTE $00

oam_enemies_sprites_62_table:
	.BYTE $9C, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9E, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9B, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_62_table_end:

oam_enemies_sprites_63:
	.BYTE (oam_enemies_sprites_63_table_end - oam_enemies_sprites_63_table) / 2
	.BYTE $00

oam_enemies_sprites_63_table:
	.BYTE $9C, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9B, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_63_table_end:

oam_enemies_sprites_64:
	.BYTE (oam_enemies_sprites_64_table_end - oam_enemies_sprites_64_table) / 2
	.BYTE $3D

oam_enemies_sprites_64_table:
	.BYTE $9E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_64_table_end:

oam_enemies_sprites_65:
	.BYTE (oam_enemies_sprites_65_table_end - oam_enemies_sprites_65_table) / 2
	.BYTE $3E

oam_enemies_sprites_65_table:
	.BYTE $91, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $90, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $92, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $94, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_65_table_end:

oam_enemies_sprites_66:
	.BYTE (oam_enemies_sprites_66_table_end - oam_enemies_sprites_66_table) / 2
	.BYTE $3F

oam_enemies_sprites_66_table:
	.BYTE $97, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $99, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AF, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_66_table_end:

oam_enemies_sprites_67:
	.BYTE (oam_enemies_sprites_67_table_end - oam_enemies_sprites_67_table) / 2
	.BYTE $24

oam_enemies_sprites_67_table:
	.BYTE $9C, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9C, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $9D, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
oam_enemies_sprites_67_table_end:

oam_enemies_sprites_68:
	.BYTE (oam_enemies_sprites_68_table_end - oam_enemies_sprites_68_table) / 2
	.BYTE $24

oam_enemies_sprites_68_table:
	.BYTE $9E, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9E, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $9F, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
oam_enemies_sprites_68_table_end:

oam_enemies_sprites_69:
	.BYTE (oam_enemies_sprites_69_table_end - oam_enemies_sprites_69_table) / 2
	.BYTE $24

oam_enemies_sprites_69_table:
	.BYTE $9D, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $9D, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
	.BYTE $9C, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $9C, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
oam_enemies_sprites_69_table_end:

oam_enemies_sprites_6a:
	.BYTE (oam_enemies_sprites_6a_table_end - oam_enemies_sprites_6a_table) / 2
	.BYTE $24

oam_enemies_sprites_6a_table:
	.BYTE $9F, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $9E, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $9F, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
	.BYTE $9E, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
oam_enemies_sprites_6a_table_end:

oam_enemies_sprites_6b:
	.BYTE (oam_enemies_sprites_6b_table_end - oam_enemies_sprites_6b_table) / 2
	.BYTE $24

oam_enemies_sprites_6b_table:
	.BYTE $90, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $91, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $92, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_6b_table_end:

oam_enemies_sprites_6c:
	.BYTE (oam_enemies_sprites_6c_table_end - oam_enemies_sprites_6c_table) / 2
	.BYTE $24

oam_enemies_sprites_6c_table:
	.BYTE $94, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_6c_table_end:

oam_enemies_sprites_6d:
	.BYTE (oam_enemies_sprites_6d_table_end - oam_enemies_sprites_6d_table) / 2
	.BYTE $24

oam_enemies_sprites_6d_table:
	.BYTE $AA, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AB, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AC, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AC, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
oam_enemies_sprites_6d_table_end:

oam_enemies_sprites_6e:
	.BYTE (oam_enemies_sprites_6e_table_end - oam_enemies_sprites_6e_table) / 2
	.BYTE $24

oam_enemies_sprites_6e_table:
	.BYTE $B0, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B1, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B0, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $B1, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
oam_enemies_sprites_6e_table_end:

oam_enemies_sprites_6f:
	.BYTE (oam_enemies_sprites_6f_table_end - oam_enemies_sprites_6f_table) / 2
	.BYTE $24

oam_enemies_sprites_6f_table:
	.BYTE $B4, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B5, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B4, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $B5, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
oam_enemies_sprites_6f_table_end:

oam_enemies_sprites_70:
	.BYTE (oam_enemies_sprites_70_table_end - oam_enemies_sprites_70_table) / 2
	.BYTE $24

oam_enemies_sprites_70_table:
	.BYTE $B8, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B9, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B8, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $B9, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
oam_enemies_sprites_70_table_end:

oam_enemies_sprites_71:
	.BYTE (oam_enemies_sprites_71_table_end - oam_enemies_sprites_71_table) / 2
	.BYTE $24

oam_enemies_sprites_71_table:
	.BYTE $BC, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BC, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $BC, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $BC, oam_palette_0 | oam_priority_foreground | x_flip | y_flip
oam_enemies_sprites_71_table_end:

oam_enemies_sprites_72:
	.BYTE (oam_enemies_sprites_72_table_end - oam_enemies_sprites_72_table) / 2
	.BYTE $24

oam_enemies_sprites_72_table:
	.BYTE $BD, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BD, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $BD, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $BD, oam_palette_0 | oam_priority_foreground | x_flip | y_flip
oam_enemies_sprites_72_table_end:

oam_enemies_sprites_73:
	.BYTE (oam_enemies_sprites_73_table_end - oam_enemies_sprites_73_table) / 2
	.BYTE $24

oam_enemies_sprites_73_table:
	.BYTE $BE, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BE, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $BE, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $BE, oam_palette_0 | oam_priority_foreground | x_flip | y_flip
oam_enemies_sprites_73_table_end:

oam_enemies_sprites_74:
	.BYTE (oam_enemies_sprites_74_table_end - oam_enemies_sprites_74_table) / 2
	.BYTE $24

oam_enemies_sprites_74_table:
	.BYTE $80, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $80, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $80, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $80, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
oam_enemies_sprites_74_table_end:

oam_enemies_sprites_75:
	.BYTE (oam_enemies_sprites_75_table_end - oam_enemies_sprites_75_table) / 2
	.BYTE $24

oam_enemies_sprites_75_table:
	.BYTE $81, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $82, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
oam_enemies_sprites_75_table_end:

oam_enemies_sprites_76:
	.BYTE (oam_enemies_sprites_76_table_end - oam_enemies_sprites_76_table) / 2
	.BYTE $24

oam_enemies_sprites_76_table:
	.BYTE $83, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $83, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $83, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
oam_enemies_sprites_76_table_end:

oam_enemies_sprites_77:
	.BYTE (oam_enemies_sprites_77_table_end - oam_enemies_sprites_77_table) / 2
	.BYTE $24

oam_enemies_sprites_77_table:
	.BYTE $82, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $81, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $82, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
	.BYTE $81, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
oam_enemies_sprites_77_table_end:

oam_enemies_sprites_78:
	.BYTE (oam_enemies_sprites_78_table_end - oam_enemies_sprites_78_table) / 2
	.BYTE $24

oam_enemies_sprites_78_table:
	.BYTE $84, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $84, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $84, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $84, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
oam_enemies_sprites_78_table_end:

oam_enemies_sprites_79:
	.BYTE (oam_enemies_sprites_79_table_end - oam_enemies_sprites_79_table) / 2
	.BYTE $24

oam_enemies_sprites_79_table:
	.BYTE $85, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $85, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $85, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
oam_enemies_sprites_79_table_end:

oam_enemies_sprites_7a:
	.BYTE (oam_enemies_sprites_7a_table_end - oam_enemies_sprites_7a_table) / 2
	.BYTE $41

oam_enemies_sprites_7a_table:
	.BYTE $81, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $84, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $88, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8D, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8E, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8F, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_7a_table_end:

oam_enemies_sprites_7b:
	.BYTE (oam_enemies_sprites_7b_table_end - oam_enemies_sprites_7b_table) / 2
	.BYTE $41

oam_enemies_sprites_7b_table:
	.BYTE $81, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $84, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $88, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8D, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8E, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8F, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $94, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_7b_table_end:

oam_enemies_sprites_7c:
	.BYTE (oam_enemies_sprites_7c_table_end - oam_enemies_sprites_7c_table) / 2
	.BYTE $41

oam_enemies_sprites_7c_table:
	.BYTE $81, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $84, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $88, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8D, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8E, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8F, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A8, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B6, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A8, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $B6, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A5, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A6, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A7, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A9, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A7, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $97, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $A5, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
oam_enemies_sprites_7c_table_end:

oam_enemies_sprites_7d:
	.BYTE (oam_enemies_sprites_7d_table_end - oam_enemies_sprites_7d_table) / 2
	.BYTE $41

oam_enemies_sprites_7d_table:
	.BYTE $81, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $84, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $88, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8D, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8E, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8F, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CD, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B6, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CD, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $B6, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B3, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B4, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B6, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B6, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B5, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
	.BYTE $B6, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CB, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CC, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $CB, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $CA, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C9, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C8, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C8, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $C9, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $CA, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $B5, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CB, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $CC, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $CD, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $CD, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
	.BYTE $CC, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
	.BYTE $CB, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
	.BYTE $B5, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $CA, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $C9, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $C8, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $C8, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
	.BYTE $C9, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
	.BYTE $CA, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
oam_enemies_sprites_7d_table_end:

oam_enemies_sprites_7e:
	.BYTE (oam_enemies_sprites_7e_table_end - oam_enemies_sprites_7e_table) / 2
	.BYTE $00

oam_enemies_sprites_7e_table:
	.BYTE $D3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_7e_table_end:

oam_enemies_sprites_7f:
	.BYTE (oam_enemies_sprites_7f_table_end - oam_enemies_sprites_7f_table) / 2
	.BYTE $2A

oam_enemies_sprites_7f_table:
	.BYTE $D2, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $D2, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
oam_enemies_sprites_7f_table_end:

oam_enemies_sprites_80:
	.BYTE (oam_enemies_sprites_80_table_end - oam_enemies_sprites_80_table) / 2
	.BYTE $24

oam_enemies_sprites_80_table:
	.BYTE $67, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $67, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $67, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $67, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
oam_enemies_sprites_80_table_end:

oam_enemies_sprites_81:
	.BYTE (oam_enemies_sprites_81_table_end - oam_enemies_sprites_81_table) / 2
	.BYTE $24

oam_enemies_sprites_81_table:
	.BYTE $68, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $68, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $68, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $68, oam_palette_0 | oam_priority_foreground | x_flip | y_flip
oam_enemies_sprites_81_table_end:

oam_enemies_sprites_82:
	.BYTE (oam_enemies_sprites_82_table_end - oam_enemies_sprites_82_table) / 2
	.BYTE $24

oam_enemies_sprites_82_table:
	.BYTE $6B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $6B, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $6B, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $6B, oam_palette_0 | oam_priority_foreground | x_flip | y_flip
oam_enemies_sprites_82_table_end:

oam_enemies_sprites_83:
	.BYTE (oam_enemies_sprites_83_table_end - oam_enemies_sprites_83_table) / 2
	.BYTE $24

oam_enemies_sprites_83_table:
	.BYTE $65, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $65, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $65, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $65, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
oam_enemies_sprites_83_table_end:

oam_enemies_sprites_84:
	.BYTE (oam_enemies_sprites_84_table_end - oam_enemies_sprites_84_table) / 2
	.BYTE $24

oam_enemies_sprites_84_table:
	.BYTE $66, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $66, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $66, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $66, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
oam_enemies_sprites_84_table_end:

oam_enemies_sprites_85:
	.BYTE (oam_enemies_sprites_85_table_end - oam_enemies_sprites_85_table) / 2
	.BYTE $24

oam_enemies_sprites_85_table:
	.BYTE $D0, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $D0, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $D1, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $D1, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
oam_enemies_sprites_85_table_end:

oam_enemies_sprites_86:
	.BYTE (oam_enemies_sprites_86_table_end - oam_enemies_sprites_86_table) / 2
	.BYTE $24

oam_enemies_sprites_86_table:
	.BYTE $AE, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AF, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AE, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $AF, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
oam_enemies_sprites_86_table_end:

oam_enemies_sprites_87:
	.BYTE (oam_enemies_sprites_87_table_end - oam_enemies_sprites_87_table) / 2
	.BYTE $24

oam_enemies_sprites_87_table:
	.BYTE $BD, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BD, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $BD, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $BD, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
oam_enemies_sprites_87_table_end:

oam_enemies_sprites_88:
	.BYTE (oam_enemies_sprites_88_table_end - oam_enemies_sprites_88_table) / 2
	.BYTE $24

oam_enemies_sprites_88_table:
	.BYTE $BE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BE, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $BE, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $BE, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
oam_enemies_sprites_88_table_end:

oam_enemies_sprites_89:
	.BYTE (oam_enemies_sprites_89_table_end - oam_enemies_sprites_89_table) / 2
	.BYTE $24

oam_enemies_sprites_89_table:
	.BYTE $BF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BF, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $BF, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $BF, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
oam_enemies_sprites_89_table_end:

oam_enemies_sprites_8a:
	.BYTE (oam_enemies_sprites_8a_table_end - oam_enemies_sprites_8a_table) / 2
	.BYTE $24

oam_enemies_sprites_8a_table:
	.BYTE $D4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $D4, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $D4, oam_palette_2 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $D4, oam_palette_2 | oam_priority_foreground | x_flip | y_flip
oam_enemies_sprites_8a_table_end:

oam_enemies_sprites_8b:
	.BYTE (oam_enemies_sprites_8b_table_end - oam_enemies_sprites_8b_table) / 2
	.BYTE $24

oam_enemies_sprites_8b_table:
	.BYTE $D4, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $D4, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $D4, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $D4, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
oam_enemies_sprites_8b_table_end:

oam_enemies_sprites_8c:
	.BYTE (oam_enemies_sprites_8c_table_end - oam_enemies_sprites_8c_table) / 2
	.BYTE $00

oam_enemies_sprites_8c_table:
	.BYTE $94, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $90, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $91, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $92, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip | 1 << 4
oam_enemies_sprites_8c_table_end:

oam_enemies_sprites_8d:
	.BYTE (oam_enemies_sprites_8d_table_end - oam_enemies_sprites_8d_table) / 2
	.BYTE $3C

oam_enemies_sprites_8d_table:
	.BYTE $9A, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9B, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9E, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $99, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9C, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_8d_table_end:

oam_enemies_sprites_8e:
	.BYTE (oam_enemies_sprites_8e_table_end - oam_enemies_sprites_8e_table) / 2
	.BYTE $3C

oam_enemies_sprites_8e_table:
	.BYTE $A2, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A3, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A5, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A1, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A4, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9C, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_8e_table_end:

oam_enemies_sprites_8f: ;unknown
