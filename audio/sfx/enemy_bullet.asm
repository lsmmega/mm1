sfx_enemy_bullet:
	sfx_priority 10
	.BYTE sfx_pulse_2 | sfx_triangle

;1
;sfx_pulse_2
	duty_cycle 1
	volume 14
	pitch_envelope $0F
	sfx_note nDb5
	sfx_frames 8

;sfx_triangle
	triangle_note_length $08
	sfx_modulator_set 6, 4, 1, volume_decay, 7, 2
	pitch_envelope $0F
	sfx_note nDb5
	sfx_end
