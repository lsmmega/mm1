sfx_thunder_beam:
	sfx_priority 12
	.BYTE sfx_pulse_2 | sfx_triangle | sfx_noise

;1
;sfx_pulse_2
	duty_cycle 1
	volume 15
	sfx_modulator_set 7, 4, 1, volume_decay, 0, 0
	sfx_note nAb5

;sfx_triangle
	sfx_modulator_set 7, 2, 1, volume_decay, 0, 0
	triangle_note_length $7F
	sfx_note nAb5

;sfx_noise
	sfx_frames 24
	noise_duty_cycle 1
	volume 15
	sfx_modulator_set 7, 2, 1, volume_decay, 0, 0
	sfx_noise_note 1
	sfx_end
