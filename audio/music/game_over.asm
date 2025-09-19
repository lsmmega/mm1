music_game_over:
	music_header
	.WORD music_game_over_pulse_1
	.WORD music_game_over_pulse_2
	.WORD music_game_over_triangle
	.WORD music_game_over_noise
	.WORD music_game_over_modulator

music_game_over_pulse_1:
	tempo 6
	duty_cycle 2
	volume 10
	volume_envelope volume_decay, 13, 64
	base_note Eb3
	rest 4
	note B_3, 4
	note Db4, 4
	note E_4, 4
	note Db4, 4
	note E_4, 4
	note Gb4, 4
	note Ab4, 4
	note E_4, 4
	note Gb4, 4
	note Ab4, 4
	note B_4, 4
	note Gb4, 4
	note Ab4, 4
	note B_4, 4
	note Eb5, 4
	rest 8
	note E_5, 8
	rest 4
	dotted_note_set
	note Eb5, 8
	note Db5, 4
	music_end

music_game_over_pulse_2:
	tempo 6
	duty_cycle 3
	volume 8
	volume_envelope volume_decay, 13, 64
	base_note Eb3
	rest 4
	note Ab3, 4
	note B_3, 4
	note Db4, 4
	note B_3, 4
	note Db4, 4
	note E_4, 4
	note Gb4, 4
	note Db4, 4
	note E_4, 4
	note Gb4, 4
	note Ab4, 4
	note E_4, 4
	note Gb4, 4
	note Ab4, 4
	note B_4, 4
	rest 8
	note Ab4, 8
	rest 4
	dotted_note_set
	note C_5, 8
	note F_4, 4
	music_end

music_game_over_triangle:
	tempo 6
	triangle_note_length $81
	base_note Eb2
	number_of_note_tied 2
	note Db3, 32
	note Db3, 8
	note D_3, 2
	note Eb3, 2
	note E_3, 2
	note F_3, 2
	note Gb3, 2
	note G_3, 2
	note Ab3, 2
	note A_3, 2
	note Bb3, 2
	note B_3, 2
	note C_4, 2
	note Db4, 2
	rest 2
	note E_3, 2
	note F_3, 2
	note Gb3, 2
	note Ab3, 8
	rest 4
	dotted_note_set
	note Ab3, 8
	note Db3, 4
	rest 4
	note Db3, 4
	music_end

music_game_over_noise:
	tempo 6
	volume 6
	volume_envelope volume_decay, 2, 2
	noise_note 10, 8
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 8
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	rest 8
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	rest 4
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	music_end

music_game_over_modulator:
	modulator_set 0, 0, 0, volume_decay, 0, 0
	modulator_set 2, 2, 2, volume_decay, 0, 0
