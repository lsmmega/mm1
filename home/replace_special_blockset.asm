_replace_special_blockset:
	JSR _bankswitch_stage
	TAX
	LDA z:z0C
	STA aspecial_blockset_type, X
	LDA aspecial_blockset_x1coord, X
	ORA #$08
	STA z:z0C
	LDA aspecial_blockset_y1coord, X
	ORA #$0B
	STA z:z0D
	JMP _bankswitch_05
