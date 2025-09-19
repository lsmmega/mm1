music_boss_defeated:
	music_header
	.WORD music_boss_defeated_pulse_1
	.WORD music_boss_defeated_pulse_2
	.WORD music_boss_defeated_triangle
	.WORD music_boss_defeated_noise
	.WORD music_boss_defeated_modulator

music_boss_defeated_pulse_1:
	tempo 4
	duty_cycle 3
	volume 15
	modulator 0
	volume_envelope volume_decay, 2, 32
	base_note Db2

@loop_1:
	triplet_note_set
	note E_4, 8
	triplet_note_set
	note B_3, 8
	triplet_note_set
	note Ab3, 8
	triplet_note_set
	note E_3, 8
	triplet_note_set
	note B_2, 8
	triplet_note_set
	note Ab2, 8
	triplet_note_set
	note E_2, 8
	triplet_note_set
	note Ab2, 8
	triplet_note_set
	note B_2, 8
	triplet_note_set
	note E_3, 8
	triplet_note_set
	note Ab3, 8
	triplet_note_set
	note B_3, 8
	loop 1, @loop_1
	tempo 6
	base_note Db3
	note E_4, 4
	rest 8
	note E_4, 4
	tempo 7
	note E_4, 16
	triplet_note_set
	note Gb4, 16
	triplet_note_set
	note E_4, 16
	triplet_note_set
	note Gb4, 16
	modulator 1
	tempo 8
	note Ab4, 64
	music_end

music_boss_defeated_pulse_2:
	tempo 4
	duty_cycle 3
	volume 10
	modulator 0
	base_note Db3
	volume_envelope volume_decay, 2, 32
	rest 4
	triplet_note_set
	note E_5, 8
	triplet_note_set
	note B_4, 8
	triplet_note_set
	note Ab4, 8
	triplet_note_set
	note E_4, 8
	triplet_note_set
	note B_3, 8
	triplet_note_set
	note Ab3, 8
	triplet_note_set
	note E_3, 8
	triplet_note_set
	note Ab3, 8
	triplet_note_set
	note B_3, 8
	triplet_note_set
	note E_4, 8
	triplet_note_set
	note Ab4, 8
	triplet_note_set
	note B_4, 8
	triplet_note_set
	note E_5, 8
	triplet_note_set
	note B_4, 8
	triplet_note_set
	note Ab4, 8
	triplet_note_set
	note E_4, 8
	triplet_note_set
	note B_3, 8
	triplet_note_set
	note Ab3, 8
	triplet_note_set
	note E_3, 8
	triplet_note_set
	note Ab3, 8
	triplet_note_set
	note B_3, 8
	triplet_note_set
	note E_4, 8
	triplet_note_set
	note Ab4, 8
	triplet_note_set
	note B_4, 4
	tempo 6
	note C_5, 4
	rest 8
	note C_5, 4
	tempo 7
	note C_5, 16
	triplet_note_set
	note D_5, 16
	triplet_note_set
	note C_5, 16
	triplet_note_set
	note D_5, 16
	modulator 1
	tempo 8
	note E_5, 64
	music_end

music_boss_defeated_triangle:
	tempo 4
	modulator 0
	base_note Db2
	triangle_note_length $81
	note E_3, 64
	note D_3, 64
	tempo 6
	number_of_note_tied 2
	note C_3, 16
	tempo 7
	note C_3, 16
	triplet_note_set
	note D_3, 16
	triplet_note_set
	note D_3, 16
	triplet_note_set
	note D_3, 16
	modulator 1
	tempo 8
	note E_3, 64
	music_end

music_boss_defeated_noise:
	tempo 4
	volume 10
	volume_envelope volume_decay, 2, 2

@loop_1:
	triplet_note_set
	noise_note 10, 8
	triplet_note_set
	rest 16
	triplet_note_set
	noise_note 10, 8
	triplet_note_set
	noise_note 10, 8
	triplet_note_set
	noise_note 10, 8
	noise_note 10, 8
	noise_note 10, 8
	noise_note 10, 8
	noise_note 10, 8
	loop 1, @loop_1
	tempo 6
	triplet_note_set
	noise_note 10, 8
	triplet_note_set
	noise_note 10, 8
	triplet_note_set
	noise_note 10, 8
	tempo 7
	triplet_note_set
	noise_note 10, 8
	triplet_note_set
	noise_note 10, 8
	triplet_note_set
	noise_note 10, 8
	triplet_note_set
	noise_note 10, 16
	triplet_note_set
	noise_note 10, 16
	triplet_note_set
	noise_note 10, 16

@loop_2:
	tempo 8
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	loop 1, @loop_2
	music_end

music_boss_defeated_modulator:
	modulator_set 7, 0, 0, volume_decay, 0, 0
	modulator_set 1, 2, 2, volume_decay, 0, 0
