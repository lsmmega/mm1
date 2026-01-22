;same as sprites/oam_sprites.asm, but enemies
oam_enemies_sprites_00:
	.BYTE (@end - @start) / 2
	.BYTE $2E

@start:
	.BYTE $B1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_01:
	.BYTE (@end - @start) / 2
	.BYTE $2E

@start:
	.BYTE $B3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_02:
	.BYTE (@end - @start) / 2
	.BYTE $2E

@start:
	.BYTE $B6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_03:
	.BYTE (@end - @start) / 2
	.BYTE $2E

@start:
	.BYTE $B9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_04:
	.BYTE (@end - @start) / 2
	.BYTE $2A

@start:
	.BYTE $B0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B1, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_05:
	.BYTE (@end - @start) / 2
	.BYTE $2A

@start:
	.BYTE $BE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_06:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $A0, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A1, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A2, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A3, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_07:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $A4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A5, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A6, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A7, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_08:
	.BYTE (@end - @start) / 2
	.BYTE $3C

@start:
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
@end:

oam_enemies_sprites_09:
	.BYTE (@end - @start) / 2
	.BYTE $3C

@start:
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
@end:

oam_enemies_sprites_0a:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
	.BYTE $6A, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_0b:
	.BYTE (@end - @start) / 2
	.BYTE $01

@start:
	.BYTE $80, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $84, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $84, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_0c:
	.BYTE (@end - @start) / 2
	.BYTE $01

@start:
	.BYTE $8A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8F, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_0d:
	.BYTE (@end - @start) / 2
	.BYTE $01

@start:
	.BYTE $8B, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $8A, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $8C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8F, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_0e:
	.BYTE (@end - @start) / 2
	.BYTE $3B

@start:
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
@end:

oam_enemies_sprites_0f:
	.BYTE (@end - @start) / 2
	.BYTE $3B

@start:
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
@end:

oam_enemies_sprites_10:
	.BYTE (@end - @start) / 2
	.BYTE $01

@start:
	.BYTE $85, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $88, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_11:
	.BYTE (@end - @start) / 2
	.BYTE $01

@start:
	.BYTE $85, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_12:
	.BYTE (@end - @start) / 2
	.BYTE $01

@start:
	.BYTE $8C, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8D, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8E, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8F, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_13:
	.BYTE (@end - @start) / 2
	.BYTE $01

@start:
	.BYTE $8B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $88, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_14:
	.BYTE (@end - @start) / 2
	.BYTE $2F

@start:
	.BYTE $CF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_15:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $C1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_16:
	.BYTE (@end - @start) / 2
	.BYTE $2F

@start:
	.BYTE $BF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_17:
	.BYTE (@end - @start) / 2
	.BYTE $2F

@start:
	.BYTE $BD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_18:
	.BYTE (@end - @start) / 2
	.BYTE $2F

@start:
	.BYTE $CF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_19:
	.BYTE (@end - @start) / 2
	.BYTE $40

@start:
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
@end:

oam_enemies_sprites_1a:
	.BYTE (@end - @start) / 2
	.BYTE $3C

@start:
	.BYTE $93, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $93, oam_palette_2 | oam_priority_background | x_flip | y_flip
	.BYTE $91, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $91, oam_palette_2 | oam_priority_background | x_flip | y_flip
	.BYTE $92, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $90, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $92, oam_palette_2 | oam_priority_background | x_flip | y_flip
	.BYTE $90, oam_palette_2 | oam_priority_background | x_flip | y_flip
@end:

oam_enemies_sprites_1b:
	.BYTE (@end - @start) / 2
	.BYTE $3C

@start:
	.BYTE $97, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $97, oam_palette_2 | oam_priority_background | x_flip | y_flip
	.BYTE $95, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $95, oam_palette_2 | oam_priority_background | x_flip | y_flip
	.BYTE $96, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $94, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $96, oam_palette_2 | oam_priority_background | x_flip | y_flip
	.BYTE $94, oam_palette_2 | oam_priority_background | x_flip | y_flip
@end:

oam_enemies_sprites_1c:
	.BYTE (@end - @start) / 2
	.BYTE $3C

@start:
	.BYTE $9B, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $9B, oam_palette_2 | oam_priority_background | x_flip | y_flip
	.BYTE $99, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $99, oam_palette_2 | oam_priority_background | x_flip | y_flip
	.BYTE $9A, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $98, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $9A, oam_palette_2 | oam_priority_background | x_flip | y_flip
	.BYTE $98, oam_palette_2 | oam_priority_background | x_flip | y_flip
@end:

oam_enemies_sprites_31:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $C2, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $C3, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $C2, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $C3, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $C0, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $C1, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $C0, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $C1, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
@end:

oam_enemies_sprites_32:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $C6, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $C7, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $C6, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $C7, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $C4, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $C5, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $C4, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $C5, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
@end:

oam_enemies_sprites_33:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $CA, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $CB, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $CA, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $CB, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $C8, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $C9, oam_palette_2 | oam_priority_background | no_x_flip | no_y_flip
	.BYTE $C8, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
	.BYTE $C9, oam_palette_2 | oam_priority_background | no_x_flip | y_flip
@end:

oam_enemies_sprites_1d:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $95, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
@end:

oam_enemies_sprites_1e:
	.BYTE (oam_enemies_sprites_1e_end - oam_enemies_sprites_1e_start) / 2
	.BYTE $24

oam_enemies_sprites_1f:
oam_enemies_sprites_1e_start:
	.BYTE (oam_enemies_sprites_1f_end - oam_enemies_sprites_1f_start) / 2
	.BYTE $30

oam_enemies_sprites_1f_start:
	.BYTE $97, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_1e_end:

	.BYTE $9C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
oam_enemies_sprites_1f_end:

oam_enemies_sprites_20:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $80, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $80, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $80, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $80, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
@end:

oam_enemies_sprites_21:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $81, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $82, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
@end:

oam_enemies_sprites_22:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $83, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $84, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $84, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
@end:

oam_enemies_sprites_23:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $8B, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8C, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8D, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8E, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_24:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
	.BYTE $8A, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_25:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $C0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_26:
	.BYTE (@end - @start) / 2
	.BYTE $31

@start:
	.BYTE $C6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_27:
	.BYTE (@end - @start) / 2
	.BYTE $32

@start:
	.BYTE $C2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_28:
	.BYTE (@end - @start) / 2
	.BYTE $32

@start:
	.BYTE $C8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_29:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $BB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_2a:
	.BYTE (@end - @start) / 2
	.BYTE $2B

@start:
	.BYTE $B9, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BB, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B7, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B8, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BA, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_2b:
	.BYTE (@end - @start) / 2
	.BYTE $2B

@start:
	.BYTE $B9, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BB, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BD, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BA, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_2c:
	.BYTE (@end - @start) / 2
	.BYTE $2A

@start:
	.BYTE $CA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_2d:
	.BYTE (@end - @start) / 2
	.BYTE $2A

@start:
	.BYTE $CC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_2e:
	.BYTE (@end - @start) / 2
	.BYTE $33

@start:
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
@end:

oam_enemies_sprites_2f:
	.BYTE (@end - @start) / 2
	.BYTE $34

@start:
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
@end:

oam_enemies_sprites_30:
	.BYTE (@end - @start) / 2
	.BYTE $35

@start:
	.BYTE $A7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_34:
	.BYTE (@end - @start) / 2
	.BYTE $2F

@start:
	.BYTE $B5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_35:
	.BYTE (@end - @start) / 2
	.BYTE $36

@start:
	.BYTE $B8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_36:
	.BYTE (@end - @start) / 2
	.BYTE $37

@start:
	.BYTE $B5, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $B6, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $B7, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
@end:

oam_enemies_sprites_37:
	.BYTE (@end - @start) / 2
	.BYTE $2E

@start:
	.BYTE $B8, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $B9, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $BA, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
@end:

oam_enemies_sprites_38:
	.BYTE (@end - @start) / 2
	.BYTE $33

@start:
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
@end:

oam_enemies_sprites_39:
	.BYTE (@end - @start) / 2
	.BYTE $33

@start:
	.BYTE $90, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $91, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $92, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $94, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_3a:
	.BYTE (@end - @start) / 2
	.BYTE $33

@start:
	.BYTE $99, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A0, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A1, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_3b:
	.BYTE (@end - @start) / 2
	.BYTE $3A

@start:
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
@end:

oam_enemies_sprites_3c:
	.BYTE (@end - @start) / 2
	.BYTE $38

@start:
	.BYTE $80, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $84, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_3d:
	.BYTE (@end - @start) / 2
	.BYTE $38

@start:
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
@end:

oam_enemies_sprites_3e:
	.BYTE (@end - @start) / 2
	.BYTE $38

@start:
	.BYTE $80, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A0, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A1, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_3f:
	.BYTE (@end - @start) / 2
	.BYTE $38

@start:
	.BYTE $A6, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A0, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A1, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A7, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A8, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A5, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_40:
	.BYTE (@end - @start) / 2
	.BYTE $38

@start:
	.BYTE $80, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A0, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A1, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A2, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A3, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_41:
	.BYTE (@end - @start) / 2
	.BYTE $38

@start:
	.BYTE $87, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $88, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_42:
	.BYTE (@end - @start) / 2
	.BYTE $38

@start:
	.BYTE $97, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_43:
	.BYTE (@end - @start) / 2
	.BYTE $38

@start:
	.BYTE $9C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_44:
	.BYTE (@end - @start) / 2
	.BYTE $39

@start:
	.BYTE $91, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $92, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $94, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $90, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_45:
	.BYTE (@end - @start) / 2
	.BYTE $39

@start:
	.BYTE $97, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $94, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $99, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_46:
	.BYTE (@end - @start) / 2
	.BYTE $39

@start:
	.BYTE $9C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $94, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_47:
	.BYTE (@end - @start) / 2
	.BYTE $40

@start:
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
@end:

oam_enemies_sprites_48:
	.BYTE (@end - @start) / 2
	.BYTE $40

@start:
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
@end:

oam_enemies_sprites_49:
	.BYTE (@end - @start) / 2
	.BYTE $40

@start:
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
@end:

oam_enemies_sprites_4a:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
	.BYTE $BC, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_4b:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
	.BYTE $BD, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_4c:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $A5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A5, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $A6, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $A3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A3, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $A4, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
@end:

oam_enemies_sprites_4d:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $AB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_4e:
oam_enemies_sprites_4f:
oam_enemies_sprites_50:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $8D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8E, oam_palette_2 | oam_priority_foreground | x_flip | y_flip
	.BYTE $8D, oam_palette_2 | oam_priority_foreground | x_flip | y_flip
@end:

oam_enemies_sprites_51:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
	.BYTE $6A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_52:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
	.BYTE $D6, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_53:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $D7, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $D7, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $D7, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $D7, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
@end:

oam_enemies_sprites_54:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $D8, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $D8, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $D8, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $D8, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
@end:

oam_enemies_sprites_55:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $D9, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $D9, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $D9, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $D9, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
@end:

oam_enemies_sprites_56:
	.BYTE (@end - @start) / 2
	.BYTE $37

@start:
	.BYTE $BC, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
	.BYTE $CF, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
@end:

oam_enemies_sprites_57:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $C4, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
	.BYTE $C3, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
	.BYTE $C2, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
	.BYTE $C1, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
@end:

oam_enemies_sprites_58:
	.BYTE (@end - @start) / 2
	.BYTE $37

@start:
	.BYTE $C0, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
	.BYTE $BF, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
	.BYTE $CE, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
@end:

oam_enemies_sprites_59:
	.BYTE (@end - @start) / 2
	.BYTE $37

@start:
	.BYTE $BE, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
	.BYTE $BD, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
	.BYTE $CE, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
@end:

oam_enemies_sprites_5a:
	.BYTE (@end - @start) / 2
	.BYTE $37

@start:
	.BYTE $BC, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
	.BYTE $CF, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
	.BYTE $CE, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
@end:

oam_enemies_sprites_5b:
oam_enemies_sprites_5c:
	.BYTE (@end - @start) / 2
	.BYTE $3B

@start:
	.BYTE $AC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AC, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $AC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_5d:
	.BYTE (@end - @start) / 2
	.BYTE $35

@start:
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
@end:

oam_enemies_sprites_5e:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
	.BYTE $A4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_5f:
	.BYTE (@end - @start) / 2
	.BYTE $3B

@start:
	.BYTE $AC, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $AC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AC, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
@end:

oam_enemies_sprites_60:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
	.BYTE $A8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9E, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_61:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
	.BYTE $A8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_62:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
	.BYTE $9C, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9E, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9B, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_63:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
	.BYTE $9C, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9B, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_64:
	.BYTE (@end - @start) / 2
	.BYTE $3D

@start:
	.BYTE $9E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_65:
	.BYTE (@end - @start) / 2
	.BYTE $3E

@start:
	.BYTE $91, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $90, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $92, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $94, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_66:
	.BYTE (@end - @start) / 2
	.BYTE $3F

@start:
	.BYTE $97, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $99, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AF, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_67:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $9C, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9C, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $9D, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
@end:

oam_enemies_sprites_68:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $9E, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9E, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $9F, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
@end:

oam_enemies_sprites_69:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $9D, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $9D, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
	.BYTE $9C, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $9C, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
@end:

oam_enemies_sprites_6a:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $9F, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $9E, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $9F, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
	.BYTE $9E, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
@end:

oam_enemies_sprites_6b:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $90, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $91, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $92, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_6c:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $94, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_6d:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $AA, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AB, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AC, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AC, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
@end:

oam_enemies_sprites_6e:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $B0, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B1, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B0, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $B1, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
@end:

oam_enemies_sprites_6f:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $B4, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B5, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B4, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $B5, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
@end:

oam_enemies_sprites_70:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $B8, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B9, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B8, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $B9, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
@end:

oam_enemies_sprites_71:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $BC, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BC, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $BC, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $BC, oam_palette_0 | oam_priority_foreground | x_flip | y_flip
@end:

oam_enemies_sprites_72:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $BD, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BD, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $BD, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $BD, oam_palette_0 | oam_priority_foreground | x_flip | y_flip
@end:

oam_enemies_sprites_73:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $BE, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BE, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $BE, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $BE, oam_palette_0 | oam_priority_foreground | x_flip | y_flip
@end:

oam_enemies_sprites_74:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $80, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $80, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $80, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $80, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
@end:

oam_enemies_sprites_75:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $81, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $82, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
@end:

oam_enemies_sprites_76:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $83, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $83, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $83, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
@end:

oam_enemies_sprites_77:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $82, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $81, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $82, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
	.BYTE $81, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
@end:

oam_enemies_sprites_78:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $84, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $84, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $84, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $84, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
@end:

oam_enemies_sprites_79:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $85, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $85, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $85, oam_palette_3 | oam_priority_foreground | x_flip | y_flip
@end:

oam_enemies_sprites_7a:
	.BYTE (@end - @start) / 2
	.BYTE $41

@start:
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
@end:

oam_enemies_sprites_7b:
	.BYTE (@end - @start) / 2
	.BYTE $41

@start:
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
@end:

oam_enemies_sprites_7c:
	.BYTE (@end - @start) / 2
	.BYTE $41

@start:
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
@end:

oam_enemies_sprites_7d:
	.BYTE (@end - @start) / 2
	.BYTE $41

@start:
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
@end:

oam_enemies_sprites_7e:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
	.BYTE $D3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_7f:
	.BYTE (@end - @start) / 2
	.BYTE $2A

@start:
	.BYTE $D2, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $D2, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
@end:

oam_enemies_sprites_80:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $67, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $67, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $67, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $67, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
@end:

oam_enemies_sprites_81:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $68, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $68, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $68, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $68, oam_palette_0 | oam_priority_foreground | x_flip | y_flip
@end:

oam_enemies_sprites_82:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $6B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $6B, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $6B, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $6B, oam_palette_0 | oam_priority_foreground | x_flip | y_flip
@end:

oam_enemies_sprites_83:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $65, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $65, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $65, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $65, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
@end:

oam_enemies_sprites_84:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $66, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $66, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $66, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $66, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
@end:

oam_enemies_sprites_85:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $D0, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $D0, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $D1, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $D1, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
@end:

oam_enemies_sprites_86:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $AE, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AF, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AE, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $AF, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
@end:

oam_enemies_sprites_87:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $BD, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BD, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $BD, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $BD, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
@end:

oam_enemies_sprites_88:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $BE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BE, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $BE, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $BE, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
@end:

oam_enemies_sprites_89:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $BF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BF, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $BF, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $BF, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
@end:

oam_enemies_sprites_8a:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $D4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $D4, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $D4, oam_palette_2 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $D4, oam_palette_2 | oam_priority_foreground | x_flip | y_flip
@end:

oam_enemies_sprites_8b:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $D4, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $D4, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $D4, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $D4, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
@end:

oam_enemies_sprites_8c:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
	.BYTE $94, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $98, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $90, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $91, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $92, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip | 1 << 4
@end:

oam_enemies_sprites_8d:
	.BYTE (@end - @start) / 2
	.BYTE $3C

@start:
	.BYTE $9A, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9B, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9E, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $99, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9D, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9C, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_8e:
	.BYTE (@end - @start) / 2
	.BYTE $3C

@start:
	.BYTE $A2, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A3, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A5, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9F, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A1, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A4, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9C, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_enemies_sprites_8f: ;unknown
