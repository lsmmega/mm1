music_wily_defeated:
	music_header
	.WORD music_wily_defeated_pulse_1
	.WORD music_wily_defeated_pulse_2
	.WORD music_wily_defeated_triangle
	.WORD music_wily_defeated_noise
	.WORD music_wily_defeated_modulator

music_wily_defeated_pulse_1:
	tempo 6
	duty_cycle 2
	volume 12
	volume_envelope volume_decay, 1, 127
	base_note F_2
	note Db3, 2
	note F_3, 2
	note Ab3, 2
	note Db4, 2
	note F_3, 2
	note Ab3, 2
	note Db4, 2
	note F_4, 2
	note Ab3, 2
	note Db4, 2
	note F_4, 2
	note E_3, 2
	note B_3, 2
	note Db4, 2
	note F_4, 2
	note Ab4, 2
	base_note F_3
	note Db4, 2
	note F_4, 2
	note Ab4, 2
	note Db5, 2
	note F_4, 2
	note Ab4, 2
	note Db5, 2
	note F_5, 2
	note Ab4, 2
	note Db5, 2
	note F_5, 2
	note E_4, 2
	note B_4, 2
	note Db5, 2
	note F_5, 2
	note Ab5, 2
	tempo 7
	base_note F_2
	dotted_note_set
	note Db4, 32
	triplet_note_set
	rest 8
	triplet_note_set
	note Db4, 8
	triplet_note_set
	note Db4, 8
	note E_4, 32
	note D_4, 32
	dotted_note_set
	note Db4, 32
	triplet_note_set
	rest 8
	triplet_note_set
	note Db4, 8
	triplet_note_set
	note Db4, 8
	note E_4, 16
	triplet_note_set
	rest 8
	triplet_note_set
	note E_4, 8
	triplet_note_set
	note E_4, 8
	note Gb4, 16
	triplet_note_set
	rest 8
	triplet_note_set
	note Gb4, 8
	triplet_note_set
	note Gb4, 8
	note Ab4, 4
	rest 8
	note Gb4, 4
	note Ab4, 32
	tempo 9
	triplet_note_set
	note Ab4, 8
	triplet_note_set
	note Ab4, 8
	triplet_note_set
	note Ab4, 8
	tempo 12
	number_of_note_tied 2
	note Bb4, 16
	modulator_index 1
	dotted_note_set
	note Bb4, 32
	music_end

music_wily_defeated_pulse_2:
	tempo 6
	duty_cycle 2
	volume 9
	volume_envelope volume_decay, 1, 127
	base_note F_2
	note Ab2, 2
	note Db3, 2
	note F_3, 2
	note Ab3, 2
	note B_2, 2
	note Db3, 2
	note F_3, 2
	note Ab3, 2
	note Db3, 2
	note F_3, 2
	note Ab3, 2
	note Db4, 2
	note F_3, 2
	note Ab3, 2
	note Db4, 2
	note F_4, 2
	base_note F_3
	note Ab3, 2
	note Db4, 2
	note F_4, 2
	note Ab4, 2
	note B_3, 2
	note Db4, 2
	note F_4, 2
	note Ab4, 2
	note Db4, 2
	note F_4, 2
	note Ab4, 2
	note Db5, 2
	note F_4, 2
	note Ab4, 2
	note Db5, 2
	note F_5, 2
	tempo 7
	base_note F_2
	dotted_note_set
	note Bb3, 32
	triplet_note_set
	rest 8
	triplet_note_set
	note Bb3, 8
	triplet_note_set
	note Bb3, 8
	note Db4, 32
	note B_3, 32
	dotted_note_set
	note Bb3, 32
	triplet_note_set
	rest 8
	triplet_note_set
	note Bb3, 8
	triplet_note_set
	note Bb3, 8
	note Db4, 16
	triplet_note_set
	rest 8
	triplet_note_set
	note Db4, 8
	triplet_note_set
	note Db4, 8
	note D_4, 16
	triplet_note_set
	rest 8
	triplet_note_set
	note D_4, 8
	triplet_note_set
	note D_4, 8
	note Db4, 4
	rest 8
	note Db4, 4
	note Db4, 32
	tempo 9
	triplet_note_set
	note Db4, 8
	triplet_note_set
	note Db4, 8
	triplet_note_set
	note Db4, 8
	tempo 12
	number_of_note_tied 2
	note Db4, 16
	modulator_index 1
	dotted_note_set
	note Db4, 32
	music_end

music_wily_defeated_triangle:
	tempo 6
	modulator_index 0
	triangle_note_length $81
	base_note F_2
	note Db3, 64
	tempo 7

@loop_1:
	note Gb3, 8
	note Db3, 8
	loop 3, @loop_1

@loop_2:
	note E_3, 8
	loop 3, @loop_2

@loop_3:
	note D_3, 8
	loop 3, @loop_3

@loop_4:
	note Gb3, 8
	note Db3, 8
	loop 3, @loop_4

@loop_5:
	note E_3, 8
	loop 3, @loop_5

@loop_6:
	note D_3, 8
	loop 3, @loop_6

@loop_7:
	note Db3, 8
	loop 4, @loop_7
	tempo 9
	rest 8
	triplet_note_set
	note Db3, 8
	triplet_note_set
	note Db3, 8
	triplet_note_set
	note Db3, 8
	tempo 12
	number_of_note_tied 2
	note Gb3, 16
	modulator_index 1
	dotted_note_set
	note Gb3, 32
	music_end

music_wily_defeated_noise:
	tempo 6
	volume 9
	volume_envelope volume_decay, 1, 1
	rest 64
	tempo 7

@loop_1:
	noise_note 10, 4
	rest 4
	triplet_note_set
	noise_note 10, 4
	triplet_note_set
	noise_note 10, 4
	triplet_note_set
	noise_note 10, 4
	noise_note 10, 4
	rest 4
	triplet_note_set
	noise_note 10, 4
	triplet_note_set
	noise_note 10, 4
	triplet_note_set
	noise_note 10, 4
	noise_note 10, 4
	rest 4
	noise_note 10, 4
	rest 4
	noise_note 10, 4
	rest 4
	noise_note 10, 4
	rest 4
	loop 3, @loop_1

@loop_2:
	noise_note 10, 4
	rest 4
	triplet_note_set
	noise_note 10, 4
	triplet_note_set
	noise_note 10, 4
	triplet_note_set
	noise_note 10, 4
	loop 2, @loop_2
	tempo 9

@loop_3:
	triplet_note_set
	noise_note 10, 4
	loop 5, @loop_3
	tempo 12

@loop_4:
	noise_note 10, 2
	loop 24, @loop_4
	music_end

music_wily_defeated_modulator:
	modulator_set 7, 0, 0, volume_decay, 0
	modulator_set 3, 2, 1, volume_decay, 0
