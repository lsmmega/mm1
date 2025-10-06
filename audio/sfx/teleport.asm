sfx_teleport:
	sfx_priority 9
	.BYTE sfx_pulse_2 | sfx_noise

;1
;sfx_pulse_2
	sfx_frames 4
	duty_cycle 3
	pitch_envelope $25
	sfx_modulator_set 3, 2, 1, volume_decay, 4, 2
	volume 15
	sfx_note nGb5 + 2

;2
;sfx_pulse_2
	sfx_note $0005

;3
;sfx_noise
	sfx_noise_note 0

;sfx_pulse_2
	sfx_frames 5
	duty_cycle 3
	pitch_envelope $F0
	volume 15
	sfx_note nGb5 + 2

;4
;sfx_pulse_2
	sfx_note $0005

;sfx_noise
	sfx_noise_note 0
	sfx_end
