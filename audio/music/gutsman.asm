music_gutsman:
	music_header
	.WORD music_gutsman_pulse_1
	.WORD music_gutsman_pulse_2
	.WORD music_gutsman_triangle
	.WORD music_gutsman_noise
	.WORD music_gutsman_modulator

music_gutsman_pulse_1:
	tempo 6
	base_note E_2
	duty_cycle 2
	volume 9
	volume_envelope volume_decay, 1, 95
	note D_3, 4
	note D_3, 4
	note Gb3, 4
	note D_3, 4
	rest 4
	note D_3, 4
	note Gb3, 4
	note D_3, 4
	rest 4
	note D_3, 4
	note Gb3, 4
	note D_3, 4
	rest 4
	note D_3, 2
	rest 2
	note D_3, 4
	note Gb3, 4
	note D_3, 4
	note Gb3, 4
	note A_3, 4
	note C_4, 4
	note D_4, 4
	note C_4, 4
	note A_3, 4
	note Gb3, 4
	note D_3, 8
	rest 8
	rest 4
	note D_3, 4
	note F_3, 4
	note G_3, 4

@loop_1:
	duty_cycle 2
	volume_envelope volume_decay, 1, 95
	modulator 1
	volume 9
	base_note E_2
	number_of_note_tied 2
	note Bb3, 32
	note Bb3, 8
	number_of_note_tied 2
	note A_3, 8
	note A_3, 16
	note G_3, 8
	rest 8
	rest 32
	rest 4
	note D_3, 4
	note F_3, 4
	note G_3, 4
	number_of_note_tied 2
	note Bb3, 32
	note Bb3, 8
	number_of_note_tied 2
	note C_4, 8
	note C_4, 16
	note Bb3, 4
	note G_3, 4
	rest 8
	rest 32
	rest 4
	note G_3, 4
	note Bb3, 4
	note D_4, 4
	note C_4, 32
	note A_3, 32
	dotted_note_set
	note D_4, 32
	rest 4
	note G_3, 4
	note Bb3, 4
	note D_4, 4
	note C_4, 32
	note Eb4, 32
	note D_4, 32
	rest 16
	note F_4, 4
	note G_4, 4
	rest 8
	number_of_note_tied 2
	note Bb3, 32
	note Bb3, 8
	number_of_note_tied 2
	note A_3, 8
	note A_3, 16
	note G_3, 8
	rest 8
	rest 32
	rest 4
	note D_3, 4
	note F_3, 4
	note G_3, 4
	number_of_note_tied 2
	note Bb3, 32
	note Bb3, 8
	number_of_note_tied 2
	note C_4, 8
	note C_4, 16
	note Bb3, 4
	note G_3, 4
	rest 8
	rest 32
	rest 4
	note G_3, 4
	note Bb3, 4
	note D_4, 4
	note D_4, 32
	note Db4, 16
	note C_4, 16
	note Bb3, 4
	note G_3, 4
	rest 8
	rest 32
	rest 4
	note G_3, 4
	note Bb3, 4
	note D_4, 4
	note D_4, 32
	note Db4, 16
	note C_4, 16
	note Bb3, 4
	note G_4, 4
	rest 8
	rest 32
	rest 4
	note D_3, 4
	note F_3, 4
	note G_3, 4
	loop 0, @loop_1

music_gutsman_pulse_2:
	tempo 6
	volume 8
	base_note E_2
	duty_cycle 2
	volume_envelope volume_decay, 1, 95
	note C_3, 4
	note C_3, 4
	note D_3, 4
	note C_3, 4
	rest 4
	note C_3, 4
	note D_3, 4
	note C_3, 4
	rest 4
	note C_3, 4
	note D_3, 4
	note C_3, 4
	rest 4
	note C_3, 2
	rest 2
	note Gb3, 4
	note A_3, 4
	note C_3, 4
	note D_3, 4
	note F_3, 4
	note A_3, 4
	note C_4, 4
	note A_3, 4
	note Gb3, 4
	note D_3, 4
	note C_3, 8
	rest 8
	volume 5
	modulator 1
	rest 4
	note C_3, 4
	note D_3, 4
	note D_3, 4

@loop_1:
	volume 8
	duty_cycle 2
	volume_envelope volume_decay, 1, 95
	modulator 1
	base_note E_2
	number_of_note_tied 2
	note G_3, 32
	note G_3, 8
	number_of_note_tied 2
	note F_3, 8
	note F_3, 16
	note D_3, 8
	rest 8
	rest 32
	rest 4
	note C_3, 4
	note D_3, 4
	note D_3, 4
	number_of_note_tied 2
	note G_3, 32
	note G_3, 8
	number_of_note_tied 2
	note A_3, 8
	note A_3, 16
	note G_3, 4
	note D_3, 4
	rest 8
	rest 32
	rest 4
	note D_3, 4
	note G_3, 4
	note Bb3, 4
	note A_3, 32
	note F_3, 32
	dotted_note_set
	note Bb3, 32
	rest 4
	note D_3, 4
	note G_3, 4
	note Bb3, 4
	note A_3, 32
	note G_3, 32
	note Gb3, 32
	rest 16
	note C_4, 4
	note D_4, 4
	rest 8
	number_of_note_tied 2
	note G_3, 32
	note G_3, 8
	number_of_note_tied 2
	note F_3, 8
	note F_3, 16
	note D_3, 8
	rest 8
	rest 32
	rest 4
	note C_3, 4
	note D_3, 4
	note D_3, 4
	number_of_note_tied 2
	note G_3, 32
	note G_3, 8
	number_of_note_tied 2
	note A_3, 8
	note A_3, 16
	note G_3, 4
	note D_3, 4
	rest 8
	rest 32
	rest 4
	note D_3, 4
	note G_3, 4
	note Bb3, 4
	note F_3, 32
	note E_3, 16
	note Eb3, 16
	note Db3, 4
	note Bb2, 4
	rest 8
	rest 32
	rest 4
	note C_3, 4
	note D_3, 4
	note D_3, 4
	note F_3, 32
	note E_3, 16
	note Eb3, 16
	note D_3, 4
	note D_4, 4
	rest 8
	rest 32
	rest 4
	note C_3, 4
	note D_3, 4
	note D_3, 4
	loop 0, @loop_1

music_gutsman_triangle:
	tempo 6
	base_note E_2
	triangle_note_length $7F
	note D_3, 8
	note D_3, 8
	rest 8
	note D_3, 4
	note D_3, 4
	note D_3, 8
	note D_3, 8
	rest 8
	note D_3, 8
	note D_3, 8
	note D_3, 8
	rest 8
	note D_3, 4
	note D_3, 4
	note D_3, 8
	note D_3, 8
	rest 16

@loop_1:
	triangle_note_length $7F
	base_note E_2
	note G_2, 4
	note G_2, 4
	note G_3, 4
	note G_2, 4
	rest 4
	note G_2, 4
	note G_3, 4
	note G_2, 4
	rest 4
	note G_2, 4
	note G_3, 4
	note G_2, 4
	rest 4
	note G_2, 2
	rest 2
	note F_3, 4
	note G_3, 4
	loop 11, @loop_1

@loop_2:
	note Bb2, 4
	note Bb2, 4
	note Bb3, 4
	note Bb2, 4
	rest 4
	note Bb2, 4
	note Bb3, 4
	note Bb2, 4
	note A_2, 4
	note A_2, 4
	note A_3, 4
	note A_2, 4
	rest 4
	note Ab2, 2
	rest 2
	note Ab3, 4
	note Ab2, 4
	note G_2, 4
	note G_2, 4
	note G_3, 4
	note G_2, 4
	rest 4
	note G_2, 4
	note G_3, 4
	note G_2, 4
	rest 4
	note G_2, 4
	note G_3, 4
	note G_2, 4
	rest 4
	note G_2, 2
	rest 2
	note F_3, 4
	note G_3, 4
	loop 1, @loop_2
	loop 0, @loop_1

music_gutsman_noise:
	tempo 6

@loop_1:
	volume_envelope volume_decay, 2, 3
	volume 3
	noise_duty_cycle 1
	noise_note 9, 4
	rest 4
	noise_note 9, 4
	rest 4
	volume 5
	volume_envelope volume_decay, 1, 1
	noise_duty_cycle 0
	noise_note 10, 8
	volume_envelope volume_decay, 2, 3
	volume 3
	noise_duty_cycle 1
	noise_note 9, 4
	noise_note 9, 4
	noise_note 9, 4
	rest 4
	noise_note 9, 4
	rest 4
	volume 5
	noise_duty_cycle 0
	volume_envelope volume_decay, 1, 1
	noise_note 10, 8
	volume 3
	volume_envelope volume_decay, 2, 3
	noise_duty_cycle 1
	noise_note 9, 4
	rest 4
	noise_note 9, 4
	rest 4
	noise_note 9, 4
	rest 4
	noise_duty_cycle 0
	volume 5
	volume_envelope volume_decay, 1, 1
	noise_note 10, 8
	volume_envelope volume_decay, 2, 3
	volume 3
	noise_duty_cycle 1
	noise_note 9, 4
	noise_note 9, 4
	noise_note 9, 4
	rest 4
	noise_note 9, 4
	rest 4
	noise_duty_cycle 0
	volume_envelope volume_decay, 1, 1
	volume 5
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	loop 0, @loop_1

music_gutsman_modulator:
	modulator_set 7, 0, 0, volume_decay, 0, 0
	modulator_set 2, 1, 1, volume_decay, 0, 0
