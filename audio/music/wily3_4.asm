music_wily3_4:
	music_header
	.WORD music_wily3_4_pulse_1
	.WORD music_wily3_4_pulse_2
	.WORD music_wily3_4_triangle
	.WORD music_wily3_4_noise
	.WORD music_wily3_4_modulator

music_wily3_4_pulse_1:
	tempo 7

@loop_1:
	volume 7
	duty_cycle 1
	volume_envelope volume_decay, 10, 127
	modulator 1
	base_note D_2
	note G_2, 64
	note Ab2, 64
	note A_2, 64
	note Bb2, 32
	triplet_note_set
	note D_3, 8
	triplet_note_set
	note G_3, 8
	triplet_note_set
	note Ab3, 8
	triplet_note_set
	note Bb3, 8
	triplet_note_set
	note D_4, 8
	triplet_note_set
	note Ab4, 8
	note G_3, 64
	note Ab3, 64
	note A_3, 64
	note Bb3, 64
	note G_3, 32
	note F_3, 32
	note Bb3, 32
	note Ab3, 32
	note G_2, 32
	note F_2, 32
	note Bb2, 32
	note Ab2, 32
	loop 0, @loop_1

music_wily3_4_pulse_2:
	tempo 7

@loop_1:
	volume 6
	duty_cycle 1
	volume_envelope volume_decay, 10, 127
	modulator 1
	base_note D_2
	note D_3, 64
	note Eb3, 64
	note E_3, 64
	note F_3, 32
	triplet_note_set
	note Bb2, 8
	triplet_note_set
	note D_3, 8
	triplet_note_set
	note F_3, 8
	triplet_note_set
	note G_3, 8
	triplet_note_set
	note Bb3, 8
	triplet_note_set
	note Eb4, 8
	note D_4, 64
	note Eb4, 64
	note E_4, 64
	note F_4, 64
	note D_4, 32
	note C_4, 32
	note F_4, 32
	note Eb4, 32
	note D_3, 32
	note C_3, 32
	note F_3, 32
	note Eb3, 32
	loop 0, @loop_1

music_wily3_4_triangle:
	tempo 7

@loop_1:
	triangle_note_length $71
	base_note D_2
	note G_2, 4
	note G_3, 4
	note D_3, 4
	note F_3, 4
	loop 31, @loop_1

@loop_2:
	note G_2, 4
	note G_3, 4
	note G_2, 4
	note G_3, 4
	loop 1, @loop_2

@loop_3:
	note F_2, 4
	note F_3, 4
	note F_2, 4
	note F_3, 4
	loop 1, @loop_3

@loop_4:
	note Bb2, 4
	note Eb3, 4
	note Bb2, 4
	note Eb3, 4
	loop 1, @loop_4

@loop_5:
	note Ab2, 4
	note Ab3, 4
	note Ab2, 4
	note Ab3, 4
	loop 1, @loop_5

@loop_6:
	note G_2, 4
	note G_3, 4
	note G_2, 4
	note G_3, 4
	loop 1, @loop_6

@loop_7:
	note F_2, 4
	note F_3, 4
	note F_2, 4
	note F_3, 4
	loop 1, @loop_7

@loop_8:
	note Bb2, 4
	note Eb3, 4
	note Bb2, 4
	note Eb3, 4
	loop 1, @loop_8
	pitch_envelope $0F
	triangle_note_length $09
	base_note A_2
	triplet_note_set
	note Eb4, 8
	triplet_note_set
	note Eb4, 8
	triplet_note_set
	note Eb4, 8
	triplet_note_set
	note Bb3, 8
	triplet_note_set
	note Bb3, 8
	triplet_note_set
	note Bb3, 8
	pitch_envelope $00
	triangle_note_length $7F
	base_note Ab2
	loop 0, @loop_1

music_wily3_4_noise:
	tempo 7
	volume 6
	volume_envelope volume_decay, 2, 2
	rest 8
	noise_note 10, 8
	rest 8
	noise_note 10, 8
	rest 8
	noise_note 10, 8
	rest 8
	noise_note 10, 4
	noise_note 10, 4
	rest 8
	noise_note 10, 8
	rest 8
	noise_note 10, 8
	rest 8
	noise_note 10, 8
	rest 4
	noise_note 10, 8
	noise_note 10, 4
	loop 0, music_wily3_4_noise

music_wily3_4_modulator:
	modulator_set 7, 0, 0, volume_decay, 0, 0
	modulator_set 1, 2, 2, volume_decay, 0, 0
