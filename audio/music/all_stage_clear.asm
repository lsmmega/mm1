music_all_stage_clear:
	music_pointers
	channel_flags = $f
	channel_1, music_all_stage_clear_pulse1
	channel_2, music_all_stage_clear_pulse2
	channel_3, music_all_stage_clear_triangle
	channel_4, music_all_stage_clear_noise
	dw music_all_stage_clear_modulation

music_all_stage_clear_pulse1:
	tempo 6
	tempo_number = even
	duty_cycle 2
	volume $c
	volume_envelope $ff, $10
	base_note F_2
	current_base_note = $1d
	note C#3, 2
	note F_3, 2
	note G#3, 2
	note C#4, 2
	note F_3, 2
	note G#3, 2
	note C#4, 2
	note F_4, 2
	note G#3, 2
	note C#4, 2
	note F_4, 2
	note E_3, 2
	note B_3, 2
	note C#4, 2
	note F_4, 2
	note G#4, 2
	base_note F_3
	current_base_note = $29
	note C#4, 2
	note F_4, 2
	note G#4, 2
	note C#5, 2
	note F_4, 2
	note G#4, 2
	note C#5, 2
	note F_5, 2
	note G#4, 2
	note C#5, 2
	note F_5, 2
	note E_4, 2
	note B_4, 2
	note C#5, 2
	note F_5, 2
	note G#5, 2
	tempo 7
	tempo_number = odd
	base_note F_2
	current_base_note = $1d
	dotted_set
	note C#4, 32
	triplet_set
	rest, 8
	triplet_set
	note C#4, 8
	triplet_set
	note C#4, 8
	note E_4, 32
	note D_4, 32
	dotted_set
	note C#4, 32
	triplet_set
	rest, 8
	triplet_set
	note C#4, 8
	triplet_set
	note C#4, 8
	note E_4, 16
	triplet_set
	rest, 8
	triplet_set
	note E_4, 8
	triplet_set
	note E_4, 8
	note F#4, 16
	triplet_set
	rest, 8
	triplet_set
	note F#4, 8
	triplet_set
	note F#4, 8
	note G#4, 4
	rest, 8
	note F#4, 4
	note G#4, 32
	tempo 9
	tempo_number = odd
	triplet_set
	note G#4, 8
	triplet_set
	note G#4, 8
	triplet_set
	note G#4, 8
	tempo 12
	number_of_note_connect 1
	note A#4, 16
	modulation $01
	dotted_set
	note A#4, 32
	music_channel_end

music_all_stage_clear_pulse2:
	tempo 6
	tempo_number = even
	duty_cycle 2
	volume $9
	volume_envelope $ff, $10
	base_note F_2
	current_base_note = $1d
	note G#2, 2
	note C#3, 2
	note F_3, 2
	note G#3, 2
	note B_2, 2
	note C#3, 2
	note F_3, 2
	note G#3, 2
	note C#3, 2
	note F_3, 2
	note G#3, 2
	note C#4, 2
	note F_3, 2
	note G#3, 2
	note C#4, 2
	note F_4, 2
	base_note F_3
	current_base_note = $29
	note G#3, 2
	note C#4, 2
	note F_4, 2
	note G#4, 2
	note B_3, 2
	note C#4, 2
	note F_4, 2
	note G#4, 2
	note C#4, 2
	note F_4, 2
	note G#4, 2
	note C#5, 2
	note F_4, 2
	note G#4, 2
	note C#5, 2
	note F_5, 2
	tempo 7
	tempo_number = odd
	base_note F_2
	current_base_note = $1d
	dotted_set
	note A#3, 32
	triplet_set
	rest, 8
	triplet_set
	note A#3, 8
	triplet_set
	note A#3, 8
	note C#4, 32
	note B_3, 32
	dotted_set
	note A#3, 32
	triplet_set
	rest, 8
	triplet_set
	note A#3, 8
	triplet_set
	note A#3, 8
	note C#4, 16
	triplet_set
	rest, 8
	triplet_set
	note C#4, 8
	triplet_set
	note C#4, 8
	note D_4, 16
	triplet_set
	rest, 8
	triplet_set
	note D_4, 8
	triplet_set
	note D_4, 8
	note C#4, 4
	rest, 8
	note C#4, 4
	note C#4, 32
	tempo 9
	tempo_number = odd
	triplet_set
	note C#4, 8
	triplet_set
	note C#4, 8
	triplet_set
	note C#4, 8
	tempo 12
	tempo_number = even
	number_of_note_connect 1
	note C#4, 16
	modulation $01
	dotted_set
	note C#4, 32
	music_channel_end

music_all_stage_clear_triangle:
	tempo 6
	tempo_number = even
	modulation $00
	triangle_linear $81
	base_note F_2
	current_base_note = $1d
	note C#3, 64
	tempo 7
	tempo_number = odd

music_all_stage_clear_triangle_loop1:
	note F#3, 8
	note C#3, 8
	loop 3, music_all_stage_clear_triangle_loop1

music_all_stage_clear_triangle_loop2:
	note E_3, 8
	loop 3, music_all_stage_clear_triangle_loop2

music_all_stage_clear_triangle_loop3:
	note D_3, 8
	loop 3, music_all_stage_clear_triangle_loop3

music_all_stage_clear_triangle_loop4:
	note F#3, 8
	note C#3, 8
	loop 3, music_all_stage_clear_triangle_loop4

music_all_stage_clear_triangle_loop5:
	note E_3, 8
	loop 3, music_all_stage_clear_triangle_loop5

music_all_stage_clear_triangle_loop6:
	note D_3, 8
	loop 3, music_all_stage_clear_triangle_loop6

music_all_stage_clear_triangle_loop7:
	note C#3, 8
	loop 4, music_all_stage_clear_triangle_loop7
	tempo 9
	tempo_number = odd
	rest, 8
	triplet_set
	note C#3, 8
	triplet_set
	note C#3, 8
	triplet_set
	note C#3, 8
	tempo 12
	tempo_number = even
	number_of_note_connect 1
	note F#3, 16
	modulation $01
	dotted_set
	note F#3, 32
	music_channel_end

music_all_stage_clear_noise:
	tempo 6
	tempo_number = even
	volume $9
	volume_envelope $81, $10
	rest, 64
	tempo 7
	tempo_number = odd

music_all_stage_clear_noise_loop1:
	noise_note 10, 4
	rest, 4
	triplet_set
	noise_note 10, 4
	triplet_set
	noise_note 10, 4
	triplet_set
	noise_note 10, 4
	noise_note 10, 4
	rest, 4
	triplet_set
	noise_note 10, 4
	triplet_set
	noise_note 10, 4
	triplet_set
	noise_note 10, 4
	noise_note 10, 4
	rest, 4
	noise_note 10, 4
	rest, 4
	noise_note 10, 4
	rest, 4
	noise_note 10, 4
	rest, 4
	loop 3, music_all_stage_clear_noise_loop1

music_all_stage_clear_noise_loop2:
	noise_note 10, 4
	rest, 4
	triplet_set
	noise_note 10, 4
	triplet_set
	noise_note 10, 4
	triplet_set
	noise_note 10, 4
	loop 2, music_all_stage_clear_noise_loop2
	tempo 9
	tempo_number = odd

music_all_stage_clear_noise_loop3:
	triplet_set
	noise_note 10, 4
	loop 5, music_all_stage_clear_noise_loop3
	tempo 12
	tempo_number = even
	
music_all_stage_clear_noise_loop4:
	noise_note 10, 2
	loop 24, music_all_stage_clear_noise_loop4
	music_channel_end
	
music_all_stage_clear_modulation:
;modulation_0
	pitch_bend 0, 7, 0
	volume_modulation $80, $00

;modulation_1
	pitch_bend 1, 3, 2
	volume_modulation $80, $00