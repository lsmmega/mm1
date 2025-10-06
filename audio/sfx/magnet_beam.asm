sfx_magnet_beam:
	sfx_priority 10
	.BYTE sfx_pulse_2 | sfx_noise

;1
;sfx_pulse_2
	duty_cycle 1
	volume 15
	sfx_modulator_set 7, 1, 1, volume_decay, 1, 7
	sfx_note nGb3

;2
;sfx_noise
	noise_duty_cycle 1
	sfx_modulator_set 7, 1, 1, volume_decay, 1, 7
	sfx_noise_note 10

;sfx_pulse_2
	sfx_frames 24
	duty_cycle 1
	volume 15
	sfx_modulator_set 7, 1, 1, volume_decay, 1, 7
	sfx_note nA_3

;3
;sfx_pulse_2
	duty_cycle 2
	sfx_modulator_set 7, 1, 1, volume_decay, 1, 7
	sfx_note $0004
	sfx_end
