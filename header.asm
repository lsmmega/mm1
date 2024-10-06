;mm1 header
	db "NES", $1a
	prg_size    128
	chr_size    0
	mapper    = 2
	mirroring = vertical
	battery   = no
	trainer   = no
	db (mapper & 15) << 4 | mirroring | trainer << 2 | battery << 1
	db mapper & 16
	pad $10