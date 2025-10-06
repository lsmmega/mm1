sfx_cutman_move:
	sfx_priority 10
	.BYTE sfx_pulse_2 | sfx_noise

;1
;sfx_pulse_2
@loop_1:
	pitch_envelope $B0
	volume 15
	sfx_note nBb6

;sfx_noise
	sfx_frames 4
	volume 10
	sfx_noise_note 12

;2
;sfx_pulse_2
	pitch_envelope $B0
	volume 15
	sfx_note nDb6

;sfx_noise
	sfx_frames 4
	volume 10
	sfx_noise_note 12
	loop 1, @loop_1
	sfx_end
