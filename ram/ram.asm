.ENUM
	z00
	z01
	z02
	z03
	z04
	z05
	z06
	z07
	z08
	z09
	z0A
	z0B
	z0C
	z0D
	z0E
	z0F
	z10
	z11
	z12
	z13
.ENDENUM

	zjoy1_pressed                   = $14
	zjoy2_pressed                   = $15
	zjoy1_pressed_frame             = $16
	zjoy2_pressed_frame             = $17
	zjoy1_pressed_bits              = $18
	zjoy2_pressed_bits              = $19
	zscreen_xcoord                  = $1A
	zscreen                         = $1B
	zscreen_update_flag             = $1C
	zscreen_ycoord                  = $1E
	znmi_wait                       = $1F
	znmi_frame                      = $23
	zscroll_end_direction           = $26
	zcurrent_stage                  = $31
	zpalette_update_type            = $34
	zpalette_update_address         = $35
	zpalette_update_flag            = $37
	zpalette_update_alternative     = $38
	zpalette_update_original        = $3A
	zboss_ai_pointer                = $3E
	zcurrent_bankswitch             = $42
	ztrack_queue_pointer            = $45
	zrandom                         = $46
	zgutsman_stomp_timer            = $47
	zsprites_pointer                = $54
	zmegaman_invincibility_time     = $55
	zboss_invincibility_time        = $56
	zgot_weapon_flag                = $5D
	zobject_tiles_update_size       = $5E
	zcurrent_weapon                 = $5F
	zjoy1_force_pressed_flag        = $68
	zjoy1_force_pressed_bits        = $69
	zmegaman_hp                     = $6A
	zrolling_cutter                 = $6B
	zmagnet_beam                    = $71
	zscore                          = $72
	zwater_delay                    = $95
	z1up                            = $A6
	zmusic_fade_out_rate            = $A7
	zyellow_devil_object_tiles_flag = $AA
	zcurrent_boss                   = $AC
	zcapsule_parameter              = $AD
	zscore_ball                     = $AE
	zteleport_flag                  = $B0
	zforce_screen_xcoord            = $B2
	zforce_screen                   = $B3
	zforce_screen_flag              = $B4
	zstage_clear_flag               = $BB
	zppu_mask                       = $FE
	zppu_ctrl                       = $FF

;oam
	oam_hi_addr     = 2
	aoam_y          = oam_hi_addr << 8 + 4
	aoam_tile       = oam_hi_addr << 8 + 5
	aoam_attributes = oam_hi_addr << 8 + 6
	aoam_x          = oam_hi_addr << 8 + 7

	ascreen_ppu_address             = $300
	ascreen_ppu_data                = $302
	ascreen_ppu_attribute_address   = $312
	ascreen_ppu_attribute_data      = $314
	aobject_ppu_address             = $380
	aobject_ppu_data                = $382
	abackground_palette_original    = $3D0
	aobject_palette                 = $3E0
	abackground_palette_alternative = $3F0
	aobject_pointer                 = $400
	aobject_flag                    = $420
	aobject_frameset_timer          = $440
	aobject_screen                  = $460
	aobject_xcoord                  = $480
	atrack_queue                    = $580
	aobject_ycoord                  = $600
	aobject_timer                   = $640
	aobject_frozen_timer            = $6A0
	aboss_hp                        = $6C1
	aobject_id                      = $6E0
