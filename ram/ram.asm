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
	zjoy1_pressed
	zjoy2_pressed
	zjoy1_pressed_frame
	zjoy2_pressed_frame
	zjoy1_pressed_bits
	zjoy2_pressed_bits
	zscreen_xcoord
	zscreen
	zscreen_update_flag
	zunused_1D
	zscreen_ycoord
	znmi_wait
	zobject_in_process_screen
	zobject_in_process_xcoord_speed
	zobject_in_process_xcoord
	znmi_frame
	zobject_in_process_ycoord_speed
	zobject_in_process_ycoord
	zscroll_end_direction
	zscreen_end_of_left
	zscreen_end_of_right
	zscroll_direction_index
	ztsa_blockset_pointers ;2A, 2B, 2C
	zlast_ycoord = $2D
	zladder_upper_xcoord
	zobject_ram_index
	zladder_flag
	zcurrent_stage
	zvertical_scrolling_coord = $33
	zpalette_update_type
	zpalette_update_address ;35, 36
	zpalette_update_flag = $37
	zpalette_update_alternative ;38, 39
	zpalette_update_original = $3A ;3A, 3B
	ztimer = $3C
	zclear_points
	zboss_ai_pointer
	zboss_move_stage
	zrandom_integer
	zpause
	zcurrent_bankswitch
	zboss_object_flag
	zboss_move_timer
	ztrack_queue_pointer
	zrandom
	zgutsman_stomp_timer
	zboss_coord_speed_fraction
	zboss_coord_speed
	zdiv_temp
	zscore_addition = $4A
	zdividend_integer
	zdividend_fraction
	zdivisor_255mode
	zdivisor_constantsmode
	zsuper_arm_block_index = $52
	zhit_objects_attributes
	zsprites_pointer
	zmegaman_invincibility_time
	zboss_invincibility_time
	zmenu_screen_xcoord
	zmenu_screen
	ztiles_address
	zobject_pointer
	zending_pointer = $5A
	ztiles_update_20size
	ztiles_bankswitch
	zending_string_total_lines = $5C
	zgot_weapon_flag
	zobject_tiles_update_size
	zcurrent_weapon
	zweapon_firing
	zweapon_timer
	zhyper_bomb_ycoord_speed
	zweapon_ycoord_speed_fraction
	zweapon_ycoord_speed
	zweapon_xcoord_speed_fraction
	zweapon_xcoord_speed
	zjoy1_force_pressed_flag = $68
	zjoy1_force_pressed_bits
	zmegaman_hp
	zweapon_consume
	zmagnet_beam = $71
	zscore ;72-78
	zsprites_tiles_palette_index = $7A
	zenemies_screen_thread
	zending_update_object_palette_index = $8B
	zenemies_index
	zobjects_scrolling_flag
	zspecial_blockset_index
	zspecial_enemies_index
	zspecial_enemies_id
	zspecial_enemies_timer
	zspawn_tiles_size
	zspawn_tiles_index
	zrunning_type
	zwater_delay
	zice_flag
	zice_toward
	zice_xcoord_speed_fraction
	zice_xcoord_speed
	zfoot_holder_index
	zentire_toward
	zalternative_xcoord_speed_fraction
	zalternative_xcoord_speed
	zcurrent_foot_holder_flag
	zweapon_consume_fraction
	z1up = $A6
	zmusic_fade_out_rate
	zenemies_coord_speed_fraction
	zenemies_coord_speed
	zyellow_devil_object_tiles_flag
	zcheckpoint_pointer
	zcurrent_boss
	zcapsule_parameter
	zscore_ball
	zteleport_flag = $B0
	zundo_running_type
	zforce_screen_xcoord
	zforce_screen
	zforce_screen_flag
	zundo_clear_points
	zstage_clear_flag = $BB
	zstage_select_flag
	zending_frame
	zending_timer
	zending_screen_flag
	zending_spawn_tiles
	zaudio_header = $E0
	zsfx_channel
	ztrack_pointers ;E2, E3
	zplayback_flag = $E4
	zaudio_E5
	zsfx_apu_register_index
	zmusic_playmultispeed
	zfade_in_out_rate
	zfade_in_out_level
	zaudio_frame
	zmusic_apu_register_index
	zaudio_ram_pointers ;EC, ED
	zmusic_channel = $EE
	zundo_sfx_channel
	zsfx_pointers ;F0, F1
	zsfx_frame = $F2
	zsfx_loop
	zaudio_F4
	zaudio_F5
	zppu_mask = $FE
	zppu_ctrl
.ENDENUM

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

.ENUM
	ano_of_special_blockset = $720
	aspecial_blockset_type
	aspecial_blockset_screen
	aspecial_blockset_x1coord 
	aspecial_blockset_y1coord
	aspecial_blockset_x2coord
	aspecial_blockset_y2coord
.ENDENUM
