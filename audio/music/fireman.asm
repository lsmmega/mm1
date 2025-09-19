music_fireman:
	music_header
	.WORD music_fireman_pulse_1
	.WORD music_fireman_pulse_2
	.WORD music_fireman_triangle
	.WORD music_fireman_noise
	.WORD music_fireman_modulator

music_fireman_pulse_1:
	tempo 6
	volume 8
	duty_cycle 3
	base_note C_2
	volume_envelope volume_decay, 1, 63
	rest 64
	rest 64
	rest 32
	rest 16
	note Db3, 16

@loop_1:
	volume 8
	duty_cycle 3
	base_note C_2
	volume_envelope volume_decay, 1, 63
	note Gb3, 32
	note E_3, 4
	note Gb3, 8
	number_of_note_tied 2
	note E_3, 4
	note E_3, 4
	note Db3, 8
	note B_2, 4
	dotted_note_set
	note Db3, 32
	note Db3, 16
	note Gb3, 32
	note E_3, 4
	note Gb3, 8
	number_of_note_tied 2
	note Ab3, 4
	note Ab3, 4
	note Gb3, 8
	note E_3, 4
	note Gb3, 32
	note F_3, 2
	note Gb3, 2
	note G_3, 2
	note Ab3, 2
	note A_3, 2
	note Bb3, 2
	note B_3, 2
	note C_4, 2
	note Db4, 16
	base_note C_3
	note Gb4, 32
	note E_4, 4
	note Gb4, 8
	number_of_note_tied 2
	note E_4, 4
	note E_4, 4
	note Db4, 8
	note B_3, 4
	dotted_note_set
	note Db4, 32
	note Db4, 16
	note Gb4, 32
	note E_4, 4
	note Gb4, 8
	number_of_note_tied 2
	note Ab4, 4
	note Ab4, 4
	note Gb4, 8
	note E_4, 4
	note Gb4, 64
	base_note C_2
	volume 10
	duty_cycle 1
	volume_envelope volume_decay, 2, 6
	dotted_note_set
	note D_4, 16
	note Db4, 8
	note B_3, 8
	note Ab3, 8
	note A_3, 8
	note B_3, 8
	dotted_note_set
	note Db4, 16
	note B_3, 8
	note A_3, 8
	note Gb3, 8
	note Ab3, 8
	note A_3, 8
	dotted_note_set
	note B_3, 16
	note A_3, 8
	note Ab3, 8
	note F_3, 8
	note Gb3, 8
	note Ab3, 8
	rest 4
	note A_3, 4
	rest 4
	number_of_note_tied 2
	note B_3, 4
	note B_3, 16
	rest 4
	note C_4, 4
	rest 4
	number_of_note_tied 2
	note Db4, 4
	note Db4, 16
	dotted_note_set
	note D_4, 16
	note Db4, 8
	note B_3, 8
	note Ab3, 8
	note E_4, 4
	dotted_note_set
	note D_4, 8
	dotted_note_set
	note Db4, 16
	note B_3, 8
	note A_3, 8
	note Gb3, 8
	note D_4, 4
	dotted_note_set
	note Db4, 8
	dotted_note_set
	note B_3, 16
	note A_3, 4
	note B_3, 4
	dotted_note_set
	note C_4, 16
	note Bb3, 4
	note C_4, 4
	rest 4
	note Db4, 4
	rest 4
	number_of_note_tied 2
	note D_4, 4
	note D_4, 16
	note D_4, 4
	rest 4
	note Eb4, 4
	rest 4
	note E_4, 4
	dotted_note_set
	note F_4, 8
	loop 0, @loop_1
	music_end

music_fireman_pulse_2:
	tempo 6
	duty_cycle 3
	volume 5
	volume_envelope volume_decay, 3, 6
	rest 64
	base_note C_2

@loop_1:
	rest 8
	note A_3, 4
	rest 8
	rest 4
	note A_3, 4
	rest 8
	rest 4
	note A_3, 4
	rest 8
	rest 4
	note A_3, 4
	rest 4
	loop 1, @loop_1

@loop_2:
	base_note C_2
	volume 5
	volume_envelope volume_decay, 3, 6
	rest 8
	note A_3, 4
	rest 8
	rest 4
	note A_3, 4
	rest 8
	rest 4
	note A_3, 4
	rest 8
	rest 4
	note A_3, 4
	rest 4
	loop 7, @loop_2
	volume 5
	volume_envelope volume_decay, 1, 3
	note B_3, 16
	note B_3, 4
	dotted_note_set
	note A_3, 8
	note Ab3, 16
	note E_3, 16
	note A_3, 16
	note A_3, 4
	dotted_note_set
	note Ab3, 8
	note Gb3, 16
	note D_3, 16
	note Ab3, 16
	note Ab3, 4
	dotted_note_set
	note Gb3, 8
	note F_3, 16
	note Db3, 16
	rest 4
	note Db3, 4
	rest 4
	number_of_note_tied 2
	note D_3, 4
	note D_3, 16
	rest 4
	note Eb3, 4
	rest 4
	number_of_note_tied 2
	note E_3, 4
	note E_3, 16
	note B_3, 4
	note Db4, 4
	note B_3, 4
	note Db4, 4
	note B_3, 4
	note Db4, 4
	note B_3, 4
	note Db4, 4
	triplet_note_set
	note E_4, 16
	triplet_note_set
	note Ab3, 16
	triplet_note_set
	note E_3, 16
	note A_3, 4
	note B_3, 4
	note A_3, 4
	note B_3, 4
	note A_3, 4
	note B_3, 4
	note A_3, 4
	note B_3, 4
	triplet_note_set
	note D_4, 16
	triplet_note_set
	note Gb3, 16
	triplet_note_set
	note D_3, 16
	note Ab3, 4
	note A_3, 4
	note Ab3, 4
	note A_3, 4
	note Ab3, 4
	note A_3, 4
	note Ab3, 4
	note A_3, 4
	note Bb3, 4
	note B_3, 4
	note Bb3, 4
	note B_3, 4
	note Bb3, 4
	note B_3, 4
	note Bb3, 4
	note B_3, 4
	rest 4
	note F_3, 4
	rest 4
	number_of_note_tied 2
	note Gb3, 4
	note Gb3, 16
	note Gb3, 4
	rest 4
	note G_3, 4
	rest 4
	note Ab3, 4
	dotted_note_set
	note B_3, 8
	loop 0, @loop_2
	music_end

music_fireman_triangle:
	tempo 6
	pitch_envelope $0F
	base_note Db3
	triangle_note_length $09
	note D_5, 4
	note D_5, 4
	note D_5, 4
	note D_5, 4
	note G_4, 4
	note G_4, 4
	note G_4, 4
	note G_4, 4
	note D_4, 4
	note D_4, 4
	note D_4, 4
	note D_4, 4
	note A_3, 4
	note A_3, 4
	note A_3, 4
	note A_3, 4

@loop_1:
	pitch_envelope $00
	triangle_note_length $60
	base_note C_2
	note Gb2, 8
	note Gb3, 4
	number_of_note_tied 2
	note F_2, 4
	note F_2, 4
	note F_2, 4
	note Gb3, 4
	note F_2, 4
	note E_2, 8
	note Gb3, 4
	number_of_note_tied 2
	note F_2, 4
	note F_2, 4
	note F_2, 4
	note Gb3, 4
	note F_2, 4
	loop 1, @loop_1

@loop_2:
	triangle_note_length $60
	base_note C_2
	note Gb2, 8
	note Gb3, 4
	number_of_note_tied 2
	note F_2, 4
	note F_2, 4
	note F_2, 4
	note Gb3, 4
	note F_2, 4
	note E_2, 8
	note Gb3, 4
	number_of_note_tied 2
	note F_2, 4
	note F_2, 4
	note F_2, 4
	note Gb3, 4
	note F_2, 4
	loop 7, @loop_2
	triangle_note_length $81
	note B_2, 8
	note B_2, 8
	rest 4
	note B_2, 8
	note B_2, 4
	note E_3, 16
	note E_2, 16
	note A_2, 8
	note A_2, 8
	rest 4
	note A_2, 8
	note A_2, 4
	note D_3, 16
	note D_2, 16
	note Ab2, 8
	note Ab2, 8
	rest 4
	note Ab2, 8
	note Ab2, 4
	note Db3, 16
	note Db2, 16
	note Gb2, 32
	note Gb2, 32
	note B_2, 8
	note B_2, 8
	rest 4
	note B_2, 8
	note B_2, 4
	note E_3, 16
	note Gb3, 8
	note Ab3, 8
	note A_2, 8
	note A_2, 8
	rest 4
	note A_2, 8
	note A_2, 4
	note D_3, 16
	note E_3, 8
	note Gb3, 8
	note Ab2, 8
	note Ab2, 8
	rest 4
	note Ab2, 8
	note Ab2, 4
	note Ab2, 8
	note Ab2, 8
	rest 4
	note Ab2, 8
	note Ab2, 4
	note Db2, 64
	triangle_note_length $60
	loop 0, @loop_2
	music_end

music_fireman_noise:
	tempo 6
	volume_envelope volume_decay, 1, 1
	rest 64

@loop_1:
	noise_duty_cycle 1
	volume_envelope volume_decay, 3, 3
	volume 7
	noise_note 9, 4
	rest 4
	noise_note 9, 4
	rest 4
	noise_note 9, 4
	noise_duty_cycle 0
	volume_envelope volume_decay, 1, 1
	noise_note 10, 8
	volume_envelope volume_decay, 3, 3
	noise_duty_cycle 1
	noise_note 9, 4
	noise_note 9, 4
	noise_note 9, 4
	rest 4
	noise_note 9, 4
	rest 4
	rest 4
	volume_envelope volume_decay, 1, 1
	noise_duty_cycle 0
	noise_note 10, 8
	noise_duty_cycle 1
	volume_envelope volume_decay, 3, 3
	noise_note 9, 4
	rest 4
	noise_note 9, 4
	rest 4
	noise_note 9, 4
	noise_duty_cycle 0
	volume_envelope volume_decay, 1, 1
	noise_note 10, 8
	volume_envelope volume_decay, 3, 3
	noise_duty_cycle 1
	noise_note 9, 4
	noise_note 9, 4
	noise_note 9, 4
	rest 4
	noise_note 9, 4
	noise_duty_cycle 0
	volume_envelope volume_decay, 1, 1
	noise_note 10, 8
	noise_note 10, 4
	noise_note 10, 4
	loop 0, @loop_1

music_fireman_modulator:
	modulator_set 7, 0, 0, volume_decay, 0, 0
