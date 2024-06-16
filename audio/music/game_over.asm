music_game_over:
	music_pointers
	dw music_game_over_pulse1
	dw music_game_over_pulse2
	dw music_game_over_triangle
	dw music_game_over_noise
	dw music_game_over_modulation

music_game_over_pulse1:
	tempo 6
	tempo_number = even
	duty_cycle 2
	volume $a
	volume_envelope $c0, $d0
	base_note D#3
	current_base_note = $27
	rest, 4
	note B_3, 4
	note C#4, 4
	note E_4, 4
	note C#4, 4
	note E_4, 4
	note F#4, 4
	note G#4, 4
	note E_4, 4
	note F#4, 4
	note G#4, 4
	note B_4, 4
	note F#4, 4
	note G#4, 4
	note B_4, 4
	note D#5, 4
	rest, 8
	note E_5, 8
	rest, 4
	dotted_set
	note D#5, 8
	note C#5, 4
	channel_end

music_game_over_pulse2:
	tempo 6
	tempo_number = even
	duty_cycle 3
	volume $8
	volume_envelope $c0, $d0
	base_note D#3
	current_base_note = $27
	rest, 4
	note G#3, 4
	note B_3, 4
	note C#4, 4
	note B_3, 4
	note C#4, 4
	note E_4, 4
	note F#4, 4
	note C#4, 4
	note E_4, 4
	note F#4, 4
	note G#4, 4
	note E_4, 4
	note F#4, 4
	note G#4, 4
	note B_4, 4
	rest, 8
	note G#4, 8
	rest, 4
	dotted_set
	note C_5, 8
	note F_4, 4
	channel_end

music_game_over_triangle:
	tempo 6
	tempo_number = even
	triangle_linear $81
	base_note D#2
	current_base_note = $1b
	number_of_note_connect 1
	note C#3, 32
	note C#3, 8
	note D_3, 2
	note D#3, 2
	note E_3, 2
	note F_3, 2
	note F#3, 2
	note G_3, 2
	note G#3, 2
	note A_3, 2
	note A#3, 2
	note B_3, 2
	note C_4, 2
	note C#4, 2
	rest, 2
	note E_3, 2
	note F_3, 2
	note F#3, 2
	note G#3, 8
	rest, 4
	dotted_set
	note G#3, 8
	note C#3, 4
	rest, 4
	note C#3, 4
	channel_end

music_game_over_noise:
	tempo 6
	tempo_number = even
	volume $6
	volume_envelope $82, $20
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
	rest, 8
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	rest, 4
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	channel_end

music_game_over_modulation:
;modulation_$00
	pitch_bend 0, 0, 0
	volume_modulation $80, $00

;modulation_$01
	pitch_bend 2, 2, 2
	volume_modulation $80, $00