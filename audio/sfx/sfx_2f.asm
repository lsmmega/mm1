sfx_2f:
	sfx_priority 9
	.BYTE sfx_pulse_2

;1
;sfx_pulse_2
@loop_1:
	sfx_frames 4
	duty_cycle 0
	pitch_envelope $33
	sfx_modulator_set 6, 1, 1, volume_decay, 0, 0
	volume 14
	sfx_note nD_4
	loop 2, @loop_1
	sfx_end
