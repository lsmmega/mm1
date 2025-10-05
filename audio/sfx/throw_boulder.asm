sfx_throw_boulder:
	sfx_priority 11
	.BYTE sfx_pulse_2 | sfx_triangle

;1
;sfx_pulse_2
@loop_1:
	pitch_envelope $0F
	duty_cycle 2
	volume 15
	sfx_note nAb4
	sfx_frames 5

;sfx_triangle
	triangle_note_length $08
	pitch_envelope $0F
	sfx_note nBb3
	loop 3, @loop_1
	sfx_end
