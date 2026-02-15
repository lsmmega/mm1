_update_object_palette:
	LDA #>aobject_palette
	STA z:zpalette_update_alternative + 1
	STA z:zpalette_update_original + 1
	LDA #<aobject_palette
	STA z:zpalette_update_alternative
	STA z:zpalette_update_original
	LDA #$18

_update_palette_common:
	STA z:zpalette_update_type
	LDA #$01
	STA z:zpalette_update_flag
	RTS

_update_background_palette:
	LDA #>abackground_palette_original
	STA z:zpalette_update_alternative + 1
	STA z:zpalette_update_original + 1
	LDA #<abackground_palette_original
	STA z:zpalette_update_alternative
	STA z:zpalette_update_original
	LDA #$10
	BNE _update_palette_common
	JSR _update_background_palette
	LDA #>abackground_palette_alternative
	STA z:zpalette_update_alternative + 1
	LDA #<abackground_palette_alternative
	STA z:zpalette_update_alternative
	RTS
