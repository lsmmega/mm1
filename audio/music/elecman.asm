music_elecman:
	music_header
	.WORD music_elecman_pulse_1
	.WORD music_elecman_pulse_2
	.WORD music_elecman_triangle
	.WORD music_elecman_noise
	.WORD music_elecman_modulator

music_elecman_pulse_1:
	tempo 6
	base_note A_1
	duty_cycle 2
	volume 6
	modulator 1
	volume_envelope volume_decay, 4, 10
	rest 64
	rest 32
	rest 16
	triplet_note_set
	note Gb2, 8
	triplet_note_set
	note Ab2, 8
	triplet_note_set
	note Bb2, 8

@loop_1:
	volume 8
	duty_cycle 1
	modulator 1
	volume_envelope volume_decay, 15, 74
	base_note A_2
	note B_2, 8
	rest 8
	dotted_note_set
	note Eb4, 16
	dotted_note_set
	note Db4, 16
	dotted_note_set
	note E_4, 16
	number_of_note_tied 2
	dotted_note_set
	note Eb4, 16
	note Eb4, 16
	rest 16
	dotted_note_set
	note Eb4, 16
	dotted_note_set
	note Db4, 16
	dotted_note_set
	note E_4, 16
	number_of_note_tied 2
	dotted_note_set
	note Eb4, 16
	note Eb4, 16
	rest 16
	dotted_note_set
	note Eb4, 16
	dotted_note_set
	note Db4, 16
	dotted_note_set
	note E_4, 16
	dotted_note_set
	note Eb4, 16
	note Db4, 16
	note B_3, 64
	dotted_note_set
	note B_3, 16
	note Bb3, 8
	rest 8
	note Ab3, 8
	note Gb3, 8
	rest 8
	rest 16
	dotted_note_set
	note Eb4, 16
	dotted_note_set
	note Db4, 16
	dotted_note_set
	note E_4, 16
	number_of_note_tied 2
	dotted_note_set
	note Eb4, 16
	note Eb4, 16
	rest 16
	dotted_note_set
	note Eb4, 16
	dotted_note_set
	note Db4, 16
	dotted_note_set
	note E_4, 16
	number_of_note_tied 2
	dotted_note_set
	note Eb4, 16
	note Eb4, 16
	rest 16
	dotted_note_set
	note Eb4, 16
	dotted_note_set
	note Db4, 16
	dotted_note_set
	note E_4, 16
	dotted_note_set
	note Eb4, 16
	note Db4, 16
	note B_3, 64
	modulator 0
	rest 8
	note Bb3, 8
	note Gb4, 8
	rest 8
	rest 32
	duty_cycle 1
	modulator 1
	volume_envelope volume_decay, 2, 6
	volume 6
	note B_4, 8
	note B_4, 8
	note B_4, 8
	note B_4, 8
	note B_4, 8
	note B_4, 8
	note B_4, 8
	note B_4, 8
	note A_4, 8
	note A_4, 8
	note A_4, 8
	note A_4, 8
	note A_4, 8
	note A_4, 8
	note A_4, 8
	note A_4, 8
	note B_4, 8
	note B_4, 8
	note B_4, 8
	note B_4, 8
	note B_4, 8
	note B_4, 8
	note B_4, 8
	note B_4, 8
	note Db5, 8
	note Db5, 8
	note Db5, 8
	note Db5, 8
	note Db5, 8
	note Db5, 8
	note Db5, 8
	note Db5, 8
	note D_5, 8
	note D_5, 8
	note D_5, 8
	note D_5, 8
	note D_5, 8
	note D_5, 8
	note D_5, 8
	note D_5, 8
	note C_5, 8
	note C_5, 8
	note C_5, 8
	note C_5, 8
	note C_5, 8
	note C_5, 8
	note C_5, 8
	note C_5, 8
	note Bb4, 8
	note Bb4, 8
	note Bb4, 8
	note Bb4, 8
	note Bb4, 8
	note Bb4, 8
	note Bb4, 8
	note Bb4, 8
	base_note A_3
	note Gb5, 4
	note Gb5, 4
	note Gb5, 4
	note Gb5, 4
	rest 4
	note Gb5, 4
	note Gb5, 4
	rest 4
	note Gb5, 4
	note Gb5, 4
	rest 4
	rest 4
	rest 16
	loop 0, @loop_1

music_elecman_pulse_2:
	tempo 6
	duty_cycle 1
	volume 7
	volume_envelope volume_decay, 15, 74
	base_note A_1
	rest 64
	rest 32
	rest 16
	triplet_note_set
	note Gb2, 8
	triplet_note_set
	note F_2, 8
	triplet_note_set
	note E_2, 8

@loop_1:
	volume 8
	duty_cycle 1
	modulator 1
	volume_envelope volume_decay, 15, 74
	base_note A_2
	note Eb3, 8
	rest 8
	dotted_note_set
	note B_3, 16
	dotted_note_set
	note B_3, 16
	dotted_note_set
	note B_3, 16
	dotted_note_set
	note B_3, 16
	note Eb5, 4
	note B_4, 4
	note Gb4, 4
	note E_4, 4
	note A_4, 8
	rest 8
	dotted_note_set
	note B_3, 16
	dotted_note_set
	note B_3, 16
	dotted_note_set
	note B_3, 16
	dotted_note_set
	note B_3, 16
	note Eb5, 4
	note B_4, 4
	note Gb4, 4
	note E_4, 4
	note Ab4, 8
	rest 8
	dotted_note_set
	note Ab3, 16
	dotted_note_set
	note Ab3, 16
	dotted_note_set
	note Ab3, 16
	number_of_note_tied 2
	dotted_note_set
	note Ab3, 16
	note Ab3, 16
	note G_3, 64
	dotted_note_set
	note Gb3, 16
	note Gb3, 8
	rest 8
	note Ab3, 8
	note Gb3, 8
	modulator 0
	base_note A_3
	note Gb5, 8
	base_note A_2
	modulator 1
	rest 16
	dotted_note_set
	note B_3, 16
	dotted_note_set
	note B_3, 16
	dotted_note_set
	note B_3, 16
	dotted_note_set
	note B_3, 16
	note Eb5, 4
	note B_4, 4
	note Gb4, 4
	note E_4, 4
	note A_4, 8
	rest 8
	dotted_note_set
	note B_3, 16
	dotted_note_set
	note B_3, 16
	dotted_note_set
	note B_3, 16
	dotted_note_set
	note B_3, 16
	note Eb5, 4
	note B_4, 4
	note Gb4, 4
	note E_4, 4
	note Ab4, 8
	rest 8
	dotted_note_set
	note Ab3, 16
	dotted_note_set
	note Ab3, 16
	dotted_note_set
	note Ab3, 16
	number_of_note_tied 2
	dotted_note_set
	note Ab3, 16
	note Ab3, 16
	note G_3, 64
	modulator 0
	rest 8
	note Gb3, 8
	note Gb4, 8
	rest 8
	rest 32
	duty_cycle 1
	modulator 1
	volume_envelope volume_decay, 2, 6
	volume 6
	note Gb4, 8
	note Gb4, 8
	note Gb4, 8
	note Gb4, 8
	note Gb4, 8
	note Gb4, 8
	note Gb4, 8
	note Gb4, 8
	note E_4, 8
	note E_4, 8
	note E_4, 8
	note E_4, 8
	note E_4, 8
	note E_4, 8
	note E_4, 8
	note E_4, 8
	note Gb4, 8
	note Gb4, 8
	note Gb4, 8
	note Gb4, 8
	note Gb4, 8
	note Gb4, 8
	note Gb4, 8
	note Gb4, 8
	note A_4, 8
	note A_4, 8
	note A_4, 8
	note A_4, 8
	note A_4, 8
	note A_4, 8
	note A_4, 8
	note A_4, 8
	note A_4, 8
	note A_4, 8
	note A_4, 8
	note A_4, 8
	note A_4, 8
	note A_4, 8
	note A_4, 8
	note A_4, 8
	note G_4, 8
	note G_4, 8
	note G_4, 8
	note G_4, 8
	note G_4, 8
	note G_4, 8
	note G_4, 8
	note G_4, 8
	note F_4, 8
	note F_4, 8
	note F_4, 8
	note F_4, 8
	note F_4, 8
	note F_4, 8
	note F_4, 8
	note F_4, 8
	base_note A_2
	note B_4, 4
	note B_4, 4
	note B_4, 4
	note B_4, 4
	rest 4
	note B_4, 4
	note B_4, 4
	rest 4
	note B_4, 4
	note B_4, 4
	rest 4
	rest 4
	rest 16
	loop 0, @loop_1

music_elecman_triangle:
	tempo 6

@loop_1:
	triangle_note_length $24
	base_note G_4
	pitch_envelope $2F
	note A_4, 8
	note A_4, 8
	rest 4
	dotted_note_set
	note A_4, 8
	note A_4, 16
	rest 16
	loop 1, @loop_1

@loop_2:
	triangle_note_length $7F
	pitch_envelope $00
	modulator 0
	base_note A_1
	note B_2, 8
	note Gb3, 8
	note B_2, 8
	note Gb3, 8
	note B_2, 8
	note Gb3, 8
	note B_2, 8
	note Gb3, 8
	note B_2, 8
	note Gb3, 8
	note B_2, 8
	note Gb3, 8
	note B_2, 8
	note Gb3, 8
	note B_2, 8
	number_of_note_tied 2
	note A_2, 8
	note A_2, 8
	note Gb3, 8
	note A_2, 8
	note Gb3, 8
	note A_2, 8
	note Gb3, 8
	note A_2, 8
	note Gb3, 8
	note A_2, 8
	note Gb3, 8
	note A_2, 8
	note Gb3, 8
	note A_2, 8
	note Gb3, 8
	note A_2, 8
	number_of_note_tied 2
	note Ab2, 8
	note Ab2, 8
	note E_3, 8
	note Ab2, 8
	note E_3, 8
	note Ab2, 8
	note E_3, 8
	note Ab2, 8
	note E_3, 8
	note Ab2, 8
	note E_3, 8
	note Ab2, 8
	note E_3, 8
	note Ab2, 8
	note E_3, 8
	note Ab2, 8
	number_of_note_tied 2
	note G_2, 8
	note G_2, 8
	note E_3, 8
	note G_2, 8
	note E_3, 8
	note G_2, 8
	note E_3, 8
	note G_2, 8
	note E_3, 8
	note Gb2, 8
	note E_3, 8
	note Gb2, 8
	note E_3, 8
	note Gb2, 8
	note E_3, 8
	note Gb2, 8
	note E_3, 8
	loop 1, @loop_2
	triangle_note_length $81
	base_note A_2
	number_of_note_tied 2
	note B_2, 8
	note B_2, 2
	note Db3, 2
	note Eb3, 2
	note E_3, 2
	note Gb3, 2
	note Ab3, 2
	note Bb3, 2
	note B_3, 2
	note Db4, 2
	note Eb4, 2
	note E_4, 2
	note F_4, 2
	note Gb4, 8
	note B_4, 16
	number_of_note_tied 2
	note A_4, 8
	note A_4, 16
	rest 8
	note Ab4, 8
	note A_4, 8
	note Ab4, 8
	note Gb4, 8
	note E_4, 8
	note Gb4, 16
	note B_3, 8
	note Eb4, 8
	note Gb4, 8
	note B_4, 16
	number_of_note_tied 2
	note A_4, 8
	note A_4, 64
	number_of_note_tied 2
	note D_3, 8
	note D_3, 2
	note E_3, 2
	note Gb3, 2
	note G_3, 2
	note A_3, 2
	note B_3, 2
	note Db4, 2
	note D_4, 2
	base_note A_3
	note A_4, 8
	note D_5, 8
	note Gb5, 16
	number_of_note_tied 2
	note E_5, 8
	dotted_note_set
	note E_5, 16
	dotted_note_set
	note C_5, 16
	note A_4, 16
	dotted_note_set
	note Bb4, 16
	dotted_note_set
	note C_5, 16
	note D_5, 16
	note Gb5, 4
	note Gb5, 4
	note Gb5, 4
	note Gb5, 4
	rest 4
	note Gb5, 4
	note Gb5, 4
	rest 4
	note Gb5, 4
	note Gb5, 4
	rest 4
	rest 4
	rest 16
	loop 0, @loop_2

music_elecman_noise:
	tempo 6
	volume 10
	volume_envelope volume_decay, 1, 1
	rest 16
	noise_note 10, 8
	rest 16
	rest 8
	noise_note 10, 8
	rest 8
	rest 16
	noise_note 10, 8
	rest 16
	rest 8
	noise_note 10, 8
	noise_note 10, 4
	noise_note 10, 4
	loop 0, music_elecman_noise

music_elecman_modulator:
	modulator_set 7, 0, 0, volume_decay, 0, 0
	modulator_set 1, 2, 2, volume_decay, 0, 0
	modulator_set 0, 0, 0, volume_decay, 2, 2
