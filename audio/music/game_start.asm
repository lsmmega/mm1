music_game_start:
	music_pointers
	dw music_game_start_pulse1
	dw music_game_start_pulse2
	dw music_game_start_triangle
	dw 0
	dw music_game_start_modulation

music_game_start_pulse1:
	tempo 6
	tempo_number = even
	duty_cycle 3
	volume $8
	modulation $00
	volume_envelope $ff, $80
	base_note F#2
	current_base_note = $1e
	rest, 8
	note G_3, 4
	rest, 4
	note G_3, 4
	note F_3, 8
	number_of_note_connect 1
	note G_3, 4
	note G_3, 32
	rest, 8
	note A_3, 4
	rest, 4
	note A_3, 4
	note G_3, 8
	number_of_note_connect 1
	note A_3, 4
	note A_3, 32
	note A#3, 4
	note A#3, 4
	rest, 4
	note A#3, 4
	rest, 16
	note C#4, 4
	note C#4, 4
	rest, 4
	note C#4, 4
	rest, 16
	rest, 4
	note D_4, 4
	rest, 4
	number_of_note_connect 1
	note C_4, 4
	note C_4, 4
	note A#3, 4
	note C_4, 4
	note C#4, 4
	note D_4, 2
	note D#4, 2
	note D_4, 2
	note D#4, 2
	note D_4, 2
	note D#4, 2
	number_of_note_connect 1
	note D_4, 2
	modulation $01
	note D_4, 16
	channel_end

music_game_start_pulse2:
	tempo 6
	tempo_number = even
	duty_cycle 3
	volume $8
	volume_envelope $ff, $10
	modulation $00
	base_note F#1
	current_base_note = $12
	rest, 8
	note A#2, 4
	rest, 4
	note A#2, 4
	note A_2, 8
	number_of_note_connect 1
	note A#2, 4
	note A#2, 32
	rest, 8
	note C_3, 4
	rest, 4
	note C_3, 4
	note A#2, 8
	number_of_note_connect 1
	note C_3, 4
	note C_3, 32
	note D_3, 4
	note D_3, 4
	rest, 4
	note D_3, 4
	rest, 16
	note E_3, 4
	note E_3, 4
	rest, 4
	note E_3, 4
	rest, 16
	rest, 4
	note F#3, 4
	rest, 4
	note D#3, 4
	note D#3, 4
	note D_3, 4
	note D#3, 4
	note D#3, 4
	modulation $01
	note A_3, 32
	channel_end

music_game_start_triangle:
	tempo 6
	tempo_number = even
	modulation $00
	triangle_linear $81
	base_note F#2
	current_base_note = $1e
	dotted_set
	note G_3, 32
	note G_3, 4
	dotted_set
	note F#3, 8
	dotted_set
	note F_3, 32
	note F_3, 4
	dotted_set
	note E_3, 8
	note D#3, 4
	note D#3, 4
	rest, 4
	note D#3, 4
	rest, 8
	rest, 2
	note D#3, 2
	note F_3, 2
	note G_3, 2
	note A_3, 4
	note A_3, 4
	rest, 4
	note A_3, 4
	rest, 8
	rest, 2
	note A_3, 2
	note B_3, 2
	note C#4, 2
	modulation $01
	note D_3, 64
	channel_end

music_game_start_modulation:
;modulation_$00
	pitch_bend 0, 0, 0
	volume_modulation $80, $00

;modulation_$01
	pitch_bend 1, 2, 2
	volume_modulation $80, $00