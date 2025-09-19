music_cutman: 
	music_header
	.WORD music_cutman_pulse_1
	.WORD music_cutman_pulse_2
	.WORD music_cutman_triangle
	.WORD music_cutman_noise
	.WORD music_cutman_modulator

music_cutman_pulse_1:
	tempo 6
	duty_cycle 1
	volume 10
	volume_envelope volume_decay, 4, 127
	base_note E_2
	note E_4, 8
	note E_4, 8
	note E_4, 8
	note E_4, 4
	note E_4, 4
	rest 4
	note E_4, 4
	note E_4, 4
	note E_4, 4
	note E_4, 8
	note E_4, 8
	note E_4, 8
	note E_4, 8
	note E_4, 4
	note E_4, 4
	note E_4, 4
	note E_4, 4
	note E_4, 4
	note E_4, 4
	note E_4, 4
	note E_4, 4
	note Gb4, 8
	note Ab4, 8

@loop_1:
	volume 9
	duty_cycle 1
	volume_envelope volume_decay, 4, 79
	base_note E_3
	note A_4, 2
	note A_5, 2
	rest 2
	volume 9
	note A_5, 2
	base_note E_2
	volume 10
	rest 16
	rest 8
	note B_3, 4
	note C_4, 4
	rest 4
	note D_4, 4
	rest 4
	note C_4, 4
	rest 4
	note B_3, 4
	rest 4
	note C_4, 4
	number_of_note_tied 2
	note E_3, 8
	modulator 1
	dotted_note_set
	note E_3, 32
	modulator 0
	base_note E_3
	note A_4, 2
	note A_5, 2
	rest 2
	volume 9
	note A_5, 2
	base_note E_2
	volume 10
	rest 16
	rest 8
	note B_3, 4
	note C_4, 4
	rest 4
	note D_4, 4
	rest 4
	note C_4, 4
	rest 4
	note B_3, 4
	rest 4
	note D_4, 4
	number_of_note_tied 2
	note E_4, 8
	modulator 1
	dotted_note_set
	note E_4, 32
	modulator 0
	note F_4, 4
	rest 4
	rest 8
	rest 16
	note F_4, 4
	note G_4, 4
	rest 4
	note F_4, 4
	rest 4
	note E_4, 4
	rest 4
	note D_4, 4
	note E_4, 4
	rest 4
	rest 8
	rest 16
	note E_4, 4
	note F_4, 4
	rest 4
	note E_4, 4
	rest 4
	note D_4, 4
	rest 4
	note C_4, 4
	note Eb4, 8
	rest 16
	number_of_note_tied 2
	note B_3, 8
	note B_3, 8
	note B_3, 8
	note Db4, 8
	note Eb4, 8
	note E_4, 64
	base_note E_3
	note A_4, 2
	note A_5, 2
	rest 2
	volume 9
	note A_5, 2
	volume 10
	base_note E_2
	rest 16
	rest 8
	note B_3, 4
	note C_4, 4
	rest 4
	note D_4, 4
	rest 4
	note C_4, 4
	rest 4
	note B_3, 4
	rest 4
	note C_4, 4
	number_of_note_tied 2
	note E_3, 8
	modulator 1
	dotted_note_set
	note E_3, 32
	modulator 0
	base_note E_3
	note A_4, 2
	note A_5, 2
	rest 2
	volume 7
	note A_5, 2
	volume 9
	base_note E_2
	rest 16
	rest 8
	note B_3, 4
	note C_4, 4
	rest 4
	note D_4, 4
	rest 4
	note C_4, 4
	rest 4
	note B_3, 4
	rest 4
	note D_4, 4
	number_of_note_tied 2
	note E_4, 8
	modulator 1
	dotted_note_set
	note E_4, 32
	modulator 0
	note F_4, 4
	rest 4
	rest 8
	rest 16
	note F_4, 4
	note G_4, 4
	rest 4
	note F_4, 4
	rest 4
	note E_4, 4
	rest 4
	note D_4, 4
	note E_4, 4
	rest 4
	rest 8
	rest 16
	note E_4, 4
	note F_4, 4
	rest 4
	note E_4, 4
	rest 4
	note D_4, 4
	rest 4
	note C_4, 4
	note B_3, 8
	rest 16
	note A_3, 16
	note Ab3, 8
	note Gb3, 8
	note Ab3, 8
	note A_3, 32
	base_note E_2
	modulator 1
	triplet_note_set
	note A_2, 2
	triplet_note_set
	note B_2, 2
	triplet_note_set
	note C_3, 2
	triplet_note_set
	note Db3, 2
	triplet_note_set
	note D_3, 2
	triplet_note_set
	note Eb3, 2
	triplet_note_set
	note E_3, 2
	triplet_note_set
	note F_3, 2
	triplet_note_set
	note Gb3, 2
	triplet_note_set
	note G_3, 2
	triplet_note_set
	note Ab3, 2
	triplet_note_set
	note A_3, 2
	triplet_note_set
	note Bb3, 2
	triplet_note_set
	note B_3, 2
	triplet_note_set
	note C_4, 2
	triplet_note_set
	note Db4, 2
	triplet_note_set
	note D_4, 2
	triplet_note_set
	note Eb4, 2
	triplet_note_set
	note E_4, 2
	triplet_note_set
	note F_4, 2
	triplet_note_set
	note Gb4, 2
	triplet_note_set
	note G_4, 2
	triplet_note_set
	note Ab4, 2
	triplet_note_set
	note A_4, 2
	modulator 2
	duty_cycle 1
	volume_envelope volume_decay, 1, 127
	volume 9
	base_note E_3
	note A_4, 32
	rest 8
	note B_4, 16
	note A_4, 8
	base_note E_2
	note G_4, 64
	note F_4, 32
	rest 8
	note G_4, 16
	note F_4, 8
	note E_4, 8
	note F_4, 8
	note Gb4, 8
	note G_4, 8
	rest 32
	note A_4, 32
	rest 8
	base_note E_3
	note B_4, 16
	note A_4, 8
	note G_4, 8
	note G_4, 8
	note D_5, 8
	dotted_note_set
	note C_5, 16
	rest 16
	note A_4, 4
	note A_4, 4
	rest 4
	note A_4, 4
	note A_4, 4
	note A_4, 4
	note A_4, 4
	rest 4
	note A_4, 4
	note A_4, 8
	note A_4, 4
	note B_4, 8
	number_of_note_tied 2
	note A_4, 8
	note A_4, 32
	note Ab4, 32
	loop 0, @loop_1

music_cutman_pulse_2:
	tempo 6
	volume 7
	duty_cycle 1
	volume_envelope volume_decay, 4, 127
	base_note E_2
	note Ab3, 8
	note Ab3, 8
	note Ab3, 8
	note Ab3, 4
	note Ab3, 4
	rest 4
	note Ab3, 4
	note Ab3, 4
	note Ab3, 4
	note Ab3, 8
	note Ab3, 8
	note Ab3, 8
	note Ab3, 8
	note Ab3, 4
	note Ab3, 4
	note Ab3, 4
	note Ab3, 4
	note Ab3, 4
	note Ab3, 4
	note Ab3, 4
	note Ab3, 4
	note A_3, 8
	note B_3, 8

@loop_3:
	volume 6
	duty_cycle 1
	volume_envelope volume_decay, 4, 79
	modulator 0

@loop_1:
	base_note E_2
	note A_3, 4
	note A_3, 4
	note E_3, 4
	note G_3, 4
	rest 4
	note A_3, 4
	note E_3, 4
	note G_3, 4
	rest 4
	note A_3, 4
	note E_3, 4
	note G_3, 4
	note A_3, 4
	note A_3, 4
	rest 4
	note A_3, 4
	loop 3, @loop_1
	note D_3, 4
	note D_3, 4
	note A_2, 4
	note C_3, 4
	rest 4
	note D_3, 4
	note A_2, 4
	note C_3, 4
	rest 4
	note D_3, 4
	note A_2, 4
	note C_3, 4
	note D_3, 4
	note D_3, 4
	rest 4
	note D_3, 4
	note A_3, 4
	note A_3, 4
	note E_3, 4
	note G_3, 4
	rest 4
	note A_3, 4
	note E_3, 4
	note G_3, 4
	rest 4
	note A_3, 4
	note E_3, 4
	note G_3, 4
	note A_3, 4
	note A_3, 4
	rest 4
	note A_3, 4
	note B_2, 4
	note B_2, 4
	note Gb2, 4
	note A_2, 4
	rest 4
	note B_2, 4
	note Gb2, 4
	note A_2, 4
	rest 4
	note B_2, 4
	note Gb2, 4
	note A_2, 4
	note B_2, 4
	note B_2, 4
	rest 4
	note B_2, 4
	note E_3, 4
	note E_3, 4
	note B_2, 4
	note D_3, 4
	rest 4
	note E_3, 4
	note B_2, 4
	note D_3, 4
	rest 4
	note E_3, 4
	note B_2, 4
	note D_3, 4
	note E_3, 4
	note E_3, 4
	rest 4
	base_note E_2
	note E_3, 4

@loop_2:
	base_note E_2
	note A_3, 4
	note A_3, 4
	note E_3, 4
	note G_3, 4
	rest 4
	note A_3, 4
	note E_3, 4
	note G_3, 4
	rest 4
	note A_3, 4
	note E_3, 4
	note G_3, 4
	note A_3, 4
	note A_3, 4
	rest 4
	note A_3, 4
	loop 3, @loop_2
	note D_3, 4
	note D_3, 4
	note A_2, 4
	note C_3, 4
	rest 4
	note D_3, 4
	note A_2, 4
	note C_3, 4
	rest 4
	note D_3, 4
	note A_2, 4
	note C_3, 4
	note D_3, 4
	note D_3, 4
	rest 4
	note D_3, 4
	note A_3, 4
	note A_3, 4
	note E_3, 4
	note G_3, 4
	rest 4
	note A_3, 4
	note E_3, 4
	note G_3, 4
	rest 4
	note A_3, 4
	note E_3, 4
	note G_3, 4
	note A_3, 4
	note A_3, 4
	rest 4
	note A_3, 4
	note B_2, 4
	note B_2, 4
	note Gb2, 4
	note A_2, 4
	rest 4
	note B_2, 4
	note Gb2, 4
	note A_2, 4
	note E_3, 4
	note E_3, 4
	note B_2, 4
	note D_3, 4
	note E_3, 4
	note E_3, 4
	rest 4
	note E_3, 4
	note A_3, 4
	note A_3, 4
	note E_3, 4
	note G_3, 4
	rest 4
	note A_3, 4
	note E_3, 4
	note G_3, 4
	rest 4
	note A_3, 4
	note E_3, 4
	note G_3, 4
	note A_3, 4
	note A_3, 4
	rest 8
	modulator 2
	duty_cycle 1
	volume 6
	volume_envelope volume_decay, 1, 127
	base_note E_3
	rest 4
	rest 2
	note A_4, 32
	rest 8
	note B_4, 16
	note A_4, 8
	base_note E_2
	note G_4, 64
	note F_4, 32
	rest 8
	note G_4, 16
	note F_4, 8
	note E_4, 8
	note F_4, 8
	note Gb4, 8
	note G_4, 8
	rest 32
	note A_4, 32
	rest 8
	base_note E_3
	note B_4, 16
	note A_4, 8
	note G_4, 8
	note G_4, 8
	note D_5, 8
	dotted_note_set
	note C_5, 16
	rest 16
	note A_4, 4
	note A_4, 4
	rest 4
	note A_4, 4
	note A_4, 4
	note A_4, 4
	note A_4, 4
	rest 4
	note A_4, 4
	note A_4, 8
	note A_4, 4
	note B_4, 8
	number_of_note_tied 2
	note A_4, 8
	note A_4, 32
	number_of_note_tied 2
	note Ab4, 16
	rest 8
	note Ab4, 2
	base_note E_2
	loop 0, @loop_3

music_cutman_triangle:
	tempo 6
	modulator 1
	triangle_note_length $30
	base_note E_1

@loop_1:
	note E_2, 8
	note E_2, 8
	note B_2, 4
	note B_2, 8
	note B_2, 4
	note E_2, 4
	note E_2, 8
	note E_2, 4
	note E_3, 8
	note E_2, 8
	loop 1, @loop_1

@loop_4:
	triangle_note_length $50
	base_note E_1

@loop_2:
	note A_2, 8
	note A_2, 8
	note E_3, 4
	note E_3, 8
	note E_3, 4
	note A_2, 4
	note A_2, 8
	note A_2, 4
	note E_3, 8
	note E_2, 8
	loop 3, @loop_2
	note D_2, 8
	note D_2, 8
	note A_2, 4
	note A_2, 8
	note A_2, 4
	note D_2, 4
	note D_2, 8
	note D_2, 4
	note A_2, 8
	note D_2, 8
	note A_2, 8
	note A_2, 8
	note E_3, 4
	note E_3, 8
	note E_3, 4
	note A_2, 4
	note A_2, 8
	note A_2, 4
	note E_3, 8
	note E_2, 8
	note Gb2, 8
	note Gb2, 8
	note Eb3, 4
	note Eb3, 8
	note Eb3, 4
	note Gb2, 4
	note Gb2, 8
	note Gb2, 4
	note Eb3, 8
	note Eb2, 8
	note E_2, 8
	note E_2, 8
	note B_2, 4
	note B_2, 8
	note B_2, 4
	note E_2, 4
	note E_2, 8
	note E_2, 4
	note E_3, 8
	note E_2, 8

@loop_3:
	note A_2, 8
	note A_2, 8
	note E_3, 4
	note E_3, 8
	note E_3, 4
	note A_2, 4
	note A_2, 8
	note A_2, 4
	note E_3, 8
	note E_2, 8
	loop 3, @loop_3
	note D_2, 8
	note D_2, 8
	note A_2, 4
	note A_2, 8
	note A_2, 4
	note D_2, 4
	note D_2, 8
	note D_2, 4
	note A_2, 8
	note D_2, 8
	note A_2, 8
	note A_2, 8
	note E_3, 4
	note E_3, 8
	note E_3, 4
	note A_2, 4
	note A_2, 8
	note A_2, 4
	note E_3, 8
	note E_2, 8
	note Gb2, 8
	note Gb2, 8
	note Eb3, 4
	note Eb3, 8
	note Eb3, 4
	note E_2, 4
	note E_2, 8
	note E_2, 4
	note E_3, 8
	note E_2, 8
	note A_2, 8
	note A_2, 8
	note E_3, 4
	note E_3, 8
	note E_3, 4
	note A_2, 4
	note A_2, 8
	note A_2, 4
	note E_3, 8
	note E_2, 8
	note F_2, 8
	note F_2, 8
	note F_3, 4
	note F_3, 8
	note F_3, 4
	note G_2, 4
	note G_2, 8
	note G_2, 4
	note G_3, 8
	note G_3, 8
	note C_2, 8
	note C_2, 8
	note C_3, 4
	note C_3, 8
	note C_3, 4
	note C_2, 4
	note C_2, 8
	note C_2, 4
	note C_3, 8
	note C_3, 8
	note D_2, 8
	note D_2, 8
	note D_3, 4
	note D_3, 8
	note C_3, 4
	note B_2, 4
	note B_2, 8
	note B_2, 4
	note B_2, 8
	note B_2, 8
	note C_2, 8
	note C_2, 8
	note C_3, 4
	note C_3, 8
	note C_3, 4
	note C_2, 4
	note C_2, 8
	note C_2, 4
	note C_3, 8
	note C_3, 8
	note F_2, 8
	note F_2, 8
	note F_3, 4
	note F_3, 8
	note F_3, 4
	note G_2, 4
	note G_2, 8
	note G_2, 4
	note G_3, 8
	note G_3, 8
	note E_2, 8
	note E_2, 8
	note E_3, 4
	note E_3, 8
	note E_3, 4
	note A_2, 4
	note A_2, 8
	note A_2, 4
	note A_3, 8
	note A_3, 8
	note D_2, 8
	note D_2, 8
	note D_3, 4
	note D_3, 8
	note D_3, 4
	note Eb2, 4
	note Eb2, 8
	note Eb2, 4
	note Eb3, 8
	note Eb3, 8
	note E_2, 8
	note E_2, 8
	note E_3, 4
	note E_3, 8
	note E_3, 4
	note E_2, 4
	note E_2, 8
	note E_2, 4
	note E_3, 8
	note E_3, 8
	loop 0, @loop_4

music_cutman_noise:
	tempo 6

@loop_1:
	volume 7
	volume_envelope volume_decay, 3, 3
	noise_note 10, 8
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 8
	noise_note 10, 4
	noise_note 10, 4
	rest 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 8
	noise_note 10, 8
	noise_note 10, 8
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 8
	noise_note 10, 4
	noise_note 10, 4
	rest 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	loop 0, @loop_1

music_cutman_modulator:
	modulator_set 7, 0, 0, volume_decay, 0, 0
	modulator_set 3, 2, 1, volume_decay, 0, 0
	modulator_set 1, 2, 2, volume_decay, 0, 0
