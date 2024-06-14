music_stage_select:
	music_pointers
	dw music_stage_select_pulse1
	dw music_stage_select_pulse2
	dw music_stage_select_triangle
	dw 0
	dw music_stage_select_modulation

music_stage_select_pulse1:
	tempo 8
	tempo_number = even

music_stage_select_pulse1_main_loop:
	duty_cycle 3
	volume $8
	modulation $00
	volume_envelope $ff, $20
	base_note G_1
	current_base_note = $13
	note C_4, 4
	note C_4, 4
	note C_4, 4
	note A#3, 4
	note A#3, 4
	note A#3, 4
	note C#4, 4
	note C#4, 4
	note C#4, 4
	note C_4, 4
	note C_4, 4
	note C_4, 4
	note A#3, 4
	note A#3, 4
	note C_4, 4
	note C_4, 4
	note C_4, 4
	note C_4, 4
	note C_4, 4
	note A#3, 4
	note A#3, 4
	note A#3, 4
	note G#3, 4
	note G#3, 4
	note G#3, 4
	note A#3, 4
	note A#3, 4
	note A#3, 4
	note G#3, 4
	note G#3, 4
	note A#3, 4
	note A#3, 4
	loop 0, music_stage_select_pulse1_main_loop
	channel_end

music_stage_select_pulse2:
	tempo 8
	tempo_number = even

music_stage_select_pulse2_main_loop:
	duty_cycle 3
	volume $8
	volume_envelope $ff, $20
	base_note G_1
	current_base_note = $13
	modulation $00
	note D#3, 4
	note D#3, 4
	note D#3, 4
	note D#3, 4
	note D#3, 4
	note D#3, 4
	note D#3, 4
	note D#3, 4
	note D#3, 4
	note D#3, 4
	note D#3, 4
	note D#3, 4
	note D#3, 4
	note D#3, 4
	note D#3, 4
	note D#3, 4
	note C#3, 4
	note C#3, 4
	note C#3, 4
	note C#3, 4
	note C#3, 4
	note C#3, 4
	note C#3, 4
	note C#3, 4
	note C#3, 4
	note C#3, 4
	note C#3, 4
	note C#3, 4
	note C#3, 4
	note C#3, 4
	note C#3, 4
	note C#3, 4
	loop 0, music_stage_select_pulse2_main_loop
	channel_end

music_stage_select_triangle:
	tempo 8
	tempo_number = even

music_stage_select_triangle_main_loop:
	modulation $00
	triangle_linear $81
	base_note G_2
	current_base_note = $1f
	note G#3, 8
	rest, 4
	number_of_note_connect 1
	note G#3, 4
	note G#3, 32
	rest, 8
	note G#3, 4
	note G_3, 4
	note F#3, 8
	rest, 4
	number_of_note_connect 1
	note F#3, 4
	note F#3, 16
	rest, 4
	note F#3, 8
	number_of_note_connect 1
	note F#3, 4
	note F#3, 4
	note F_3, 4
	note F#3, 4
	note G_3, 4
	loop 0, music_stage_select_triangle_main_loop
	channel_end
	
music_stage_select_modulation:
;modulation_$00
	pitch_bend 0, 7, 0
	volume_modulation $80, $00