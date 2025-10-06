sfx_fireman_move:
	sfx_priority 9
	.BYTE sfx_pulse_2 | sfx_triangle | sfx_noise

;1
;sfx_pulse_2
	pitch_envelope $28
	volume 15
	sfx_note nG_2

;sfx_triangle
	triangle_note_length $7F
	pitch_envelope $28
	sfx_note nG_3

;sfx_noise
	sfx_frames 37
	volume 15
	sfx_noise_note 1
	sfx_end
