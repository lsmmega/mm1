sfx_27:
	sfx_priority 10
	.BYTE sfx_pulse_2 | sfx_noise

;1
;sfx_pulse_2
@loop_1:
	duty_cycle 0
	sfx_modulator_set 1, 2, 1, volume_decay, 6, 3
	volume 15
	sfx_note nBb3

;sfx_noise
	sfx_frames 2
	noise_duty_cycle 1
	volume 10
	sfx_noise_note 1
	loop 6, @loop_1
	sfx_end
