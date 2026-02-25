_special_blockset_index:
	JSR _bankswitch_stage
	LDY #$00

@loop:
	LDA aspecial_blockset_screen, Y
	CMP z:zscreen
	BCS @done
	TYA
	CLC
	ADC #$06
	TAY
	BNE @loop

@done:
	STY z:zspecial_blockset_index
	JMP _bankswitch_05

_special_blockset_collision:
	LDA z:zjoy1_force_pressed_flag
	BNE @skip
	LDA ano_of_special_blockset

@loop:
	LDA aspecial_blockset_type, Y
	BEQ @next
	LDA aspecial_blockset_screen, Y
	CMP z:z0C
	BEQ @screen_yes
	BCC @next
	JMP @skip

@screen_yes:
	LDA aspecial_blockset_x1coord, Y
	CMP z:z0D
	BEQ @x1coord_yes
	BCS @next

@x1coord_yes:
	LDA aspecial_blockset_x2coord, Y
	BEQ @x2coord_yes
	CMP z:z0D
	BEQ @next
	BCC @next

@x2coord_yes:
	LDA aspecial_blockset_y1coord, Y
	CMP z:z0E
	BEQ @y1coord_yes
	BCS @next

@y1coord_yes:
	LDA aspecial_blockset_y2coord, Y
	BEQ @y2coord_yes
	CMP z:z0E
	BEQ @next
	BCC @next

@y2coord_yes:
	LDA z:zobject_ram_index
	BNE @not_megaman
	LDA aspecial_blockset_type, Y
	ORA #$80
	RTS

@not_megaman:
	LDA aspecial_blockset_type, Y
	CMP #$04
	BEQ @skip
	LDA #$01
	RTS

@next:
	TYA
	CLC
	ADC #$06
	TAY
	BNE @loop

@skip:
	LDA #$00
	RTS
