;got weapon flags
	got_hyper_bomb     = 1 << 1
	got_thunder_beam   = 1 << 2
	got_super_arm      = 1 << 3
	got_ice_slasher    = 1 << 4
	got_rolling_cutter = 1 << 5
	got_fire_storm     = 1 << 6
	got_magnet_beam    = 1 << 7

;objects default flags zero set
	cant_collide_map            = 0
	cant_collide_megaman        = 0
	cant_collide_megaman_bullet = 0
	objects_not_temporary       = 0
	objects_visible             = 0
	objects_left                = 0

;objects default flags set
	can_collide_map            = 1 << 0
	can_collide_megaman        = 1 << 1
	can_collide_megaman_bullet = 1 << 2
	objects_temporary          = 1 << 4
	objects_invisible          = 1 << 5
	objects_right              = 1 << 6

;stage clear flags
	stage_bombman_clear = 1 << 1
	stage_elecman_clear = 1 << 2
	stage_gutsman_clear = 1 << 3
	stage_iceman_clear  = 1 << 4
	stage_cutman_clear  = 1 << 5
	stage_fireman_clear = 1 << 6
