music_bombman:
	music_header
	.WORD music_bombman_pulse_1
	.WORD music_bombman_pulse_2
	.WORD music_bombman_triangle
	.WORD music_bombman_noise
	.WORD music_bombman_modulator

music_bombman_pulse_1:
	tempo 7
	duty_cycle 2
	volume 8
	modulator 0
	volume_envelope volume_decay, 2, 32
	base_note C_3
	rest 16
	note F_4, 8
	note Eb4, 8
	rest 8
	note Ab4, 8
	rest 8
	number_of_note_tied 2
	note Gb4, 8
	note Gb4, 64
	rest 16
	note F_4, 8
	note Eb4, 8
	rest 8
	note Ab4, 8
	rest 16
	note Ab4, 4
	note Ab4, 4
	note Ab4, 4
	note Ab4, 4
	rest 8
	note Ab4, 8
	rest 32

@loop_1:
	duty_cycle 3
	volume_envelope volume_decay, 3, 127
	base_note C_2
	note Ab3, 32
	note F_3, 4
	note Gb3, 4
	note Ab3, 4
	note Db4, 8
	note Ab3, 8
	number_of_note_tied 2
	note B_3, 4
	note B_3, 32
	note Ab3, 16
	note Gb3, 16
	note Ab3, 32
	note F_3, 4
	note Gb3, 4
	note Ab3, 4
	note F_4, 8
	note Db4, 8
	number_of_note_tied 2
	note Gb4, 4
	note Gb4, 32
	note F_4, 16
	note Eb4, 16
	note Ab3, 32
	note F_3, 4
	note Gb3, 4
	note Ab3, 4
	note Db4, 8
	dotted_note_set
	note Ab3, 8
	note B_3, 32
	note Ab3, 4
	note A_3, 4
	note B_3, 4
	note E_4, 8
	dotted_note_set
	note B_3, 8
	note D_4, 8
	note B_3, 8
	note D_4, 4
	dotted_note_set
	note G_4, 8
	base_note C_3
	note E_4, 8
	note Db4, 8
	note E_4, 4
	dotted_note_set
	note A_4, 8
	note B_4, 16
	modulator 1
	pitch_envelope $04
	note B_4, 16
	modulator 0
	pitch_envelope $00
	number_of_note_tied 2
	note B_3, 16
	modulator 1
	note B_3, 16
	modulator 0
	base_note C_2
	duty_cycle 2
	volume_envelope volume_decay, 7, 95
	note Gb3, 4
	note Ab3, 4
	note A_3, 4
	note B_3, 4
	note Db4, 4
	note Eb4, 4
	note E_4, 4
	note Eb4, 4
	note Db4, 4
	note Eb4, 4
	note Db4, 4
	note B_3, 4
	note A_3, 4
	note B_3, 4
	note A_3, 4
	note Ab3, 4
	note E_3, 4
	note Gb3, 4
	note Ab3, 4
	note A_3, 4
	note B_3, 4
	note Db4, 4
	note Eb4, 4
	note Db4, 4
	note B_3, 4
	note Db4, 4
	note B_3, 4
	note A_3, 4
	note Ab3, 4
	note G_3, 4
	note Gb3, 4
	note F_3, 4
	note Gb3, 4
	note Ab3, 4
	note A_3, 4
	note B_3, 4
	note Db4, 4
	note Eb4, 4
	note E_4, 4
	note Eb4, 4
	note G_3, 4
	note A_3, 4
	note Bb3, 4
	note C_4, 4
	note Db4, 4
	note Eb4, 4
	note E_4, 4
	note Eb4, 4
	dotted_note_set
	note Ab2, 8
	number_of_note_tied 2
	note Db3, 4
	note Db3, 8
	number_of_note_tied 2
	dotted_note_set
	note Gb3, 8
	note Gb3, 4
	note B_3, 8
	note E_4, 8
	base_note C_3
	note A_4, 8
	note Ab4, 8
	note Gb4, 4
	note Ab4, 4
	rest 4
	note Gb4, 4
	note Ab4, 4
	note Gb4, 4
	note F_4, 8
	note Db4, 8
	rest 4
	note Db4, 4
	note Eb4, 4
	note F_4, 4
	note Gb4, 8
	note E_4, 4
	note Gb4, 4
	rest 4
	note E_4, 4
	note Gb4, 4
	note E_4, 4
	note D_4, 8
	note B_3, 8
	rest 4
	note B_3, 4
	note C_4, 4
	note D_4, 4
	base_note C_2
	triplet_note_set
	note E_4, 8
	triplet_note_set
	note C_4, 8
	triplet_note_set
	note G_3, 8
	triplet_note_set
	note E_3, 8
	triplet_note_set
	note C_3, 8
	triplet_note_set
	note G_2, 8
	triplet_note_set
	note Gb4, 8
	triplet_note_set
	note D_4, 8
	triplet_note_set
	note A_3, 8
	triplet_note_set
	note Gb3, 8
	triplet_note_set
	note D_3, 8
	triplet_note_set
	note A_2, 8
	base_note C_3
	triplet_note_set
	note G_4, 8
	triplet_note_set
	note E_4, 8
	triplet_note_set
	note C_4, 8
	base_note C_2
	triplet_note_set
	note G_3, 8
	triplet_note_set
	note E_3, 8
	triplet_note_set
	note C_3, 8
	base_note C_3
	triplet_note_set
	note Ab4, 8
	triplet_note_set
	note Eb4, 8
	triplet_note_set
	note C_4, 8
	base_note C_2
	triplet_note_set
	note Ab3, 8
	triplet_note_set
	note Eb3, 8
	triplet_note_set
	note C_3, 8
	loop 0, @loop_1

music_bombman_pulse_2:
	tempo 7
	duty_cycle 2
	volume 7
	modulator 0
	volume_envelope volume_decay, 2, 32
	base_note C_3
	rest 16
	note Db4, 8
	note Db4, 8
	rest 8
	note Db4, 8
	rest 8
	number_of_note_tied 2
	note B_3, 8
	note B_3, 64
	rest 16
	note Db4, 8
	note Db4, 8
	rest 8
	note Db4, 8
	rest 16
	note C_4, 4
	note C_4, 4
	note C_4, 4
	note C_4, 4
	rest 8
	note C_4, 8
	rest 32

@loop_1:
	duty_cycle 3
	volume_envelope volume_decay, 3, 127
	base_note C_2
	note F_3, 32
	note Db3, 4
	note Eb3, 4
	note F_3, 4
	note Ab3, 8
	note F_3, 8
	number_of_note_tied 2
	note Gb3, 4
	note Gb3, 32
	note Gb3, 16
	note Gb3, 16
	note F_3, 32
	note Db3, 4
	note Eb3, 4
	note F_3, 4
	note Ab3, 8
	note F_3, 8
	number_of_note_tied 2
	note B_3, 4
	note B_3, 32
	note Ab3, 16
	note Gb3, 16
	note F_3, 32
	note Db3, 4
	note Eb3, 4
	note F_3, 4
	note Ab3, 8
	dotted_note_set
	note F_3, 8
	note Ab3, 32
	note E_3, 4
	note Gb3, 4
	note Ab3, 4
	note B_3, 8
	dotted_note_set
	note Ab3, 8
	note B_3, 8
	note G_3, 8
	note B_3, 4
	dotted_note_set
	note D_4, 8
	base_note C_3
	note Db4, 8
	note A_3, 8
	note Db4, 4
	dotted_note_set
	note E_4, 8
	number_of_note_tied 2
	note Eb4, 16
	pitch_envelope $04
	note Eb4, 16
	pitch_envelope $00
	number_of_note_tied 2
	note Eb3, 16
	modulator 1
	note Eb3, 16
	base_note C_2
	modulator 0
	duty_cycle 1
	volume_envelope volume_decay, 7, 15
	dotted_note_set
	note Gb3, 8
	dotted_note_set
	note Db3, 8
	note E_3, 8
	dotted_note_set
	note Gb3, 8
	dotted_note_set
	note Db3, 8
	note Gb3, 8
	dotted_note_set
	note E_3, 8
	dotted_note_set
	note B_2, 8
	note Eb3, 8
	dotted_note_set
	note E_3, 8
	dotted_note_set
	note B_2, 8
	note F_3, 8
	dotted_note_set
	note Gb3, 8
	dotted_note_set
	note Db3, 8
	note E_3, 8
	dotted_note_set
	note Gb3, 8
	dotted_note_set
	note Db3, 8
	note G_3, 8
	duty_cycle 2
	volume_envelope volume_decay, 0, 0
	dotted_note_set
	note Ab2, 8
	number_of_note_tied 2
	note Ab2, 4
	note Ab2, 8
	number_of_note_tied 2
	dotted_note_set
	note Db3, 8
	note Db3, 4
	note Gb3, 8
	note B_3, 8
	note E_4, 8
	base_note C_3
	note F_4, 8
	note Eb4, 4
	note F_4, 4
	rest 4
	note Eb4, 4
	note F_4, 4
	note Eb4, 4
	note Db4, 8
	note Ab3, 8
	rest 4
	note Ab3, 4
	note Ab3, 4
	note Db4, 4
	note D_4, 8
	note Db4, 4
	note D_4, 4
	rest 4
	note Db4, 4
	note D_4, 4
	note Db4, 4
	note B_3, 8
	note Gb3, 8
	rest 4
	note Gb3, 4
	note Gb3, 4
	note B_3, 4
	base_note C_2
	triplet_note_set
	note C_4, 8
	triplet_note_set
	note G_3, 8
	triplet_note_set
	note E_3, 8
	triplet_note_set
	note C_3, 8
	triplet_note_set
	note G_2, 8
	triplet_note_set
	note E_2, 8
	triplet_note_set
	note D_4, 8
	triplet_note_set
	note A_3, 8
	triplet_note_set
	note Gb3, 8
	triplet_note_set
	note D_3, 8
	triplet_note_set
	note A_2, 8
	triplet_note_set
	note Gb2, 8
	base_note C_3
	triplet_note_set
	note E_4, 8
	triplet_note_set
	note C_4, 8
	triplet_note_set
	note Gb3, 8
	base_note C_2
	triplet_note_set
	note E_3, 8
	triplet_note_set
	note C_3, 8
	triplet_note_set
	note Gb2, 8
	base_note C_3
	triplet_note_set
	note Gb4, 8
	triplet_note_set
	note Eb4, 8
	triplet_note_set
	note Ab3, 8
	base_note C_2
	triplet_note_set
	note Gb3, 8
	triplet_note_set
	note Eb3, 8
	triplet_note_set
	note Ab2, 8
	loop 0, @loop_1
	music_end

music_bombman_triangle:
	tempo 7
	base_note C_2
	triangle_note_length $81
	note Db3, 8
	note Db3, 4
	note Db3, 4
	rest 4
	note Db3, 4
	note Db3, 4
	note Db3, 4
	rest 4
	note Db3, 4
	note Db3, 4
	note Db3, 4
	rest 8
	note Db3, 4
	note Db3, 4
	note Db3, 8
	note Db3, 4
	note Db3, 4
	rest 8
	note Ab2, 8
	note B_2, 8
	note Ab2, 8
	note B_2, 8
	note C_3, 8
	note Db3, 8
	note Db3, 4
	note Db3, 4
	rest 4
	note Db3, 4
	note Db3, 4
	note Db3, 4
	rest 4
	note Db3, 4
	note Db3, 4
	note Db3, 4
	rest 8
	note Db3, 4
	note Db3, 4
	note Ab2, 4
	note Ab2, 4
	note Ab2, 4
	note Ab2, 4
	rest 8
	note Ab2, 8
	base_note G_2
	pitch_envelope $0F
	triangle_note_length $09
	rest 4
	note Eb4, 4
	note Eb4, 4
	note Ab3, 4
	note Ab3, 4
	note Eb3, 4
	note Eb3, 4
	note Ab2, 4

@loop_11:
	pitch_envelope $00
	base_note C_2
	triangle_note_length $81

@loop_1:
	note Db3, 8
	note Db3, 4
	note Db3, 4
	rest 4
	note Db3, 4
	note Db3, 4
	note Db3, 4
	rest 4
	note Db3, 4
	note Db3, 4
	note Db3, 4
	rest 8
	note B_2, 4
	note Db3, 4
	note B_2, 8
	note B_2, 4
	note B_2, 4
	rest 4
	note B_2, 4
	note B_2, 4
	note B_2, 4
	rest 4
	note B_2, 4
	note B_2, 4
	note B_2, 4
	rest 8
	note A_2, 4
	note B_2, 4
	loop 1, @loop_1
	note Db3, 8
	note Db3, 4
	note Db3, 4
	rest 4
	note Db3, 4
	note Db3, 4
	note Db3, 4
	rest 4
	note Db3, 4
	note Db3, 4
	note Db3, 4
	rest 8
	note B_2, 4
	note Db3, 4
	note E_3, 8
	note E_3, 4
	note E_3, 4
	rest 4
	note E_3, 4
	note E_3, 4
	note E_3, 4
	rest 4
	note E_3, 4
	note E_3, 4
	note E_3, 4
	rest 8
	note D_3, 4
	note E_3, 4
	triplet_note_set
	note G_3, 16
	triplet_note_set
	note G_3, 16
	triplet_note_set
	note G_3, 16
	triplet_note_set
	note A_3, 16
	triplet_note_set
	note A_3, 16
	triplet_note_set
	note A_3, 16
	note B_3, 64

@loop_2:
	note Gb3, 8
	loop 7, @loop_2

@loop_3:
	note E_3, 8
	loop 7, @loop_3

@loop_4:
	note Gb3, 8
	loop 3, @loop_4

@loop_5:
	note G_3, 8
	loop 3, @loop_5

@loop_6:
	note Ab3, 8
	loop 7, @loop_6

@loop_7:
	note Db3, 8
	loop 7, @loop_7

@loop_8:
	note B_2, 8
	loop 7, @loop_8

@loop_9:
	note C_3, 8
	loop 3, @loop_9

@loop_10:
	note D_3, 8
	loop 3, @loop_10
	base_note G_2
	pitch_envelope $0F
	triangle_note_length $09
	note Eb4, 4
	note Eb4, 4
	note Eb4, 4
	note Eb4, 4
	note Ab3, 8
	note Eb4, 4
	note Eb3, 4
	note Ab3, 4
	note Eb4, 4
	rest 4
	note Ab3, 4
	note Eb4, 4
	rest 4
	note Eb3, 4
	note Eb3, 4
	loop 0, @loop_11

music_bombman_noise:
	tempo 7
	volume_envelope volume_decay, 1, 1
	volume 9

@loop_1:
	rest 8
	noise_note 12, 8
	noise_note 6, 8
	noise_note 12, 4
	noise_note 12, 4
	noise_note 12, 8
	noise_note 12, 4
	noise_note 12, 4
	noise_note 6, 8
	noise_note 12, 4
	noise_note 12, 4
	noise_note 12, 8
	noise_note 6, 4
	noise_note 12, 4
	noise_note 6, 8
	noise_note 12, 4
	noise_note 12, 4
	noise_note 12, 4
	noise_note 12, 4
	noise_note 12, 4
	noise_note 12, 4
	noise_note 6, 8
	noise_note 6, 4
	noise_note 6, 4
	loop 1, @loop_1

@loop_2:
	volume_envelope volume_decay, 1, 1
	volume 9
	rest 8
	noise_note 12, 8
	noise_note 6, 8
	noise_note 12, 4
	noise_note 12, 4
	noise_note 12, 8
	noise_note 12, 4
	noise_note 12, 4
	noise_note 6, 8
	noise_note 12, 4
	noise_note 12, 4
	noise_note 12, 8
	noise_note 6, 4
	noise_note 12, 4
	noise_note 6, 8
	noise_note 12, 4
	noise_note 12, 4
	noise_note 12, 4
	noise_note 12, 4
	noise_note 12, 4
	noise_note 12, 4
	noise_note 6, 8
	noise_note 6, 4
	noise_note 6, 4
	loop 3, @loop_2

@loop_3:
	rest 8
	noise_note 12, 8
	noise_note 6, 8
	noise_note 12, 4
	noise_note 12, 4
	noise_note 12, 8
	noise_note 12, 4
	noise_note 12, 4
	noise_note 6, 8
	noise_note 12, 4
	noise_note 12, 4
	noise_note 12, 8
	noise_note 6, 4
	noise_note 12, 4
	noise_note 6, 8
	noise_note 12, 4
	noise_note 12, 4
	noise_note 12, 4
	noise_note 12, 4
	noise_note 12, 4
	noise_note 12, 4
	noise_note 6, 8
	noise_note 6, 4
	noise_note 6, 4
	loop 3, @loop_3
	loop 0, @loop_2

music_bombman_modulator:
	modulator_set 7, 0, 0, volume_decay, 0
	modulator_set 3, 2, 1, volume_decay, 0
