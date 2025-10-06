sfx_ice_slasher:
	sfx_priority 8
	.BYTE sfx_pulse_2 | sfx_triangle | sfx_noise

;1
;sfx_pulse_2
	pitch_envelope $B0
	volume 15
	sfx_note nBb5

;sfx_triangle
	triangle_note_length $7F
	sfx_note nA_7

;sfx_noise
	sfx_frames 4
	volume 15
	sfx_noise_note 12

;2
;sfx_pulse_2
	pitch_envelope $B0
	volume 15
	sfx_note nBb5

;sfx_triangle
	triangle_note_length $7F
	sfx_note nA_7

;sfx_noise
	sfx_frames 4
	volume 15
	sfx_noise_note 12
	sfx_end
