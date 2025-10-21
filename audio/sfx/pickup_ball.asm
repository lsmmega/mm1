sfx_pickup_ball:
	sfx_priority 13
	.BYTE sfx_pulse_1 | sfx_pulse_2

;1
;sfx_pulse_1, loop is sfx_pulse_2
@loop_1:
	sfx_frames 4
	duty_cycle 2
	pitch_envelope $FE
	volume 15
	sfx_note nD_4

;2
;sfx_pulse_1
	duty_cycle 2
	volume 15
	pitch_envelope $FE
	sfx_note nGb4

;sfx_pulse_2
	sfx_frames 4
	duty_cycle 2
	pitch_envelope $FE
	volume 15
	sfx_note nGb4

;3
;sfx_pulse_1
	duty_cycle 2
	pitch_envelope $FE
	volume 15
	sfx_note nA_4

;sfx_pulse_2
	sfx_frames 4
	duty_cycle 2
	volume 15
	sfx_note nA_5

;4
;sfx_pulse_1
	duty_cycle 2
	volume 15
	sfx_note nD_5

;sfx_pulse_2
	sfx_frames 4
	duty_cycle 2
	volume 15
	sfx_note nGb5 + 2

;5
;sfx_pulse_1
	duty_cycle 2
	volume 15
	sfx_note nGb5
	loop 1, @loop_1
	sfx_end
