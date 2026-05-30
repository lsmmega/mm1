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

	zjoy1_pressed                       = $14
	zjoy2_pressed                       = $15
	zjoy1_pressed_frame                 = $16
	zjoy2_pressed_frame                 = $17
	zjoy1_pressed_bits                  = $18
	zjoy2_pressed_bits                  = $19
	zscreen_xcoord                      = $1A
	zscreen                             = $1B
	zscreen_update_flag                 = $1C
	zunused_1D                          = $1D
	zscreen_ycoord                      = $1E
	znmi_wait                           = $1F
	zobject_in_process_screen           = $20
	zobject_in_process_xcoord_speed     = $21
	zobject_in_process_xcoord           = $22
	znmi_frame                          = $23
	zobject_in_process_ycoord_speed     = $24
	zobject_in_process_ycoord           = $25
	zscroll_end_direction               = $26
	zscreen_end_of_left                 = $27
	zscreen_end_of_right                = $28
	zscroll_direction_index             = $29
	ztsa_blockset_pointers              = $2A
	zlast_ycoord                        = $2D
	zladder_upper_xcoord                = $2E
	zobject_ram_index                   = $2F
	zladder_flag                        = $30
	zcurrent_stage                      = $31
	zvertical_scrolling_coord           = $33
	zpalette_update_type                = $34
	zpalette_update_address             = $35
	zpalette_update_flag                = $37
	zpalette_update_alternative         = $38
	zpalette_update_original            = $3A
	ztimer                              = $3C
	zclear_points                       = $3D
	zboss_ai_pointer                    = $3E
	zboss_move_stage                    = $3F
	zrandom_integer                     = $40
	zpause                              = $41
	zcurrent_bankswitch                 = $42
	zboss_object_flag                   = $43
	zboss_move_timer                    = $44
	ztrack_queue_pointer                = $45
	zrandom                             = $46
	zgutsman_stomp_timer                = $47
	zboss_coord_speed_fraction          = $48
	zboss_coord_speed                   = $49
	zdiv_temp                           = $4A
	zscore_addition                     = $4A
	zdividend_integer                   = $4B
	zdividend_fraction                  = $4C
	zdivisor_255mode                    = $4D
	zdivisor_constantsmode              = $4E
	zsuper_arm_block_index              = $52
	zhit_objects_attributes             = $53
	zsprites_pointer                    = $54
	zmegaman_invincibility_time         = $55
	zboss_invincibility_time            = $56
	zmenu_screen_xcoord                 = $57
	zmenu_screen                        = $58
	ztiles_address                      = $59
	zobject_pointer                     = $5A
	zending_pointer                     = $5A
	ztiles_update_20size                = $5B
	ztiles_bankswitch                   = $5C
	zending_string_total_lines          = $5C
	zgot_weapon_flag                    = $5D
	zobject_tiles_update_size           = $5E
	zcurrent_weapon                     = $5F
	zweapon_firing                      = $60
	zweapon_timer                       = $61
	zhyper_bomb_ycoord_speed            = $62
	zweapon_ycoord_speed_fraction       = $63
	zweapon_ycoord_speed                = $64
	zweapon_xcoord_speed_fraction       = $65
	zweapon_xcoord_speed                = $66
	zjoy1_force_pressed_flag            = $68
	zjoy1_force_pressed_bits            = $69
	zmegaman_hp                         = $6A
	zweapon_consume                     = $6B
	zmagnet_beam                        = $71
	zscore                              = $72
	zsprites_tiles_palette_index        = $7A
	zenemies_screen_thread              = $7B
	zending_update_object_palette_index = $8B
	zenemies_index                      = $8C
	zobjects_scrolling_flag             = $8D
	zspecial_blockset_index             = $8E
	zspecial_enemies_index              = $8F
	zspecial_enemies_id                 = $90
	zspecial_enemies_timer              = $91
	zspawn_tiles_size                   = $92
	zspawn_tiles_index                  = $93
	zrunning_type                       = $94
	zwater_delay                        = $95
	zice_flag                           = $96
	zice_toward                         = $97
	zice_xcoord_speed_fraction          = $98
	zice_xcoord_speed                   = $99
	zfoot_holder_index                  = $9A
	zentire_toward                      = $9B
	zalternative_xcoord_speed_fraction  = $9C
	zalternative_xcoord_speed           = $9D
	zcurrent_foot_holder_flag           = $9E
	zweapon_consume_fraction            = $9F
	z1up                                = $A6
	zmusic_fade_out_rate                = $A7
	zenemies_coord_speed_fraction       = $A8
	zenemies_coord_speed                = $A9
	zyellow_devil_object_tiles_flag     = $AA
	zcheckpoint_pointer                 = $AB
	zcurrent_boss                       = $AC
	zcapsule_parameter                  = $AD
	zscore_ball                         = $AE
	zteleport_flag                      = $B0
	zundo_running_type                  = $B1
	zforce_screen_xcoord                = $B2
	zforce_screen                       = $B3
	zforce_screen_flag                  = $B4
	zundo_clear_points                  = $B5
	zstage_clear_flag                   = $BB
	zstage_select_flag                  = $BC
	zending_frame                       = $BD
	zending_timer                       = $BE
	zending_screen_flag                 = $BF
	zending_spawn_tiles                 = $C0
	zaudio_header                       = $E0
	zsfx_channel                        = $E1
	ztrack_pointers                     = $E2
	zplayback_flag                      = $E4
	zaudio_E5                           = $E5
	zsfx_apu_register_index             = $E6
	zmusic_playmultispeed               = $E7
	zfade_in_out_rate                   = $E8
	zfade_in_out_level                  = $E9
	zaudio_frame                        = $EA
	zmusic_apu_register_index           = $EB
	zaudio_ram_pointers                 = $EC
	zmusic_channel                      = $EE
	zundo_sfx_channel                   = $EF
	zsfx_pointers                       = $F0
	zsfx_frame                          = $F2
	zsfx_loop                           = $F3
	zaudio_F4                           = $F4
	zaudio_F5                           = $F5
	zppu_mask                           = $FE
	zppu_ctrl                           = $FF

;oam
	oam_hi_addr     = 2
	aoam_y          = oam_hi_addr << 8 + 4
	aoam_tiles      = oam_hi_addr << 8 + 5
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
	aobject_xcoord_fraction         = $4A0
	aobject_xcoord_speed            = $4C0
	aobject_xcoord_speed_fraction   = $4E0
	aaudio_ram                      = $500
	amodulation_pointers            = $57C
	atrack_queue                    = $580
	aenemies_hitting_thread         = $590
	amagnet_beam_length             = $5A0
	amagnet_beam_timer              = $5B0
	amagnet_beam_xcoord             = $5C0
	amagnet_beam_screen             = $5D0
	amagnet_beam_frameset           = $5E0
	amagnet_beam_ycoord             = $5F0
	aobject_ycoord                  = $600
	aobject_ycoord_fraction         = $620
	aobject_timer                   = $640
	aobject_ycoord_speed_fraction   = $660
	aobject_ycoord_speed            = $680
	aobject_frozen_timer            = $6A0
	aobject_hp                      = $6C0
	aboss_hp                        = $6C1
	aobject_id                      = $6E0
	afoot_holder_screen             = $700
	afoot_holder_xcoord             = $708
	afoot_holder_ycoord             = $710
	afoot_holder_flag               = $718
	ano_of_special_blockset         = $720
	aspecial_blockset_type          = $721
	aspecial_blockset_screen        = $722
	aspecial_blockset_x1coord       = $723
	aspecial_blockset_y1coord       = $724
	aspecial_blockset_x2coord       = $725
	aspecial_blockset_y2coord       = $726
