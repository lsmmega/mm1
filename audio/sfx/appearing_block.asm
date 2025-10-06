sfx_appearing_block:
	sfx_priority 10
	.BYTE sfx_triangle | sfx_noise

;1
;sfx_triangle
	triangle_note_length $81
	pitch_envelope $FE
	sfx_note nC_4

;sfx_noise
	sfx_frames 48
	volume 15
	sfx_modulator_set 2, 3, 4, volume_decay, 0, 0
	pitch_envelope $FE
	sfx_noise_note 5
	sfx_end
