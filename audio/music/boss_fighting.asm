music_boss_fighting:
	music_header
	.WORD @pulse_1
	.WORD @pulse_2
	.WORD music_boss_fighting_triangle
	.WORD music_boss_fighting_noise
	.WORD music_boss_fighting_modulator

@pulse_1:
	tempo 6
	duty_cycle 0
	volume 9
	modulator 1
	base_note G_1
	rest 4
	note Eb2, 4
	note E_2, 4
	note Eb2, 4
	note Gb2, 4
	note Eb2, 4
	note G_2, 4
	note Eb2, 4
	note Ab2, 4
	note Eb2, 4
	note A_2, 4
	note Eb2, 4
	note Bb2, 4
	note Eb2, 4
	note Eb3, 4
	note Eb2, 4
	base_note G_2
	rest 4
	note Eb3, 4
	note E_3, 4
	note Eb3, 4
	note Gb3, 4
	note Eb3, 4
	note G_3, 4
	note Eb3, 4
	note Ab3, 4
	note Eb3, 4
	note A_3, 4
	note Eb3, 4
	note Bb3, 4
	note Eb4, 8
	note Eb4, 4

@loop_1:
	duty_cycle 0
	volume 9
	modulator 1
	base_note G_2
	volume_envelope volume_decay, 2, 32
	note Eb3, 4
	note Ab3, 4
	note Bb3, 4
	note B_3, 4
	rest 4
	note Bb3, 4
	note Ab3, 4
	note B_3, 4
	rest 4
	note Bb3, 4
	note Ab3, 4
	note B_3, 4
	rest 4
	note Bb3, 4
	note Ab3, 4
	note Eb3, 4
	note Db3, 4
	note Gb3, 4
	note Ab3, 4
	note Bb3, 4
	rest 4
	note Ab3, 4
	note Gb3, 4
	note Bb3, 4
	rest 4
	note Ab3, 4
	note Gb3, 4
	note Bb3, 4
	rest 4
	note Ab3, 4
	note Gb3, 4
	note Db3, 4
	note B_2, 4
	note E_3, 4
	note Gb3, 4
	note Ab3, 4
	rest 4
	note Gb3, 4
	note E_3, 4
	note Ab3, 4
	rest 4
	note Gb3, 4
	note E_3, 4
	note Ab3, 4
	rest 4
	note Gb3, 4
	note E_3, 4
	note D_3, 4
	note Eb3, 4
	note E_3, 4
	note Eb3, 4
	note F_3, 4
	note Eb3, 4
	note Gb3, 4
	note Eb3, 4
	note G_3, 4
	note Eb3, 4
	note Ab3, 4
	note Eb3, 4
	note A_3, 4
	note Eb3, 4
	note Bb3, 4
	note Eb3, 4
	note Eb4, 4
	loop 0, @loop_1

@pulse_2:
	tempo 6
	duty_cycle 0
	volume 5
	volume_envelope volume_decay, 2, 32
	modulator 1
	base_note G_1
	rest 2
	rest 4
	note Eb2, 4
	note E_2, 4
	note Eb2, 4
	note Gb2, 4
	note Eb2, 4
	note G_2, 4
	note Eb2, 4
	note Ab2, 4
	note Eb2, 4
	note A_2, 4
	note Eb2, 4
	note Bb2, 4
	note Eb2, 4
	note Eb3, 4
	note Eb2, 4
	base_note G_2
	rest 4
	note Eb3, 4
	note E_3, 4
	note Eb3, 4
	note Gb3, 4
	note Eb3, 4
	note G_3, 4
	note Eb3, 4
	note Ab3, 4
	note Eb3, 4
	note A_3, 4
	note Eb3, 2
	note G_3, 4
	note G_3, 8
	note G_3, 4
	rest 2
	rest 4
	loop 0, @loop_1

music_boss_fighting_triangle:
	tempo 6
	pitch_envelope $0F
	triangle_note_length $08
	base_note E_2
	rest 64
	rest 32
	note F_3, 4
	note F_3, 4
	note F_3, 4
	note F_3, 4
	note C_3, 4
	note C_3, 4
	note C_3, 4
	note C_3, 4

@loop_1:
	pitch_envelope $00
	modulator 0
	triangle_note_length $30
	base_note G_2
	dotted_note_set
	note Ab3, 8
	dotted_note_set
	note Eb3, 8
	note Ab3, 8
	dotted_note_set
	note Ab3, 8
	dotted_note_set
	note Eb3, 8
	note Ab3, 8
	dotted_note_set
	note Gb3, 8
	dotted_note_set
	note Db3, 8
	note Gb3, 8
	dotted_note_set
	note Gb3, 8
	dotted_note_set
	note Db3, 8
	note Gb3, 8
	dotted_note_set
	note E_3, 8
	dotted_note_set
	note B_2, 8
	note E_3, 8
	dotted_note_set
	note E_3, 8
	dotted_note_set
	note B_2, 8
	note E_3, 8
	dotted_note_set
	note Eb3, 8
	dotted_note_set
	note E_3, 8
	note F_3, 8
	base_note A_2
	pitch_envelope $0F
	triangle_note_length $09
	note Bb3, 4
	note Bb3, 4
	note Bb3, 4
	note Bb3, 4
	note F_3, 4
	note F_3, 4
	note F_3, 4
	note F_3, 4
	pitch_envelope $00
	loop 0, @loop_1
	music_end

music_boss_fighting_noise:
	tempo 6
	volume 7
	rest 64
	rest 64
	volume_envelope volume_decay, 1, 1

@loop_1:
	volume_envelope volume_decay, 1, 1
	rest 8
	noise_note 10, 8
	rest 8
	noise_note 10, 8
	rest 8
	noise_note 10, 8
	rest 4
	noise_note 10, 8
	noise_note 10, 4
	rest 8
	noise_note 10, 8
	rest 8
	noise_note 10, 8
	rest 8
	noise_note 10, 8
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	loop 0, @loop_1

music_boss_fighting_modulator: 
	modulator_set 7, 0, 0, volume_decay, 0, 0
	modulator_set 1, 2, 2, volume_decay, 0, 0
