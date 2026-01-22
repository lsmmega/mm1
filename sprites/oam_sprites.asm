;oam sprites data
;@start length, oamcoord index, oam set
oam_sprites_00:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
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
@end:

oam_sprites_01:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
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
@end:

oam_sprites_02:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
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
@end:

oam_sprites_03:
	.BYTE (@end - @start) / 2
	.BYTE $01

@start:
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
@end:

oam_sprites_04:
	.BYTE (@end - @start) / 2
	.BYTE $01

@start:
	.BYTE $01, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $05, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $14, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $15, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $24, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $25, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $26, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $00, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $16, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_05:
	.BYTE (@end - @start) / 2
	.BYTE $02

@start:
	.BYTE $07, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $08, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $17, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $18, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $27, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $28, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $06, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $00, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_06:
	.BYTE (@end - @start) / 2
	.BYTE $04

@start:
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
@end:

oam_sprites_07:
	.BYTE (@end - @start) / 2
	.BYTE $03

@start:
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
@end:

oam_sprites_08:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
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
@end:

oam_sprites_09:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
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
@end:

oam_sprites_0a:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
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
@end:

oam_sprites_0b:
	.BYTE (@end - @start) / 2
	.BYTE $01

@start:
	.BYTE $5B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $02, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $5C, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $12, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $4B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $22, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $23, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $00, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $13, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_0c:
	.BYTE (@end - @start) / 2
	.BYTE $01

@start:
	.BYTE $5B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $05, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $5A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $3B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $24, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $25, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $4D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $00, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_0d:
	.BYTE (@end - @start) / 2
	.BYTE $02

@start:
	.BYTE $3C, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $08, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $4C, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $18, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $27, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $28, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $06, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $00, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_0e:
	.BYTE (@end - @start) / 2
	.BYTE $04

@start:
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
@end:

oam_sprites_0f:
	.BYTE (@end - @start) / 2
	.BYTE $05

@start:
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
@end:

oam_sprites_10:
	.BYTE (@end - @start) / 2
	.BYTE $07

@start:
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
@end:

oam_sprites_11:
	.BYTE (@end - @start) / 2
	.BYTE $01

@start:
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
@end:

oam_sprites_12:
	.BYTE (@end - @start) / 2
	.BYTE $08

@start:
	.BYTE $01, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $05, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $3A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $3B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $24, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $25, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $00, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $0F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $4D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_13:
	.BYTE (@end - @start) / 2
	.BYTE $02

@start:
	.BYTE $07, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $08, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $59, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $18, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $27, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $28, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $06, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $00, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $0F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_14:
	.BYTE (@end - @start) / 2
	.BYTE $06

@start:
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
@end:

oam_sprites_15:
	.BYTE (@end - @start) / 2
	.BYTE $09

@start:
	.BYTE $33, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $33, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $33, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $33, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_16:
	.BYTE (@end - @start) / 2
	.BYTE $09

@start:
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
@end:

oam_sprites_17:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
	.BYTE $1F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $34, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $37, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $34, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
@end:

oam_sprites_18:
	.BYTE (@end - @start) / 2
	.BYTE $0B

@start:
	.BYTE $3E, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $3F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $4E, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $4F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $5F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $5E, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $5D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_19:
	.BYTE (@end - @start) / 2
	.BYTE $0A

@start:
	.BYTE $3F, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $3E, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $4F, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $4E, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $5F, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $5E, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $5D, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
@end:

oam_sprites_1a:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
	.BYTE $7B, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $79, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $7A, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $79, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $77, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $7A, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $77, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $78, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $78, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
@end:

oam_sprites_1b:
	.BYTE (@end - @start) / 2
	.BYTE $0A

@start:
	.BYTE $6D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $6E, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $7D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $7E, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $6F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $5E, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $5D, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $0F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $7C, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_1c:
	.BYTE (@end - @start) / 2
	.BYTE $0B

@start:
	.BYTE $60, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $60, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $62, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $61, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $63, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
@end:

oam_sprites_1d:
	.BYTE (@end - @start) / 2
	.BYTE $0A

@start:
	.BYTE $60, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $60, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $61, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $62, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $63, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_1e:
	.BYTE (@end - @start) / 2
	.BYTE $0C

@start:
	.BYTE $74, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $74, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $74, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_1f:
	.BYTE (@end - @start) / 2
	.BYTE $0C

@start:
	.BYTE $75, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $75, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $75, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_20:
	.BYTE (@end - @start) / 2
	.BYTE $0C

@start:
	.BYTE $76, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $76, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $76, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_21:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
	.BYTE $69, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_22:
	.BYTE (@end - @start) / 2
	.BYTE $0D

@start:
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
@end:

oam_sprites_23:
	.BYTE (@end - @start) / 2
	.BYTE $0D

@start:
	.BYTE $82, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $80, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $85, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $84, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $83, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $88, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
@end:

oam_sprites_24:
	.BYTE (@end - @start) / 2
	.BYTE $0E

@start:
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
@end:

oam_sprites_25:
	.BYTE (@end - @start) / 2
	.BYTE $0E

@start:
	.BYTE $82, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $81, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $80, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $8B, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $8A, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $88, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
@end:

oam_sprites_26:
	.BYTE (@end - @start) / 2
	.BYTE $0D

@start:
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
@end:

oam_sprites_27:
	.BYTE (@end - @start) / 2
	.BYTE $0F

@start:
	.BYTE $B7, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $B6, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $B9, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $B8, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $BD, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $BC, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $BA, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $B5, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $BB, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
@end:

oam_sprites_28:
	.BYTE (@end - @start) / 2
	.BYTE $10

@start:
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
@end:

oam_sprites_29:
	.BYTE (@end - @start) / 2
	.BYTE $10

@start:
	.BYTE $8C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8F, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $90, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $91, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $92, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $94, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_2a:
	.BYTE (@end - @start) / 2
	.BYTE $11

@start:
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
@end:

oam_sprites_2b:
	.BYTE (@end - @start) / 2
	.BYTE $11

@start:
	.BYTE $A4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A5, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $10, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AE, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AF, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $13, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $21, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $22, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $23, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_2c:
	.BYTE (@end - @start) / 2
	.BYTE $12

@start:
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
@end:

oam_sprites_2d:
	.BYTE (@end - @start) / 2
	.BYTE $12

@start:
	.BYTE $A2, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A3, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AC, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AD, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $16, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $24, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $25, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $26, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_2e:
	.BYTE (@end - @start) / 2
	.BYTE $13

@start:
	.BYTE $A0, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A1, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AA, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AB, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $06, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $27, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $28, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $96, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_2f:
	.BYTE (@end - @start) / 2
	.BYTE $13

@start:
	.BYTE $A0, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $A1, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AA, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AB, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $06, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $27, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $28, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_30:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
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
@end:

oam_sprites_31:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
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
@end:

oam_sprites_32:
	.BYTE (@end - @start) / 2
	.BYTE $27

@start:
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
@end:

oam_sprites_33:
	.BYTE (@end - @start) / 2
	.BYTE $14

@start:
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
@end:

oam_sprites_34:
	.BYTE (@end - @start) / 2
	.BYTE $28

@start:
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
@end:

oam_sprites_35:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
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
@end:

oam_sprites_36:
	.BYTE (@end - @start) / 2
	.BYTE $15

@start:
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
@end:

oam_sprites_37:
	.BYTE (@end - @start) / 2
	.BYTE $16

@start:
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
@end:

oam_sprites_38:
	.BYTE (@end - @start) / 2
	.BYTE $16

@start:
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
@end:

oam_sprites_39:
	.BYTE (@end - @start) / 2
	.BYTE $16

@start:
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
@end:

oam_sprites_3a:
	.BYTE (@end - @start) / 2
	.BYTE $17

@start:
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
@end:

oam_sprites_3b:
	.BYTE (@end - @start) / 2
	.BYTE $18

@start:
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
@end:

oam_sprites_3c:
	.BYTE (@end - @start) / 2
	.BYTE $19

@start:
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
@end:

oam_sprites_3d:
	.BYTE (@end - @start) / 2
	.BYTE $1A

@start:
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
@end:

oam_sprites_3e:
	.BYTE (@end - @start) / 2
	.BYTE $16

@start:
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
@end:

oam_sprites_3f:
	.BYTE (@end - @start) / 2
	.BYTE $16

@start:
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
@end:

oam_sprites_40:
	.BYTE (@end - @start) / 2
	.BYTE $1B

@start:
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
@end:

oam_sprites_41:
	.BYTE (@end - @start) / 2
	.BYTE $1C

@start:
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
@end:

oam_sprites_42:
	.BYTE (@end - @start) / 2
	.BYTE $1D

@start:
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
@end:

oam_sprites_43:
	.BYTE (@end - @start) / 2
	.BYTE $1D

@start:
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
@end:

oam_sprites_44:
	.BYTE (@end - @start) / 2
	.BYTE $1E

@start:
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
@end:

oam_sprites_45:
	.BYTE (@end - @start) / 2
	.BYTE $0D

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
	.BYTE $8C, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8D, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $99, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_46:
	.BYTE (@end - @start) / 2
	.BYTE $0D

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
	.BYTE $8E, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8F, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $99, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_47:
	.BYTE (@end - @start) / 2
	.BYTE $1F

@start:
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
@end:

oam_sprites_48:
	.BYTE (@end - @start) / 2
	.BYTE $1F

@start:
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
@end:

oam_sprites_49:
	.BYTE (@end - @start) / 2
	.BYTE $21

@start:
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
@end:

oam_sprites_4a:
	.BYTE (@end - @start) / 2
	.BYTE $1F

@start:
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
@end:

oam_sprites_4b:
	.BYTE (@end - @start) / 2
	.BYTE $20

@start:
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
@end:

oam_sprites_4c:
	.BYTE (@end - @start) / 2
	.BYTE $0B

@start:
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
@end:

oam_sprites_4d:
	.BYTE (@end - @start) / 2
	.BYTE $23

@start:
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
@end:

oam_sprites_4e:
	.BYTE (@end - @start) / 2
	.BYTE $22

@start:
	.BYTE $B9, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BA, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BB, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BC, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BD, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BE, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AF, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AE, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_4f:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
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
@end:

oam_sprites_50:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
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
@end:

oam_sprites_51:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
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
@end:

oam_sprites_52:
	.BYTE (@end - @start) / 2
	.BYTE $25

@start:
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
@end:

oam_sprites_53:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
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
@end:

oam_sprites_54:
	.BYTE (@end - @start) / 2
	.BYTE $26

@start:
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
@end:

oam_sprites_55:
	.BYTE (@end - @start) / 2
	.BYTE $25

@start:
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
@end:

oam_sprites_56:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $DD, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $DE, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $DF, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $DF, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
@end:

oam_sprites_57:
	.BYTE (@end - @start) / 2
	.BYTE $28

@start:
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
@end:

oam_sprites_58:
	.BYTE (@end - @start) / 2
	.BYTE $27

@start:
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
@end:

oam_sprites_59:
	.BYTE (@end - @start) / 2
	.BYTE $28

@start:
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
@end:

oam_sprites_5a:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $CA, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CB, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CC, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
@end:

oam_sprites_5b:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
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
@end:

oam_sprites_5c:
	.BYTE (@end - @start) / 2
	.BYTE $29

@start:
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
@end:

oam_sprites_5d:
	.BYTE (@end - @start) / 2
	.BYTE $29

@start:
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
@end:

oam_sprites_5e:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $B0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_5f:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $B4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_60:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
	.BYTE $D6, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_61:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $D7, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $D7, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $D7, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $D7, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
@end:

oam_sprites_62:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $D8, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $D8, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $D8, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $D8, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
@end:

oam_sprites_63:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $D9, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $D9, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $D9, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $D9, oam_palette_1 | oam_priority_foreground | x_flip | y_flip
@end:

oam_sprites_64:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $C2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C2, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $C3, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $C0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C0, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $C1, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
@end:

oam_sprites_65:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $C6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C6, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $C7, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $C4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C4, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $C5, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
@end:

oam_sprites_66:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $CA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CA, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $CB, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $C8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C8, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $C9, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip
@end:

oam_sprites_67:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $C0, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C1, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C2, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C3, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_68:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $C4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C5, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C6, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C7, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_69:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $CC, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CC, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $CD, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CD, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
@end:

oam_sprites_6a:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $CF, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $CE, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $CF, oam_palette_2 | oam_priority_foreground | x_flip | y_flip
	.BYTE $CE, oam_palette_2 | oam_priority_foreground | x_flip | y_flip
@end:

oam_sprites_6b:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $CD, oam_palette_2 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $CD, oam_palette_2 | oam_priority_foreground | x_flip | y_flip
	.BYTE $CC, oam_palette_2 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $CC, oam_palette_2 | oam_priority_foreground | x_flip | y_flip
@end:

oam_sprites_6c:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $CF, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $CE, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $CF, oam_palette_2 | oam_priority_foreground | x_flip | y_flip
	.BYTE $CE, oam_palette_2 | oam_priority_foreground | x_flip | y_flip
@end:

oam_sprites_6d:
	.BYTE (@end - @start) / 2
	.BYTE $2B

@start:
	.BYTE $C0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C1, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_6e:
	.BYTE (@end - @start) / 2
	.BYTE $2A

@start:
	.BYTE $C3, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C2, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_6f:
	.BYTE (@end - @start) / 2
	.BYTE $2B

@start:
	.BYTE $C4, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $C4, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_70:
	.BYTE (@end - @start) / 2
	.BYTE $2B

@start:
	.BYTE $C2, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $C5, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_71:
	.BYTE (@end - @start) / 2
	.BYTE $2B

@start:
	.BYTE $C3, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $C6, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
@end:

oam_sprites_72:
	.BYTE (@end - @start) / 2
	.BYTE $2A

@start:
	.BYTE $C8, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C2, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_73:
	.BYTE (@end - @start) / 2
	.BYTE $2A

@start:
	.BYTE $C9, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C7, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_74:
	.BYTE (@end - @start) / 2
	.BYTE $2B

@start:
	.BYTE $C1, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C6, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_75:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
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
@end:

oam_sprites_76:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
	.BYTE $FF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_77:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $FF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $FF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $FF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $FF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_78:
	.BYTE (@end - @start) / 2
	.BYTE $1C

@start:
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
@end:

oam_sprites_79:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $EC, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EC, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $ED, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $ED, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
@end:

oam_sprites_7a:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $EE, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EF, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EE, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $EF, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
@end:

oam_sprites_7b:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $ED, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $ED, oam_palette_0 | oam_priority_foreground | x_flip | y_flip
	.BYTE $EC, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $EC, oam_palette_0 | oam_priority_foreground | x_flip | y_flip
@end:

oam_sprites_7c:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $EF, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $EE, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $EF, oam_palette_0 | oam_priority_foreground | x_flip | y_flip
	.BYTE $EE, oam_palette_0 | oam_priority_foreground | x_flip | y_flip
@end:

oam_sprites_7d:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $E0, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E1, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E2, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E3, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_7e:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $E4, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E5, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E6, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E7, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_7f:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $EA, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EB, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EC, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EC, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
@end:

oam_sprites_80:
	.BYTE (@end - @start) / 2
	.BYTE $2A

@start:
	.BYTE $E8, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E8, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_81:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $FF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $FF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $FF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $FF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_82:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $CE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CA, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CB, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CD, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CD, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_83:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $CC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CD, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

;unknown
	.BYTE $CA, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CB, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CA, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CB, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip

oam_sprites_84:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $E0, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E1, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E0, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $E1, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
@end:

oam_sprites_85:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $E4, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E5, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E4, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $E5, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
@end:

oam_sprites_86:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $E8, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E9, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E8, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $E9, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
@end:

oam_sprites_87:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $EC, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EC, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $EC, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $EC, oam_palette_0 | oam_priority_foreground | x_flip | y_flip
@end:

oam_sprites_88:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $ED, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $ED, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $ED, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $ED, oam_palette_0 | oam_priority_foreground | x_flip | y_flip
@end:

oam_sprites_89:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $EE, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EE, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $EE, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $EE, oam_palette_0 | oam_priority_foreground | x_flip | y_flip
@end:

oam_sprites_8a:
	.BYTE (@end - @start) / 2
	.BYTE $2B

@start:
	.BYTE $E0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E1, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_8b:
	.BYTE (@end - @start) / 2
	.BYTE $2A

@start:
	.BYTE $E3, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E2, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_8c:
	.BYTE (@end - @start) / 2
	.BYTE $2B

@start:
	.BYTE $E4, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $E4, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_8d:
	.BYTE (@end - @start) / 2
	.BYTE $2B

@start:
	.BYTE $E2, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $E5, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_8e:
	.BYTE (@end - @start) / 2
	.BYTE $2B

@start:
	.BYTE $E3, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $E6, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_8f:
	.BYTE (@end - @start) / 2
	.BYTE $2A

@start:
	.BYTE $E8, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E2, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_90:
	.BYTE (@end - @start) / 2
	.BYTE $2A

@start:
	.BYTE $E9, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E7, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_91:
	.BYTE (@end - @start) / 2
	.BYTE $2B

@start:
	.BYTE $E1, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E6, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_92:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $EE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EA, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EB, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $ED, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $ED, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_93:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $EC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $ED, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EA, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EB, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EA, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EB, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_94:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $EA, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EB, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $ED, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $EF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_95:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
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
@end:

oam_sprites_96:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
	.BYTE $CA, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

;unknown
	.BYTE $CB, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CD, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip

oam_sprites_97:
	.BYTE (@end - @start) / 2
	.BYTE $2C

@start:
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
@end:

oam_sprites_98:
	.BYTE (@end - @start) / 2
	.BYTE $06

@start:
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
@end:

oam_sprites_99:
	.BYTE (@end - @start) / 2
	.BYTE $0A

@start:
	.BYTE $6D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $6E, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $7D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $7E, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $6F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $5E, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $5D, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $7F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $7C, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_9a:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
	.BYTE $84, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $88, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $80, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_9b:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
	.BYTE $84, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $88, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_9c:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
	.BYTE $84, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $9B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8B, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8C, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_9d:
	.BYTE (@end - @start) / 2
	.BYTE $2D

@start:
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
@end:

oam_sprites_9e:
	.BYTE (@end - @start) / 2
	.BYTE $2B

@start:
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
@end:

oam_sprites_9f:
	.BYTE (@end - @start) / 2
	.BYTE $2B

@start:
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
@end:

oam_sprites_a0:
	.BYTE (@end - @start) / 2
	.BYTE $2B

@start:
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
@end:

oam_sprites_a1:
	.BYTE (@end - @start) / 2
	.BYTE $2B

@start:
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
@end:

oam_sprites_a2:
	.BYTE (@end - @start) / 2
	.BYTE $3C

@start:
	.BYTE $82, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $84, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $83, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $85, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $80, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $86, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_a3:
	.BYTE (@end - @start) / 2
	.BYTE $2A

@start:
	.BYTE $86, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $87, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_a4:
	.BYTE (@end - @start) / 2
	.BYTE $2A

@start:
	.BYTE $88, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $89, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_a5:
	.BYTE (@end - @start) / 2
	.BYTE $2A

@start:
	.BYTE $8A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_a6:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $9C, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $9B, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $9E, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $9D, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
@end:

oam_sprites_a7:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $A0, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $9F, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $A2, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $A1, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip
@end:

oam_sprites_a8:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
	.BYTE $BF, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_a9:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
	.BYTE $D6, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_aa:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $D7, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $D7, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $D7, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $D7, oam_palette_0 | oam_priority_foreground | x_flip | y_flip
@end:

oam_sprites_ab:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $D8, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $D8, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $D8, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $D8, oam_palette_0 | oam_priority_foreground | x_flip | y_flip
@end:

oam_sprites_ac:
	.BYTE (@end - @start) / 2
	.BYTE $24

@start:
	.BYTE $D9, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $D9, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip
	.BYTE $D9, oam_palette_0 | oam_priority_foreground | no_x_flip | y_flip
	.BYTE $D9, oam_palette_0 | oam_priority_foreground | x_flip | y_flip
@end:

oam_sprites_ad:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
	.BYTE $CB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $CC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_ae:
	.BYTE (@end - @start) / 2
	.BYTE $42

@start:
	.BYTE $B9, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $BA, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_af:
	.BYTE (@end - @start) / 2
	.BYTE $43

@start:
	.BYTE $BB, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B9, oam_palette_2 | oam_priority_foreground | no_x_flip | y_flip
@end:

oam_sprites_b0:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
	.BYTE $98, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_b1:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
	.BYTE $B0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_b2:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
	.BYTE $BC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_b3:
	.BYTE (@end - @start) / 2
	.BYTE $0D

@start:
	.BYTE $89, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $8A, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C1, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C2, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C3, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $C4, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_b4:
	.BYTE (@end - @start) / 2
	.BYTE $0D

@start:
	.BYTE $80, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $81, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $82, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B1, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B2, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B3, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B4, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B5, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_b5:
	.BYTE (@end - @start) / 2
	.BYTE $0D

@start:
	.BYTE $96, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $90, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $91, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $92, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $93, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $94, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $97, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $95, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_b6:
	.BYTE (@end - @start) / 2
	.BYTE $2B

@start:
	.BYTE $B7, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $B8, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_b7:
	.BYTE (@end - @start) / 2
	.BYTE $00

@start:
	.BYTE $C6, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_b8:
	.BYTE (@end - @start) / 2
	.BYTE $44

@start:
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
@end:

oam_sprites_b9:
	.BYTE (@end - @start) / 2
	.BYTE $44

@start:
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
@end:

oam_sprites_ba:
	.BYTE (@end - @start) / 2
	.BYTE $44

@start:
	.BYTE $F0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $F0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $F0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_bb:
	.BYTE (@end - @start) / 2
	.BYTE $44

@start:
	.BYTE $F0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_bc:
	.BYTE (@end - @start) / 2
	.BYTE $2B

@start:
	.BYTE $AE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $AF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_bd:
	.BYTE (@end - @start) / 2
	.BYTE $3C

@start:
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
@end:

oam_sprites_be:
	.BYTE (@end - @start) / 2
	.BYTE $3C

@start:
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
@end:

oam_sprites_bf:
	.BYTE (@end - @start) / 2
	.BYTE $3C

@start:
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
@end:

oam_sprites_c0:
	.BYTE (@end - @start) / 2
	.BYTE $1F

@start:
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
@end:

oam_sprites_c1:
	.BYTE (@end - @start) / 2
	.BYTE $1F

@start:
	.BYTE $E0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E1, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E2, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E3, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E4, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E5, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E6, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E7, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	.BYTE $E8, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
@end:

oam_sprites_c2:
	.BYTE (@end - @start) / 2
	.BYTE $04

@start:
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
@end:
