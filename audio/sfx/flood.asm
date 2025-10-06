sfx_flood:
	sfx_priority 14
	.BYTE sfx_noise

;1
;sfx_noise
@loop_1:
	sfx_frames 4
	volume 6
	sfx_noise_note 11
	loop 2, @loop_1

;2
;sfx_noise
@loop_2:
	sfx_frames 4
	volume 8
	sfx_noise_note 11
	loop 2, @loop_2

;3
;sfx_noise
@loop_3:
	sfx_frames 4
	volume 10
	sfx_noise_note 11
	loop 2, @loop_3

;4
;sfx_noise
@loop_4:
	sfx_frames 16
	volume 15
	sfx_noise_note 11
	loop 4, @loop_4

;5
;sfx_noise
@loop_5:
	sfx_frames 4
	volume 10
	sfx_noise_note 11
	loop 2, @loop_5

;6
;sfx_noise
@loop_6:
	sfx_frames 4
	volume 8
	sfx_noise_note 11
	loop 2, @loop_6

;7
;sfx_noise
@loop_7:
	sfx_frames 4
	volume 6
	sfx_noise_note 11
	loop 2, @loop_7
	sfx_end
