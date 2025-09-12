music_boss_show:
	music_header
	.WORD music_boss_show_pulse_1
	.WORD music_boss_show_pulse_2
	.WORD music_boss_show_triangle
	.WORD $0000
	.WORD music_boss_show_modulator

music_boss_show_pulse_1:
	tempo 6
	duty_cycle 3
	volume 8
	modulator 0
	volume_envelope volume_decay, 8, 127
	base_note Gb2
	rest 8
	note G_3, 4
	rest 4
	note G_3, 4
	note F_3, 8
	number_of_note_tied 2
	note G_3, 4
	note G_3, 32
	rest 8
	note A_3, 4
	rest 4
	note A_3, 4
	note G_3, 8
	number_of_note_tied 2
	note A_3, 4
	note A_3, 32
	note Bb3, 4
	note Bb3, 4
	rest 4
	note Bb3, 4
	rest 16
	note Db4, 4
	note Db4, 4
	rest 4
	note Db4, 4
	rest 16
	rest 4
	note D_4, 4
	rest 4
	number_of_note_tied 2
	note C_4, 4
	note C_4, 4
	note Bb3, 4
	note C_4, 4
	note Db4, 4
	note D_4, 2
	note Eb4, 2
	note D_4, 2
	note Eb4, 2
	note D_4, 2
	note Eb4, 2
	number_of_note_tied 2
	note D_4, 2
	modulator 1
	note D_4, 16
	music_end

music_boss_show_pulse_2:
	tempo 6
	duty_cycle 3
	volume 8
	volume_envelope volume_decay, 1, 127
	modulator 0
	base_note Gb1
	rest 8
	note Bb2, 4
	rest 4
	note Bb2, 4
	note A_2, 8
	number_of_note_tied 2
	note Bb2, 4
	note Bb2, 32
	rest 8
	note C_3, 4
	rest 4
	note C_3, 4
	note Bb2, 8
	number_of_note_tied 2
	note C_3, 4
	note C_3, 32
	note D_3, 4
	note D_3, 4
	rest 4
	note D_3, 4
	rest 16
	note E_3, 4
	note E_3, 4
	rest 4
	note E_3, 4
	rest 16
	rest 4
	note Gb3, 4
	rest 4
	note Eb3, 4
	note Eb3, 4
	note D_3, 4
	note Eb3, 4
	note Eb3, 4
	modulator 1
	note A_3, 32
	music_end

music_boss_show_triangle:
	tempo 6
	modulator 0
	triangle_note_length $81
	base_note Gb2
	dotted_note_set
	note G_3, 32
	note G_3, 4
	dotted_note_set
	note Gb3, 8
	dotted_note_set
	note F_3, 32
	note F_3, 4
	dotted_note_set
	note E_3, 8
	note Eb3, 4
	note Eb3, 4
	rest 4
	note Eb3, 4
	rest 8
	rest 2
	note Eb3, 2
	note F_3, 2
	note G_3, 2
	note A_3, 4
	note A_3, 4
	rest 4
	note A_3, 4
	rest 8
	rest 2
	note A_3, 2
	note B_3, 2
	note Db4, 2
	modulator 1
	note D_3, 64
	music_end

music_boss_show_modulator:
	modulator_set 0, 0, 0, volume_decay, 0
	modulator_set 2, 2, 1, volume_decay, 0
