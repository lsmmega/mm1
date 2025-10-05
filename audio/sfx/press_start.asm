sfx_press_start:
	sfx_priority 14
	.BYTE sfx_pulse_1 | sfx_pulse_2

;1
;sfx_pulse_1
	duty_cycle 3
	sfx_modulator_set 2, 1, 0, volume_decay, 3, 2
	volume 15
	sfx_note nC_7

;sfx_pulse_2
	duty_cycle 3
	sfx_modulator_set 2, 1, 0, volume_decay, 3, 2
	volume 15
	sfx_note nC_6
	sfx_frames 4

;2
;sfx_pulse_1
	duty_cycle 1
	sfx_modulator_set 2, 1, 1, volume_decay, 2, 6
	volume 15
	sfx_note nD_7

;sfx_pulse_2
	duty_cycle 1
	sfx_modulator_set 2, 1, 1, volume_decay, 2, 6
	volume 15
	sfx_note nB_6
	sfx_frames 8

;3
;sfx_pulse_1
	duty_cycle 3
	sfx_modulator_set 2, 1, 0, volume_decay, 3, 2
	volume 10
	sfx_note nC_7

;sfx_pulse_2
	duty_cycle 3
	sfx_modulator_set 2, 1, 0, volume_decay, 3, 2
	volume 10
	sfx_note nC_6
	sfx_frames 4

;4
;sfx_pulse_1
	duty_cycle 1
	sfx_modulator_set 2, 1, 1, volume_decay, 2, 6
	volume 10
	sfx_note nD_7

;sfx_pulse_2
	duty_cycle 1
	sfx_modulator_set 2, 1, 1, volume_decay, 2, 6
	volume 10
	sfx_note nB_6
	sfx_frames 36
	sfx_end
