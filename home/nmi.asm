nmi:
	.FEATURE FORCE_RANGE
	PHA
	PHX
	PHY
	LDA znmi_wait
	BEQ @yes
	JMP @no

@yes:
	JSR _nmi_disable
	LDA PPU_STATUS
	LDA #$00
	STA PPU_OAM_ADDR
	LDA #oam_hi_addr
	STA OAM_DMA
	JSR _screen_update
	LDA z:zpalette_update_flag
	BEQ @no_palette_update
	JSR _palette_update

@no_palette_update:
	LDA z:zobject_tile_update_size
	BEQ @no_object_tile_update
	JSR _object_tile_update

@no_object_tile_update:
	LDA z:zscreen
	PHA
	LDA z:zscreen_xcoord
	PHA
	LDA z:zforce_screen_flag
	BEQ @no_force_screen
	LDA z:zforce_screen
	STA z:zscreen
	LDA z:zforce_screen_xcoord
	STA z:zscreen_xcoord

@no_force_screen:
	LDA z:zppu_ctrl
	AND #~nametable_bottom_right
	STA z:zppu_ctrl
	LDA z:zscreen
	AND #%00000001
	ORA z:zppu_ctrl
	STA PPU_CTRL
	PHA
	LDA PPU_STATUS
	LDX #4
	LDA z:zgutsman_stomp_timer
	BEQ @no_shake
	DEC z:zgutsman_stomp_timer
	LSR
	BCC @lsb_not_set
	AND #%00000011
	TAX

@lsb_not_set:
	LDA aobject_pointer
	CMP #$09
	BEQ @no_shake
	CMP #$6F
	BEQ @no_shake
	LDA aobject_flag
	AND #%11110000
	ORA #can_collide_megaman
	STA aobject_flag

@no_shake:
	CLC
	LDA z:zscreen_xcoord
	ADC @shake_xcoord_table, X
	STA PPU_SCROLL
	CLC
	LDA z:zscreen_ycoord
	ADC @shake_ycoord_table, X
	STA PPU_SCROLL
	LDA z:zppu_mask
	ORA #background_leftmost_enable | sprites_leftmost_enable | background_enable | sprite_enable
	STA z:zppu_mask
	STA PPU_MASK
	PLA
	ORA #nmi_enable
	STA z:zppu_ctrl
	STA PPU_CTRL
	PLA
	STA z:zscreen_xcoord
	PLA
	STA z:zscreen
	LDA #$01
	STA z:znmi_wait
	INC z:znmi_frame

@no:
	farjsr _nmi_audio_processing

@loop:
	LDX z:ztrack_queue_pointer
	BEQ @no_queue
	LDA atrack_queue - 1, X
	CMP #music_fade_out
	BCS @sound_effect_lefd
	CMP #track_1up + 1
	BCS @skip

@sound_effect_lefd:
	BNE @not_sound_effect_fd
	LDY z:zmusic_fade_out_rate

@not_sound_effect_fd:
	JSR _nmi_audio_track_queue

@skip:
	DEC z:ztrack_queue_pointer
	BNE @loop

@no_queue:
	LDA z:zcurrent_bankswitch
	TAX
	STA uxrom_prg_bank, X
	LDA z:z0D
	EOR z:zrandom
	ADC z:znmi_frame
	LSR
	STA z:zrandom
	PLY
	PLX
	PLA
	RTI

@shake_xcoord_table:
	.BYTE +0, +8, +0, -8, +0

@shake_ycoord_table:
	.BYTE -24, +0, +8, +0, +0
