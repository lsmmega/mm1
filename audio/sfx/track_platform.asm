sfx_track_platform:
	sfx_priority 14
	.BYTE sfx_pulse_2 | sfx_noise

;1
;sfx_pulse_2
@loop_1:
	duty_cycle 1
	pitch_envelope $D0
	volume 15
	sfx_modulator_set 7, 5, 1, volume_decay, 4, 2
	sfx_note nA_2

;sfx_noise
	sfx_frames 7
	noise_duty_cycle 1
	sfx_modulator_set 7, 5, 1, volume_decay, 4, 2
	sfx_noise_note 0
	loop 0, @loop_1
	sfx_end
