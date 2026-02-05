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

	zjoy1_pressed               = $14
	zjoy2_pressed               = $15
	zjoy1_pressed_frame         = $16
	zjoy2_pressed_frame         = $17
	zjoy1_pressed_bits          = $18
	zjoy2_pressed_bits          = $19
	zscreen_xcoord              = $1A
	znmi_wait                   = $1F
	znmi_frame                  = $23
	zcurrent_stage              = $31
	zboss_ai_pointer            = $3E
	zcurrent_bankswitch         = $42
	ztrack_queue_pointer        = $45
	zsprites_pointer            = $54
	zmegaman_invincibility_time = $55
	zboss_invincibility_time    = $56
	zcurrent_weapon             = $5F
	zjoy1_force_pressed_flag    = $68
	zjoy1_force_pressed_bits    = $69
	zmegaman_hp                 = $6A
	zrolling_cutter             = $6B
	zscore                      = $72
	zwater_delay                = $95
	zcurrent_boss               = $AC
	zstage_clear_flag           = $BB
	zppu_mask                   = $FE
	zppu_ctrl                   = $FF

;oam
	oam_hi_addr     = 2
	aoam_y          = oam_hi_addr << 8 + 4
	aoam_tile       = oam_hi_addr << 8 + 5
	aoam_attributes = oam_hi_addr << 8 + 6
	aoam_x          = oam_hi_addr << 8 + 7

	aobject_pointer        = $400
	aobject_flag           = $420
	aobject_frameset_timer = $440
	aobject_screen         = $460
	aobject_xcoord         = $480
	atrack_queue           = $580
	aobject_ycoord         = $600
	aobject_timer          = $640
	aobject_frozen_timer   = $6A0
	aboss_hp               = $6C1
	aobject_id             = $6E0
