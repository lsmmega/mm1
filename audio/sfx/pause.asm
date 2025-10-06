sfx_pause:
	sfx_priority 14
	.BYTE sfx_pulse_1 | sfx_pulse_2

;1
;sfx_pulse_1
	volume 15
	duty_cycle 2
	sfx_note nA_3 + 2

;sfx_pulse_2
	sfx_frames 5
	volume 15
	duty_cycle 2
	sfx_note nA_3

;2
;sfx_pulse_1
	volume 15
	duty_cycle 2
	sfx_note nE_3 + 2

;sfx_pulse_2
	sfx_frames 5
	volume 15
	duty_cycle 2
	sfx_note nE_3

;3
;sfx_pulse_1
	volume 15
	duty_cycle 2
	sfx_note nDb3 + 2

;sfx_pulse_2
	sfx_frames 5
	volume 15
	duty_cycle 2
	sfx_note nDb3

;4
;sfx_pulse_1
	volume 15
	duty_cycle 2
	sfx_note nA_4 + 2

;sfx_pulse_2
	sfx_frames 5
	volume 15
	duty_cycle 2
	sfx_note nA_4
	sfx_end
