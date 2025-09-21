music_wily1_2:
	music_header
	.WORD music_wily1_2_pulse_1
	.WORD music_wily1_2_pulse_2
	.WORD music_wily1_2_triangle
	.WORD music_wily1_2_noise
	.WORD music_wily1_2_modulator

music_wily1_2_pulse_1:
	tempo 6

@loop_8:
	modulator 0
	volume 8
	duty_cycle 0
	volume_envelope volume_decay, 14, 15
	base_note F_2

@loop_1:
	rest 8
	note A_3, 8
	note A_3, 4
	dotted_note_set
	note B_3, 8
	triplet_note_set
	note Db4, 16
	triplet_note_set
	note B_3, 16
	triplet_note_set
	note A_3, 16
	loop 1, @loop_1

@loop_2:
	rest 8
	note Ab3, 8
	note Ab3, 4
	dotted_note_set
	note A_3, 8
	triplet_note_set
	note B_3, 16
	triplet_note_set
	note A_3, 16
	triplet_note_set
	note Ab3, 16
	loop 1, @loop_2

@loop_3:
	rest 8
	note Gb3, 8
	note Gb3, 4
	dotted_note_set
	note Ab3, 8
	triplet_note_set
	note A_3, 16
	triplet_note_set
	note Ab3, 16
	triplet_note_set
	note Gb3, 16
	loop 1, @loop_3

@loop_4:
	rest 8
	note F_3, 8
	note F_3, 4
	dotted_note_set
	note Gb3, 8
	triplet_note_set
	note Ab3, 16
	triplet_note_set
	note Gb3, 16
	triplet_note_set
	note F_3, 16
	loop 1, @loop_4
	volume 8
	volume_envelope volume_decay, 1, 80
	number_of_note_tied 2
	note A_3, 16
	modulator 2
	note A_3, 64
	modulator 0
	rest 16
	rest 8
	note A_3, 8
	rest 8
	number_of_note_tied 2
	note Ab3, 8
	number_of_note_tied 2
	note Ab3, 16
	modulator 2
	note Ab3, 64
	modulator 0
	rest 16
	rest 8
	note Ab3, 8
	rest 8
	number_of_note_tied 2
	note Gb3, 8
	number_of_note_tied 2
	note Gb3, 16
	modulator 2
	note Gb3, 64
	modulator 0
	rest 16
	rest 8
	note Gb3, 8
	rest 8
	number_of_note_tied 2
	note F_3, 8
	number_of_note_tied 2
	note F_3, 16
	modulator 2
	number_of_note_tied 2
	note F_3, 16
	note F_3, 64
	rest 32
	modulator 0

@loop_5:
	note C_3, 4
	note A_3, 4
	loop 7, @loop_5
	note Db3, 4
	note D_3, 4
	note Eb3, 4
	note E_3, 4
	note F_3, 4
	note Gb3, 4
	note G_3, 4
	note Ab3, 4
	note A_3, 4
	note Ab3, 4
	note G_3, 4
	note Gb3, 4
	note F_3, 4
	note E_3, 4
	note Eb3, 4
	note Db3, 4

@loop_6:
	note D_3, 4
	note B_3, 4
	loop 3, @loop_6

@loop_7:
	note D_3, 4
	note C_4, 4
	loop 3, @loop_7
	note Db4, 64
	loop 0, @loop_8
	music_end

music_wily1_2_pulse_2:
	tempo 6

@loop_12:
	base_note F_2
	duty_cycle 0
	volume 6
	volume_envelope volume_decay, 14, 15

@loop_1:
	rest 8
	note Gb3, 8
	note Gb3, 4
	dotted_note_set
	note Ab3, 8
	triplet_note_set
	note A_3, 16
	triplet_note_set
	note Ab3, 16
	triplet_note_set
	note Gb3, 16
	loop 1, @loop_1

@loop_2:
	rest 8
	note E_3, 8
	note E_3, 4
	dotted_note_set
	note Gb3, 8
	triplet_note_set
	note Ab3, 16
	triplet_note_set
	note Gb3, 16
	triplet_note_set
	note E_3, 16
	loop 1, @loop_2

@loop_3:
	rest 8
	note D_3, 8
	note D_3, 4
	dotted_note_set
	note E_3, 8
	triplet_note_set
	note Gb3, 16
	triplet_note_set
	note E_3, 16
	triplet_note_set
	note D_3, 16
	loop 1, @loop_3

@loop_4:
	rest 8
	note Db3, 8
	note Db3, 4
	dotted_note_set
	note Eb3, 8
	triplet_note_set
	note F_3, 16
	triplet_note_set
	note D_3, 16
	triplet_note_set
	note Db3, 16
	loop 1, @loop_4

@loop_5:
	rest 8
	note A_3, 8
	note A_3, 4
	dotted_note_set
	note B_3, 8
	triplet_note_set
	note Db4, 16
	triplet_note_set
	note B_3, 16
	triplet_note_set
	note A_3, 16
	loop 1, @loop_5

@loop_6:
	rest 8
	note Ab3, 8
	note Ab3, 4
	dotted_note_set
	note A_3, 8
	triplet_note_set
	note B_3, 16
	triplet_note_set
	note A_3, 16
	triplet_note_set
	note Ab3, 16
	loop 1, @loop_6

@loop_7:
	rest 8
	note Gb3, 8
	note Gb3, 4
	dotted_note_set
	note Ab3, 8
	triplet_note_set
	note A_3, 16
	triplet_note_set
	note Ab3, 16
	triplet_note_set
	note Gb3, 16
	loop 1, @loop_7

@loop_8:
	rest 8
	note F_3, 8
	note F_3, 4
	dotted_note_set
	note Gb3, 8
	triplet_note_set
	note Ab3, 16
	triplet_note_set
	note Gb3, 16
	triplet_note_set
	note F_3, 16
	loop 1, @loop_8
	volume 7

@loop_9:
	note Gb3, 8
	loop 7, @loop_9
	note Ab3, 64

@loop_10:
	note B_3, 8
	loop 3, @loop_10

@loop_11:
	note C_4, 8
	loop 3, @loop_11
	note Db4, 32
	note Ab2, 4
	note D_3, 4
	note Gb3, 4
	note B_3, 4
	note Db3, 4
	note Ab3, 4
	note D_4, 4
	note Db4, 4
	loop 0, @loop_12
	music_end

music_wily1_2_triangle:
	tempo 6

@loop_12:
	base_note F_2
	triangle_note_length $71

@loop_1:
	note Gb3, 8
	note Gb3, 8
	note Gb3, 8
	note Gb3, 8
	rest 8
	note Gb3, 8
	note Gb3, 8
	note Gb3, 8
	loop 1, @loop_1

@loop_2:
	note E_3, 8
	note E_3, 8
	note E_3, 8
	note E_3, 8
	rest 8
	note E_3, 8
	note E_3, 8
	note E_3, 8
	loop 1, @loop_2

@loop_3:
	note D_3, 8
	note D_3, 8
	note D_3, 8
	note D_3, 8
	rest 8
	note D_3, 8
	note D_3, 8
	note D_3, 8
	loop 1, @loop_3

@loop_4:
	note Db3, 8
	note Db3, 8
	note Db3, 8
	note Db3, 8
	rest 8
	note Db3, 8
	note Db3, 8
	note Db3, 8
	loop 1, @loop_4

@loop_5:
	note Gb3, 8
	loop 15, @loop_5

@loop_6:
	note E_3, 8
	loop 15, @loop_6

@loop_7:
	note D_3, 8
	loop 15, @loop_7

@loop_8:
	note Db3, 8
	loop 15, @loop_8

@loop_9:
	note C_3, 8
	loop 7, @loop_9

@loop_10:
	note Db3, 8
	loop 7, @loop_10

@loop_11:
	note Ab2, 8
	loop 7, @loop_11
	base_note E_2
	pitch_envelope $0E
	triangle_note_length $09
	note C_4, 4
	rest 8
	note C_4, 4
	note C_4, 8
	note C_4, 4
	note C_4, 4
	note Bb3, 4
	note Bb3, 4
	rest 4
	note F_3, 4
	note F_3, 4
	rest 4
	note C_3, 4
	note C_3, 4
	base_note F_2
	pitch_envelope $00
	triangle_note_length $71
	loop 0, @loop_12
	music_end

music_wily1_2_noise:
	tempo 6

@loop_1:
	volume_envelope volume_decay, 2, 2
	volume 9
	rest 16
	noise_note 10, 8
	dotted_note_set
	rest 16
	noise_note 10, 8
	rest 8
	rest 16
	noise_note 10, 8
	dotted_note_set
	rest 16
	rest 4
	noise_note 10, 8
	noise_note 10, 4
	loop 0, @loop_1
	music_end

music_wily1_2_modulator:
	modulator_set 0, 0, 0, volume_decay, 0, 0
	modulator_set 3, 1, 1, volume_decay, 0, 0
	modulator_set 3, 2, 1, volume_decay, 0, 0
