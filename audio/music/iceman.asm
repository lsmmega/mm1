music_iceman:
	music_header
	.WORD music_iceman_pulse_1
	.WORD music_iceman_pulse_2
	.WORD music_iceman_triangle
	.WORD music_iceman_noise
	.WORD music_iceman_modulator

music_iceman_pulse_1:
	tempo 6
	duty_cycle 0
	volume 10
	rest 64

@loop_1:
	base_note Bb1
	volume_envelope volume_decay, 2, 6
	note C_4, 4
	note C_4, 4
	rest 8
	rest 16
	note C_4, 4
	note C_4, 8
	number_of_note_tied 2
	note Bb3, 4
	number_of_note_tied 2
	note Bb3, 16
	volume_envelope volume_decay, 2, 18
	modulator 2
	note Bb3, 64
	volume_envelope volume_decay, 2, 6
	modulator 0
	note C_4, 4
	note C_4, 4
	rest 8
	rest 16
	note C_4, 4
	note C_4, 8
	number_of_note_tied 2
	note Eb4, 4
	number_of_note_tied 2
	note Eb4, 16
	volume_envelope volume_decay, 2, 18
	modulator 2
	note Eb4, 64
	loop 1, @loop_1
	duty_cycle 2
	volume 8
	volume_envelope volume_decay, 4, 127
	rest 8
	number_of_note_tied 2
	note G_2, 8
	note G_2, 4
	dotted_note_set
	note Ab2, 8
	rest 8
	number_of_note_tied 2
	note A_2, 8
	note A_2, 4
	dotted_note_set
	note Bb2, 8
	rest 4
	dotted_note_set
	note B_2, 8
	note C_3, 8
	note Db3, 8
	note D_3, 8
	note Eb3, 8
	note E_3, 4
	dotted_note_set
	note F_3, 8

@loop_3:
	duty_cycle 0
	base_note Bb2
	volume 10
	volume_envelope volume_decay, 2, 6
	modulator 1
	note G_4, 8
	rest 4
	note G_4, 4
	note G_4, 4
	dotted_note_set
	note F_4, 8
	note G_4, 8
	note E_4, 8
	note G_4, 8
	note C_5, 8
	rest 8
	note Bb4, 8
	note Bb4, 4
	dotted_note_set
	note C_5, 8
	note Bb4, 2
	note C_5, 2
	number_of_note_tied 2
	note D_5, 2
	number_of_note_tied 2
	note D_5, 2
	triplet_note_set
	note D_5, 4
	triplet_note_set
	note Bb4, 16
	triplet_note_set
	note F_4, 16
	rest 8
	note G_4, 8
	note G_4, 4
	dotted_note_set
	note F_4, 8
	note G_4, 8
	note E_4, 8
	note G_4, 8
	note C_5, 8
	number_of_note_tied 2
	note Bb4, 16
	modulator 2
	dotted_note_set
	note Bb4, 32
	volume_envelope volume_decay, 2, 80
	modulator 1
	rest 8
	note Bb4, 8
	note Bb4, 4
	dotted_note_set
	note Ab4, 8
	note Bb4, 8
	note G_4, 8
	note Bb4, 8
	note Eb5, 8
	base_note Bb3
	rest 8
	note Db5, 8
	note Db5, 4
	dotted_note_set
	note Eb5, 8
	note Db5, 2
	note D_5, 2
	number_of_note_tied 2
	note F_5, 2
	number_of_note_tied 2
	note F_5, 2
	triplet_note_set
	note F_5, 4
	triplet_note_set
	note Db5, 16
	triplet_note_set
	note Ab4, 16
	base_note Bb2
	rest 8
	note Bb4, 8
	note Bb4, 4
	dotted_note_set
	note Ab4, 8
	note Bb4, 8
	note G_4, 8
	note Bb4, 8
	note Eb5, 8
	base_note Bb3
	note F_5, 32
	note G_5, 32
	base_note Bb1

@loop_2:
	modulator 0
	duty_cycle 0
	volume 8
	volume_envelope volume_decay, 2, 6
	note C_4, 4
	note C_4, 4
	rest 8
	rest 16
	note C_4, 4
	note C_4, 8
	number_of_note_tied 2
	note Bb3, 4
	number_of_note_tied 2
	note Bb3, 16
	modulator 1
	note Bb3, 64
	modulator 0
	note C_4, 4
	note C_4, 4
	rest 8
	rest 16
	note C_4, 4
	note C_4, 8
	number_of_note_tied 2
	note Eb4, 4
	number_of_note_tied 2
	note Eb4, 16
	modulator 1
	note Eb4, 64
	modulator 0
	loop 1, @loop_2
	loop 0, @loop_3

music_iceman_pulse_2:
	tempo 6
	base_note Bb1
	volume 8
	duty_cycle 1
	volume_envelope volume_decay, 1, 15
	rest 64

@loop_1:
	note C_3, 4
	note E_3, 4
	note F_3, 4
	note Gb3, 4
	note G_3, 4
	note Gb3, 4
	note F_3, 4
	note E_3, 4
	note C_3, 4
	note E_3, 4
	note F_3, 4
	note Gb3, 4
	note G_3, 4
	note Gb3, 4
	note F_3, 4
	note E_3, 4
	note Bb2, 4
	note D_3, 4
	note Eb3, 4
	note E_3, 4
	note F_3, 4
	note E_3, 4
	note Eb3, 4
	note D_3, 4
	note Bb2, 4
	note D_3, 4
	note Eb3, 4
	note E_3, 4
	note F_3, 4
	note E_3, 4
	note Eb3, 4
	note D_3, 4
	loop 3, @loop_1
	duty_cycle 3
	volume 8
	volume_envelope volume_decay, 4, 127
	rest 8
	number_of_note_tied 2
	note E_3, 8
	note E_3, 4
	dotted_note_set
	note F_3, 8
	rest 8
	number_of_note_tied 2
	note Gb3, 8
	note Gb3, 4
	dotted_note_set
	note G_3, 8
	rest 4
	dotted_note_set
	note Ab3, 8
	note A_3, 8
	note Bb3, 8
	note B_3, 8
	note C_4, 8
	note Db4, 4
	dotted_note_set
	note D_4, 8

@loop_3:
	duty_cycle 0
	base_note Bb2
	volume 5
	volume_envelope volume_decay, 2, 6
	modulator 1
	rest 8
	note G_4, 8
	rest 4
	note G_4, 4
	note G_4, 4
	dotted_note_set
	note F_4, 8
	note G_4, 8
	note E_4, 8
	note G_4, 8
	note C_5, 8
	rest 8
	note Bb4, 8
	note Bb4, 4
	dotted_note_set
	note C_5, 8
	note Bb4, 2
	note C_5, 2
	number_of_note_tied 2
	note D_5, 2
	number_of_note_tied 2
	note D_5, 2
	triplet_note_set
	note D_5, 4
	triplet_note_set
	note Bb4, 16
	triplet_note_set
	note F_4, 16
	rest 8
	note G_4, 8
	note G_4, 4
	dotted_note_set
	note F_4, 8
	note G_4, 8
	note E_4, 8
	note G_4, 8
	note C_5, 8
	number_of_note_tied 2
	note Bb4, 16
	modulator 2
	dotted_note_set
	note Bb4, 32
	volume_envelope volume_decay, 2, 80
	modulator 1
	rest 8
	note Bb4, 8
	note Bb4, 4
	dotted_note_set
	note Ab4, 8
	note Bb4, 8
	note G_4, 8
	note Bb4, 8
	note Eb5, 8
	base_note Bb3
	rest 8
	note Db5, 8
	note Db5, 4
	dotted_note_set
	note Eb5, 8
	note Db5, 2
	note D_5, 2
	number_of_note_tied 2
	note F_5, 2
	number_of_note_tied 2
	note F_5, 2
	triplet_note_set
	note F_5, 4
	triplet_note_set
	note Db5, 16
	triplet_note_set
	note Ab4, 16
	base_note Bb2
	rest 8
	note Bb4, 8
	note Bb4, 4
	dotted_note_set
	note Ab4, 8
	note Bb4, 8
	note G_4, 8
	note Bb4, 8
	note Eb5, 8
	base_note Bb3
	dotted_note_set
	note F_5, 16
	base_note Bb2
	note G_3, 4
	note A_3, 4
	note B_3, 4
	note D_4, 4
	note G_4, 4
	note A_4, 4
	note B_4, 4
	note D_5, 4

@loop_2:
	base_note Bb1
	modulator 0
	duty_cycle 0
	volume 5
	volume_envelope volume_decay, 2, 6
	note G_3, 4
	note G_3, 4
	rest 8
	rest 16
	note G_3, 4
	note G_3, 8
	number_of_note_tied 2
	note F_3, 4
	number_of_note_tied 2
	note F_3, 16
	note F_3, 64
	note G_3, 4
	note G_3, 4
	rest 8
	rest 16
	note G_3, 4
	note G_3, 8
	number_of_note_tied 2
	note Bb3, 4
	number_of_note_tied 2
	note Bb3, 16
	note Bb3, 64
	loop 1, @loop_2
	loop 0, @loop_3
	music_end

music_iceman_triangle:
	tempo 6
	triangle_note_length $09
	pitch_envelope $0F
	base_note B_2
	note G_4, 4
	note G_4, 4
	rest 4
	note C_4, 4
	note C_4, 4
	rest 4
	note G_3, 4
	note G_3, 4
	note F_3, 4
	note F_3, 4
	note F_3, 4
	note F_3, 4
	note C_3, 4
	note C_3, 4
	note C_3, 4
	note C_3, 4

@loop_1:
	base_note Bb1
	pitch_envelope $00
	triangle_note_length $30
	note C_3, 8
	note C_3, 8
	rest 4
	note C_3, 8
	note C_3, 4
	note C_3, 16
	rest 16
	note Bb2, 8
	note Bb2, 8
	rest 4
	note Bb2, 8
	note Bb2, 4
	note Bb2, 16
	rest 16
	loop 3, @loop_1
	triangle_note_length $81
	dotted_note_set
	note C_3, 16
	note G_2, 8
	dotted_note_set
	note C_3, 16
	note G_2, 8
	note C_3, 16
	triangle_note_length $09
	base_note B_2
	pitch_envelope $0F
	note F_4, 4
	note F_4, 4
	note F_4, 4
	note F_4, 4
	note C_4, 4
	note C_4, 4
	note C_4, 4
	note C_4, 4
	note G_3, 4
	note G_3, 4
	note G_3, 4
	note G_3, 4

@loop_2:
	pitch_envelope $00
	triangle_note_length $30
	base_note Bb1
	note C_3, 8
	note C_3, 8
	rest 4
	note C_3, 8
	note C_3, 4
	note C_3, 16
	rest 16
	note Bb2, 8
	note Bb2, 8
	rest 4
	note Bb2, 8
	note Bb2, 4
	note Bb2, 16
	rest 16
	loop 1, @loop_2
	base_note Bb1
	note Eb3, 8
	note Eb3, 8
	rest 4
	note Eb3, 8
	note Eb3, 4
	note Eb3, 16
	rest 16
	note Db3, 8
	note Db3, 8
	rest 4
	note Db3, 8
	note Db3, 4
	note Db3, 16
	rest 16
	note Eb3, 8
	note Eb3, 8
	rest 4
	note Eb3, 8
	note Eb3, 4
	note Eb3, 16
	rest 16
	note Db3, 8
	note Db3, 8
	rest 4
	note Db3, 8
	note Db3, 4
	note Gb2, 16
	rest 16

@loop_3:
	note C_3, 8
	rest 8
	note C_3, 8
	rest 8
	note C_3, 8
	rest 8
	note C_3, 8
	rest 8
	note Bb2, 8
	rest 8
	note Bb2, 8
	rest 8
	note Bb2, 8
	rest 8
	note Bb2, 8
	rest 8
	loop 2, @loop_3
	note C_3, 8
	rest 8
	note C_3, 8
	rest 8
	note C_3, 8
	rest 8
	note C_3, 8
	rest 8
	note Bb2, 8
	rest 8
	triangle_note_length $09
	base_note B_2
	pitch_envelope $0F
	note F_4, 4
	note F_4, 4
	note F_4, 4
	note F_4, 4
	note C_4, 4
	note C_4, 4
	note C_4, 4
	note C_4, 4
	note G_3, 4
	note G_3, 4
	note G_3, 4
	note G_3, 4
	loop 0, @loop_2
	music_end

music_iceman_noise:
	tempo 6
	volume 9
	volume_envelope volume_decay, 1, 1
	rest 64

@loop_1:
	dotted_note_set
	rest 32
	noise_note 10, 8
	rest 8
	dotted_note_set
	rest 32
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	loop 3, @loop_1
	rest 16
	noise_note 10, 8
	rest 16
	noise_note 10, 8
	rest 4
	noise_note 10, 8
	noise_note 10, 4
	rest 16
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4

@loop_2:
	volume 7
	volume_envelope volume_decay, 2, 2
	dotted_note_set
	rest 32
	noise_note 10, 8
	rest 8
	dotted_note_set
	rest 32
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	loop 0, @loop_2

music_iceman_modulator:
	modulator_set 7, 0, 0, volume_decay, 0, 0
	modulator_set 1, 2, 2, volume_decay, 0, 0
	modulator_set 2, 1, 1, volume_decay, 0, 0
