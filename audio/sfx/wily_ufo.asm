sfx_wily_ufo:
	sfx_priority 13
	.BYTE sfx_pulse_1 | sfx_pulse_2

;1
;sfx_pulse_1
@loop_1:
	duty_cycle 1
	pitch_envelope $FF
	sfx_modulator_set 1, 2, 0, volume_decay, 0, 0
	volume 15
	sfx_note nAb5

;sfx_pulse_2
	sfx_frames 16
	duty_cycle 1
	pitch_envelope $FF
	sfx_modulator_set 1, 2, 0, volume_decay, 0, 0
	volume 10
	sfx_note nDb6
	loop 35, @loop_1
	sfx_end
