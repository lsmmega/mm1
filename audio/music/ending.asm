music_ending:
	music_header
	.WORD music_ending_pulse_1
	.WORD music_ending_pulse_2
	.WORD music_ending_triangle
	.WORD music_ending_noise
	.WORD music_ending_modulator

music_ending_pulse_1:
	tempo 8

@loop_1:
	base_note Ab3
	duty_cycle 3
	volume 14
	volume_envelope volume_decay, 4, 95
	modulator 0
	number_of_note_tied 2
	note Bb4, 16
	modulator 1
	dotted_note_set
	note Bb4, 32
	modulator 0
	number_of_note_tied 2
	note B_4, 32
	note B_4, 8
	dotted_note_set
	note Db5, 16
	loop 1, @loop_1
	note Bb4, 16
	note Db5, 16
	note Ab5, 16
	note F_5, 8
	note Gb5, 8
	rest 16
	rest 8
	note Gb5, 8
	note F_5, 8
	note Eb5, 8
	note Db5, 8
	note Eb5, 8
	rest 8
	note Bb4, 8
	note Ab4, 8
	note Gb4, 8
	rest 8
	note Gb4, 8
	note F_4, 8
	note Gb4, 8
	number_of_note_tied 2
	note Db5, 16
	modulator 1
	dotted_note_set
	note Db5, 32
	modulator 0
	dotted_note_set
	note Eb5, 16
	dotted_note_set
	note Db5, 16
	note B_4, 16
	dotted_note_set
	note F_5, 16
	dotted_note_set
	note Eb5, 16
	note Db5, 16
	dotted_note_set
	note F_5, 16
	dotted_note_set
	note Eb5, 16
	note D_5, 16
	dotted_note_set
	note Gb5, 16
	dotted_note_set
	note F_5, 16
	note Eb5, 16
	tempo 6
	note Ab4, 2
	note B_4, 2
	note Db5, 2
	number_of_note_tied 2
	note Gb5, 2
	number_of_note_tied 2
	note Gb5, 8
	dotted_note_set
	note Gb5, 32
	base_note Ab2
	duty_cycle 2
	volume 14
	volume_envelope volume_decay, 2, 6
	modulator 1

@loop_2:
	note Bb3, 8
	rest 16
	note Db3, 8
	dotted_note_set
	rest 8
	note Db3, 4
	note Gb3, 4
	dotted_note_set
	note Bb3, 8
	note B_3, 8
	rest 8
	rest 16
	dotted_note_set
	note B_3, 16
	note C_4, 4
	note Db4, 4
	loop 1, @loop_2
	note Bb3, 16
	note Db4, 16
	note F_4, 16
	note Gb4, 8
	note Eb4, 8
	rest 8
	note Bb3, 8
	note Ab3, 8
	note Gb3, 8
	rest 8
	note Gb3, 8
	note F_3, 8
	note Gb3, 8
	note B_3, 2
	note C_4, 2
	number_of_note_tied 2
	note Db4, 4
	number_of_note_tied 2
	note Db4, 8
	modulator 2
	dotted_note_set
	note Db4, 32
	modulator 1
	duty_cycle 0
	volume_envelope volume_decay, 1, 127
	rest 8
	note Eb4, 8
	note Eb4, 8
	note Db4, 8
	rest 32
	duty_cycle 2
	volume_envelope volume_decay, 2, 6

@loop_3:
	note Bb3, 8
	rest 16
	note Db3, 8
	dotted_note_set
	rest 8
	note Db3, 4
	note Gb3, 4
	dotted_note_set
	note Bb3, 8
	note B_3, 8
	rest 8
	rest 16
	dotted_note_set
	note B_3, 16
	note C_4, 4
	note Db4, 4
	loop 1, @loop_3
	note Bb3, 16
	note Db4, 16
	note F_4, 16
	note Gb4, 8
	note Eb4, 8
	rest 32
	rest 8
	note F_4, 8
	note Eb4, 8
	note F_4, 8
	note Eb4, 2
	note F_4, 2
	number_of_note_tied 2
	note Gb4, 4
	number_of_note_tied 2
	note Gb4, 8
	modulator 2
	dotted_note_set
	note Gb4, 32
	modulator 1
	duty_cycle 0
	volume_envelope volume_decay, 1, 127
	rest 8
	note B_3, 8
	note B_3, 8
	note Bb3, 8
	rest 32
	duty_cycle 2
	volume_envelope volume_decay, 2, 127
	dotted_note_set
	note Gb3, 32
	note A_3, 16
	dotted_note_set
	note Ab3, 32
	note Gb3, 16
	note E_3, 64
	rest 64
	dotted_note_set
	note Gb3, 32
	note A_3, 16
	note Ab3, 32
	triplet_note_set
	rest 16
	triplet_note_set
	note A_3, 16
	triplet_note_set
	note B_3, 16
	number_of_note_tied 2
	note Db4, 64
	modulator 2
	note Db4, 64
	modulator 1
	note D_4, 32
	triplet_note_set
	rest 16
	triplet_note_set
	note Db4, 16
	triplet_note_set
	note D_4, 16
	number_of_note_tied 2
	note B_3, 16
	modulator 2
	note B_3, 16
	rest 32
	modulator 1
	note E_4, 32
	triplet_note_set
	rest 16
	triplet_note_set
	note D_4, 16
	triplet_note_set
	note E_4, 16
	number_of_note_tied 2
	note Db4, 16
	modulator 2
	dotted_note_set
	note Db4, 32
	modulator 0
	number_of_note_tied 2
	note Gb4, 16
	modulator 3
	dotted_note_set
	note Gb4, 32
	modulator 0
	number_of_note_tied 2
	note F_4, 16
	modulator 3
	dotted_note_set
	note F_4, 32
	modulator 0
	number_of_note_tied 2
	note E_4, 16
	modulator 3
	dotted_note_set
	note E_4, 32
	modulator 1
	rest 32
	rest 16
	triplet_note_set
	note E_4, 8
	triplet_note_set
	note Gb4, 8
	triplet_note_set
	note Ab4, 8
	duty_cycle 1
	volume_envelope volume_decay, 15, 111
	base_note Ab1
	note A_3, 8
	rest 8
	note Db3, 8
	number_of_note_tied 3
	note B_2, 8
	note B_2, 32
	modulator 3
	note B_2, 64
	modulator 1
	rest 16
	note Db3, 8
	note B_2, 16
	note E_3, 16
	number_of_note_tied 2
	note D_3, 8
	note D_3, 64
	rest 16
	note Db3, 8
	number_of_note_tied 3
	note B_2, 8
	note B_2, 32
	modulator 3
	note B_2, 64
	modulator 1
	rest 16
	note Db3, 8
	note B_2, 16
	dotted_note_set
	note E_3, 16
	number_of_note_tied 2
	note Ab3, 64
	volume 10
	modulator 2
	tempo 8
	note Ab3, 64
	music_end

music_ending_pulse_2:
	tempo 8
	duty_cycle 3
	volume 10
	volume_envelope volume_decay, 3, 10
	modulator 2
	base_note Ab2

@loop_1:
	rest 8
	note Db4, 8
	note Gb4, 8
	note Ab4, 8
	note Bb4, 32
	rest 8
	note D_4, 8
	note Gb4, 8
	note Ab4, 8
	note B_4, 32
	loop 1, @loop_1
	note Gb4, 8
	note Db4, 8
	note Gb4, 8
	note Bb4, 8
	note F_4, 8
	note Db4, 8
	note F_4, 8
	note Ab4, 8
	note Eb4, 8
	note Bb3, 8
	note Eb4, 8
	note Gb4, 8
	note Db4, 8
	note Ab3, 8
	note Db4, 8
	note Gb4, 8

@loop_2:
	note C_4, 8
	note Ab3, 8
	note C_4, 8
	note Eb4, 8
	loop 1, @loop_2
	note Db4, 32
	note Db4, 8
	dotted_note_set
	note C_4, 16
	note B_3, 8
	note Gb3, 8
	note B_3, 8
	note Db4, 8
	note Eb4, 32
	note Db4, 8
	note Ab3, 8
	note Db4, 8
	note Eb4, 8
	note F_4, 32
	note D_4, 8
	note Bb3, 8
	note D_4, 8
	note Eb4, 8
	note F_4, 32
	note Eb4, 8
	note Bb3, 8
	note Eb4, 8
	note F_4, 8
	note Gb4, 32
	tempo 6
	note Db4, 2
	note Gb4, 2
	note Ab4, 2
	number_of_note_tied 3
	note B_4, 2
	note B_4, 8
	dotted_note_set
	note B_4, 32
	duty_cycle 2
	volume_envelope volume_decay, 2, 127

@loop_3:
	note Gb3, 8
	rest 16
	note Bb2, 8
	dotted_note_set
	rest 8
	note Bb2, 4
	note Db3, 4
	dotted_note_set
	note Gb3, 8
	note D_3, 8
	rest 8
	rest 16
	dotted_note_set
	note D_3, 16
	note D_3, 4
	note Ab3, 4
	loop 1, @loop_3
	note Gb3, 16
	note Bb3, 16
	note Bb3, 8
	note Bb3, 16
	note Bb3, 8
	rest 8
	note Db3, 8
	note Db3, 8
	note Db3, 8
	rest 8
	note C_3, 8
	note C_3, 8
	note C_3, 8
	note Db3, 2
	note D_3, 2
	note Eb3, 2
	number_of_note_tied 3
	note F_3, 2
	note F_3, 8
	dotted_note_set
	note F_3, 32
	duty_cycle 0
	volume_envelope volume_decay, 1, 127
	rest 8
	note Gb3, 8
	note Gb3, 8
	note F_3, 8
	rest 32
	duty_cycle 2
	volume_envelope volume_decay, 2, 127

@loop_4:
	note Gb3, 8
	rest 16
	note Bb2, 8
	dotted_note_set
	rest 8
	note Bb2, 4
	note Db3, 4
	dotted_note_set
	note Gb3, 8
	note D_3, 8
	rest 8
	rest 16
	dotted_note_set
	note D_3, 16
	note D_3, 4
	note Ab3, 4
	loop 1, @loop_4
	note Gb3, 16
	note Gb3, 16
	note Db4, 8
	note Eb4, 16
	note B_3, 8
	rest 32
	rest 8
	note Db4, 8
	note Db4, 8
	note B_3, 8
	note G_3, 2
	note Ab3, 2
	note A_3, 2
	number_of_note_tied 3
	note Bb3, 2
	note Bb3, 8
	dotted_note_set
	note Bb3, 32
	duty_cycle 0
	volume_envelope volume_decay, 1, 127
	rest 8
	note D_3, 8
	note D_3, 8
	note Db3, 8
	rest 32
	duty_cycle 3
	volume_envelope volume_decay, 4, 74
	base_note Ab1
	note A_2, 4
	note B_2, 4
	number_of_note_tied 2
	note D_3, 8
	dotted_note_set
	note D_3, 32
	note B_2, 4
	note D_3, 4
	number_of_note_tied 2
	note E_3, 8
	dotted_note_set
	note E_3, 32
	note Ab2, 4
	note B_2, 4
	number_of_note_tied 2
	note Db3, 8
	dotted_note_set
	note Db3, 32
	volume 14
	base_note Ab3
	note Gb5, 8
	note E_5, 8
	note Db5, 8
	note B_4, 8
	base_note Ab2
	note Gb4, 8
	note E_4, 8
	note Db4, 8
	note B_3, 8
	volume 10
	base_note Ab1
	note A_2, 4
	note B_2, 4
	number_of_note_tied 2
	note D_3, 8
	dotted_note_set
	note D_3, 32
	note B_2, 4
	note D_3, 4
	number_of_note_tied 2
	note E_3, 8
	dotted_note_set
	note E_3, 32
	base_note Ab2
	note B_3, 64
	note Bb3, 64
	note Gb3, 4
	note A_3, 4
	number_of_note_tied 2
	note B_3, 8
	note B_3, 16
	triplet_note_set
	rest 16
	triplet_note_set
	note A_3, 16
	triplet_note_set
	note B_3, 16
	note Ab3, 64
	note G_3, 4
	note B_3, 4
	number_of_note_tied 2
	note Db4, 8
	note Db4, 16
	triplet_note_set
	rest 16
	triplet_note_set
	note B_3, 16
	triplet_note_set
	note Db4, 16
	modulator 1
	number_of_note_tied 2
	note Bb3, 16
	modulator 2
	dotted_note_set
	note Bb3, 32

@loop_5:
	modulator 0
	number_of_note_tied 2
	note D_4, 16
	modulator 3
	dotted_note_set
	note D_4, 32
	loop 1, @loop_5
	modulator 0
	number_of_note_tied 2
	note Ab3, 16
	modulator 3
	dotted_note_set
	note Ab3, 32
	modulator 0
	rest 32
	rest 16
	triplet_note_set
	note E_3, 8
	triplet_note_set
	note Eb3, 8
	triplet_note_set
	note B_2, 8
	note A_2, 8
	duty_cycle 1
	volume_envelope volume_decay, 15, 111
	base_note Ab1
	volume 9
	rest 8
	note A_2, 8
	number_of_note_tied 3
	note G_2, 8
	note G_2, 32
	modulator 3
	note G_2, 64
	modulator 1
	rest 16
	note A_2, 8
	note G_2, 16
	note B_2, 16
	number_of_note_tied 2
	note A_2, 8
	note A_2, 64
	rest 16
	note A_2, 8
	number_of_note_tied 3
	note G_2, 8
	note G_2, 32
	modulator 3
	note G_2, 64
	modulator 1
	rest 16
	note A_2, 8
	note G_2, 16
	dotted_note_set
	note B_2, 16
	note A_2, 4
	note Db3, 4
	note E_3, 4
	note Ab3, 4
	note B_3, 32
	tempo 8
	duty_cycle 0
	volume 15
	base_note Ab4
	note A_5, 2
	note Db6, 2
	note E_6, 2
	note Ab6, 2
	volume 14
	note A_5, 2
	note Db6, 2
	note E_6, 2
	note Ab6, 2
	volume 12
	note A_5, 2
	note Db6, 2
	note E_6, 2
	note Ab6, 2
	volume 10
	note A_5, 2
	note Db6, 2
	note E_6, 2
	note Ab6, 2
	volume 9
	note A_5, 2
	note Db6, 2
	note E_6, 2
	note Ab6, 2
	volume 7
	note A_5, 2
	note Db6, 2
	note E_6, 2
	note Ab6, 2
	volume 5
	note A_5, 2
	note Db6, 2
	note E_6, 2
	note Ab6, 2
	volume 2
	note A_5, 2
	note Db6, 2
	note E_6, 2
	note Ab6, 2
	music_end

music_ending_triangle:
	tempo 8

@loop_1:
	triangle_note_length $81
	base_note Ab2
	dotted_note_set
	note Gb3, 16
	note Gb3, 8
	note Gb3, 16
	rest 16
	loop 3, @loop_1
	note Gb3, 32
	note F_3, 32
	note Eb3, 32
	note Db3, 32
	note C_3, 32
	note Eb3, 32
	dotted_note_set
	note Db3, 16
	note Db3, 8
	note Db3, 16
	rest 16
	dotted_note_set
	note B_2, 32
	note C_3, 16
	note Db3, 64
	dotted_note_set
	note Bb2, 32
	note D_3, 16
	note Eb3, 64
	tempo 6
	pitch_envelope $0F
	triangle_note_length $15
	base_note B_2
	rest 16
	note F_4, 4
	note F_4, 4
	rest 4
	note F_4, 4
	rest 4
	note C_4, 4
	note C_4, 4
	note C_4, 4
	note G_3, 4
	note G_3, 4
	rest 4
	note G_3, 4
	pitch_envelope $00
	triangle_note_length $4F
	base_note Ab2

@loop_2:
	note Gb3, 8
	note Gb3, 8
	rest 8
	note Gb3, 8
	note Gb3, 16
	rest 16
	loop 3, @loop_2
	note Gb3, 8
	note Gb3, 8
	rest 8
	note Gb3, 8
	note F_3, 16
	rest 16
	note Eb3, 8
	note Eb3, 8
	rest 8
	note Eb3, 8
	note Db3, 16
	rest 16
	note C_3, 8
	note C_3, 8
	rest 8
	note C_3, 8
	note C_3, 16
	rest 16
	note Db3, 8
	note Db3, 8
	rest 8
	note Db3, 8
	note Db3, 16
	rest 16

@loop_3:
	note Gb3, 8
	note Gb3, 8
	rest 8
	note Gb3, 8
	note Gb3, 16
	rest 16
	loop 3, @loop_3
	note Gb3, 8
	note Gb3, 8
	rest 8
	note Ab3, 8
	note Bb3, 16
	rest 16
	note B_3, 8
	note B_3, 8
	rest 8
	note C_4, 8
	note Db4, 16
	rest 16
	note Gb3, 8
	note Gb3, 8
	rest 8
	note Gb3, 8
	note Gb3, 16
	rest 16
	base_note B_2
	pitch_envelope $0F
	triangle_note_length $15
	note F_4, 4
	note F_4, 4
	note F_4, 4
	note F_4, 4
	rest 4
	note C_4, 4
	note C_4, 4
	note C_4, 4
	note G_3, 4
	note G_3, 4
	note G_3, 4
	note G_3, 4
	rest 4
	note F_3, 4
	note F_3, 4
	note F_3, 4
	base_note Ab2
	pitch_envelope $00
	triangle_note_length $7F
	note D_3, 8
	note D_3, 8
	rest 8
	note D_3, 8
	note D_3, 16
	rest 16
	note E_3, 8
	note E_3, 8
	rest 8
	note E_3, 8
	note E_3, 16
	rest 16

@loop_4:
	note A_2, 8
	note A_2, 8
	rest 8
	note A_2, 8
	note A_2, 16
	rest 16
	loop 1, @loop_4
	note D_3, 8
	note D_3, 8
	rest 8
	note D_3, 8
	note D_3, 16
	rest 16
	note E_3, 8
	note E_3, 8
	rest 8
	note E_3, 8
	note E_3, 16
	rest 16
	note Gb3, 8
	note Gb3, 8
	rest 8
	note Gb3, 8
	note Gb3, 16
	rest 16
	note E_3, 8
	note E_3, 8
	rest 8
	note E_3, 8
	note E_3, 16
	rest 16
	note B_2, 8
	note B_2, 8
	rest 8
	note B_2, 8
	note B_2, 16
	rest 16
	note E_3, 8
	note E_3, 8
	rest 8
	note E_3, 8
	note D_3, 8
	note D_3, 8
	rest 8
	note D_3, 8
	note Db3, 8
	note Db3, 8
	rest 8
	note Db3, 8
	note Db3, 16
	rest 16
	note Gb3, 8
	note Gb3, 8
	rest 8
	note Gb3, 8
	note Gb3, 16
	rest 16

@loop_5:
	note B_2, 8
	note B_2, 8
	rest 8
	note B_2, 8
	note B_2, 16
	rest 16
	loop 1, @loop_5
	note E_3, 8
	note E_3, 8
	rest 8
	note E_3, 8
	note E_3, 16
	rest 16
	base_note B_2
	pitch_envelope $0F
	triangle_note_length $15
	note F_4, 4
	note F_4, 4
	note F_4, 4
	note F_4, 4
	rest 4
	note C_4, 4
	note C_4, 4
	note C_4, 4
	note G_3, 4
	note G_3, 4
	note G_3, 4
	note G_3, 4
	rest 4
	note F_3, 4
	note F_3, 4
	note F_3, 4
	pitch_envelope $00
	triangle_note_length $81
	base_note Ab2

@loop_6:
	note A_3, 64
	note A_3, 8
	note E_3, 8
	note A_3, 8
	note E_3, 8
	note A_3, 8
	note E_3, 8
	note A_3, 4
	note E_3, 4
	note Gb3, 4
	note Ab3, 4
	note A_3, 64
	note A_3, 64
	loop 1, @loop_6
	music_end

music_ending_noise:
	tempo 8
	volume 12
	volume_envelope volume_decay, 1, 1

@loop_1:
	dotted_note_set
	rest 32
	noise_note 10, 8
	rest 8
	loop 11, @loop_1
	tempo 6
	rest 64

@loop_2:
	rest 16
	noise_note 10, 8
	rest 8
	rest 16
	noise_note 10, 8
	rest 8
	rest 16
	noise_note 10, 8
	rest 8
	rest 16
	noise_note 10, 8
	noise_note 10, 4
	noise_note 10, 4
	loop 6, @loop_2
	rest 16
	noise_note 10, 8
	rest 8
	rest 16
	noise_note 10, 8
	rest 8
	rest 64

@loop_3:
	rest 16
	noise_note 10, 8
	rest 8
	rest 16
	noise_note 10, 8
	rest 8
	rest 16
	noise_note 10, 8
	rest 8
	rest 16
	noise_note 10, 8
	noise_note 10, 4
	noise_note 10, 4
	loop 6, @loop_3
	rest 16
	noise_note 10, 8
	rest 8
	rest 16
	noise_note 10, 8
	rest 8
	rest 64

@loop_4:
	dotted_note_set
	rest 32
	noise_note 10, 8
	rest 8
	loop 5, @loop_4
	tempo 8
	dotted_note_set
	rest 32
	noise_note 10, 8
	rest 8
	music_end

music_ending_modulator:
	modulator_set 7, 0, 0, volume_decay, 0, 0
	modulator_set 1, 2, 2, volume_decay, 0, 0
	modulator_set 1, 1, 1, volume_decay, 0, 0
	modulator_set 3, 2, 1, volume_decay, 0, 0
