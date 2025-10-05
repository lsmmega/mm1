sfx_explosion:
	sfx_priority 13
	.BYTE sfx_pulse_1 | sfx_pulse_2

;1
;sfx_pulse_1
	duty_cycle 2
	pitch_envelope $32
	volume 15
	sfx_note nAb5
	sfx_frames 21

;sfx_pulse_2
	duty_cycle 2
	pitch_envelope $32
	volume 15
	sfx_note nDb4

;2
;sfx_pulse_1
	duty_cycle 3
	pitch_envelope $2F
	volume 9
	sfx_note nAb4
	sfx_frames 7
	
;sfx_pulse_2
	duty_cycle 3
	pitch_envelope $2F
	volume 9
	sfx_note nDb5
	sfx_end
