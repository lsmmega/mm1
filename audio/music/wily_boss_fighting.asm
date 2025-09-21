music_wily_boss_fighting:
	music_header
	.WORD music_wily_boss_fighting_pulse_1
	.WORD music_wily_boss_fighting_pulse_2
	.WORD music_wily_boss_fighting_triangle
	.WORD music_wily_boss_fighting_noise
	.WORD music_wily_boss_fighting_modulator

music_wily_boss_fighting_pulse_1:
	tempo 6

@loop_3:
	duty_cycle 1
	volume 8
	modulator 1
	volume_envelope volume_decay, 2, 6
	base_note Db3

@loop_1:
	note E_4, 4
	note D_4, 4
	note E_4, 4
	note F_4, 4
	note A_3, 4
	note D_4, 4
	note E_4, 4
	note F_4, 4
	loop 7, @loop_1

@loop_2:
	note A_4, 4
	note G_4, 4
	note A_4, 4
	note Bb4, 4
	note D_4, 4
	note G_4, 4
	note A_4, 4
	note Bb4, 4
	loop 7, @loop_2
	loop 0, @loop_3
	music_end

music_wily_boss_fighting_pulse_2:
	tempo 6

@loop_3:
	modulator 1
	duty_cycle 1
	volume 6
	volume_envelope volume_decay, 2, 6
	duty_cycle 2
	base_note Db3

@loop_1:
	note A_3, 4
	note A_3, 4
	note A_3, 4
	note D_4, 4
	note F_3, 4
	note F_3, 4
	note F_3, 4
	note A_3, 4
	loop 7, @loop_1

@loop_2:
	note D_4, 4
	note D_4, 4
	note D_4, 4
	note G_4, 4
	note Bb3, 4
	note Bb3, 4
	note Bb3, 4
	note D_4, 4
	loop 7, @loop_2
	loop 0, @loop_3
	music_end

music_wily_boss_fighting_triangle:
	tempo 6

@loop_2:
	triangle_note_length $81
	base_note Db2

@loop_1:
	note D_3, 32
	note Db3, 32
	note C_3, 32
	note B_2, 32
	loop 1, @loop_1
	note G_3, 32
	note Gb3, 32
	note F_3, 32
	note E_3, 32
	note G_3, 32
	note Gb3, 32
	pitch_envelope $0F
	triangle_note_length $09
	base_note G_2
	note Ab3, 4
	note Db4, 4
	rest 4
	note Ab3, 4
	note Db4, 4
	rest 4
	note Ab3, 4
	note Db4, 4
	note Ab3, 4
	note Ab3, 4
	note Ab3, 4
	note Ab3, 4
	note Eb3, 4
	note Eb3, 4
	note Eb3, 4
	note Eb3, 4
	pitch_envelope $00
	triangle_note_length $81
	base_note Db2
	loop 0, @loop_2
	music_end

music_wily_boss_fighting_noise:
	tempo 6
	volume 8
	volume_envelope volume_decay, 2, 2

@loop_1:
	rest 16
	noise_note 10, 8
	rest 16
	noise_note 10, 16
	noise_note 10, 8
	rest 16
	noise_note 10, 8
	rest 8
	rest 16
	noise_note 10, 8
	noise_note 10, 4
	noise_note 10, 4
	loop 0, @loop_1
	music_end

music_wily_boss_fighting_modulator:
	modulator_set 1, 2, 0, volume_decay, 0, 0
	modulator_set 1, 2, 1, volume_decay, 0, 0
