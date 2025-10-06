sfx_enemy_immune:
	sfx_priority 13
	.BYTE sfx_pulse_1 | sfx_pulse_2 | sfx_triangle

;1
;sfx_pulse_1
	pitch_envelope $81
	volume 15
	sfx_note nG_7

;sfx_pulse_2
	volume 15
	pitch_envelope $81
	sfx_note nBb6

;sfx_triangle
	sfx_frames 4
	triangle_note_length $3F
	sfx_note nA_7
	sfx_end
