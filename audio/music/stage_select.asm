music_stage_select:
	music_header
	.WORD music_stage_select_pulse_1
	.WORD music_stage_select_pulse_2
	.WORD music_stage_select_triangle
	.WORD $0000
	.WORD music_stage_select_modulator

music_stage_select_pulse_1:
	tempo 8

@loop_1:
	duty_cycle 3
	volume 8
	modulator 0
	volume_envelope volume_decay, 2, 127
	base_note G_1
	note C_4, 4
	note C_4, 4
	note C_4, 4
	note Bb3, 4
	note Bb3, 4
	note Bb3, 4
	note Db4, 4
	note Db4, 4
	note Db4, 4
	note C_4, 4
	note C_4, 4
	note C_4, 4
	note Bb3, 4
	note Bb3, 4
	note C_4, 4
	note C_4, 4
	note C_4, 4
	note C_4, 4
	note C_4, 4
	note Bb3, 4
	note Bb3, 4
	note Bb3, 4
	note Ab3, 4
	note Ab3, 4
	note Ab3, 4
	note Bb3, 4
	note Bb3, 4
	note Bb3, 4
	note Ab3, 4
	note Ab3, 4
	note Bb3, 4
	note Bb3, 4
	loop 0, @loop_1
	music_end
	
music_stage_select_pulse_2:
	tempo 8

@loop_1:
	duty_cycle 3
	volume 8
	volume_envelope volume_decay, 2, 127
	base_note G_1
	modulator 0
	note Eb3, 4
	note Eb3, 4
	note Eb3, 4
	note Eb3, 4
	note Eb3, 4
	note Eb3, 4
	note Eb3, 4
	note Eb3, 4
	note Eb3, 4
	note Eb3, 4
	note Eb3, 4
	note Eb3, 4
	note Eb3, 4
	note Eb3, 4
	note Eb3, 4
	note Eb3, 4
	note Db3, 4
	note Db3, 4
	note Db3, 4
	note Db3, 4
	note Db3, 4
	note Db3, 4
	note Db3, 4
	note Db3, 4
	note Db3, 4
	note Db3, 4
	note Db3, 4
	note Db3, 4
	note Db3, 4
	note Db3, 4
	note Db3, 4
	note Db3, 4
	loop 0, @loop_1
	music_end

music_stage_select_triangle:
	tempo 8

@loop_1:
	modulator 0
	triangle_note_length $81
	base_note G_2
	note Ab3, 8
	rest 4
	number_of_note_tied 2
	note Ab3, 4
	note Ab3, 32
	rest 8
	note Ab3, 4
	note G_3, 4
	note Gb3, 8
	rest 4
	number_of_note_tied 2
	note Gb3, 4
	note Gb3, 16
	rest 4
	note Gb3, 8
	number_of_note_tied 2
	note Gb3, 4
	note Gb3, 4
	note F_3, 4
	note Gb3, 4
	note G_3, 4
	loop 0, @loop_1
	music_end

music_stage_select_modulator:
	modulator_set 7, 0, 0, volume_decay, 0, 0
