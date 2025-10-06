sfx_rolling_cutter:
	sfx_priority 13
	.BYTE sfx_pulse_2 | sfx_noise

;1
;sfx_pulse_2
@loop_1:
	sfx_modulator_set 3, 2, 1, volume_decay, 3, 4
	volume 15
	sfx_note nAb6

;sfx_noise
	sfx_frames 6
	volume 10
	noise_duty_cycle 1
	sfx_modulator_set 3, 2, 1, volume_decay, 3, 4
	sfx_noise_note 11

;2
;sfx_pulse_2
	sfx_modulator_set 3, 2, 1, volume_decay, 3, 4
	volume 15
	sfx_note nAb6

;sfx_noise
	sfx_frames 32
	volume 10
	noise_duty_cycle 1
	sfx_modulator_set 3, 2, 1, volume_decay, 3, 4
	sfx_noise_note 11
	loop 2, @loop_1
	sfx_end
