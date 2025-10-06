sfx_earthquake:
	sfx_priority 13
	.BYTE sfx_pulse_1 | sfx_pulse_2 | sfx_triangle | sfx_noise

;1
;sfx_pulse_1
@loop_1:
	volume 15
	duty_cycle 3
	sfx_modulator_set 2, 3, 1, volume_decay, 3, 0
	pitch_envelope $7F
	sfx_note nBb1

;sfx_pulse_2
	volume 8
	duty_cycle 3
	sfx_modulator_set 2, 3, 1, volume_decay, 3, 0
	pitch_envelope $02
	sfx_note nDb1

;sfx_triangle
	triangle_note_length $81
	sfx_modulator_set 2, 3, 1, volume_decay, 3, 0
	pitch_envelope $5F
	sfx_note nDb1

;sfx_noise
	sfx_frames 5
	volume 15
	sfx_noise_note 0
	loop 8, @loop_1
	sfx_end
