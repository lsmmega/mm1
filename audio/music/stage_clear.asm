music_stage_clear:
	music_pointers
	dw music_stage_clear_pulse1
	dw music_stage_clear_pulse2
	dw music_stage_clear_triangle
	dw music_stage_clear_noise
	dw music_stage_clear_modulation

music_stage_clear_pulse1:
	tempo 4
	tempo_number = even
	duty_cycle 3
	volume $f
	modulation $00
	volume_envelope $a0, $20
	base_note C#2
	current_base_note = $19

music_stage_clear_pulse1_loop1:
	triplet_set
	note E_4, 8
	triplet_set
	note B_3, 8
	triplet_set
	note G#3, 8
	triplet_set
	note E_3, 8
	triplet_set
	note B_2, 8
	triplet_set
	note G#2, 8
	triplet_set
	note E_2, 8
	triplet_set
	note G#2, 8
	triplet_set
	note B_2, 8
	triplet_set
	note E_3, 8
	triplet_set
	note G#3, 8
	triplet_set
	note B_3, 8
	loop 1, music_stage_clear_pulse1_loop1
	tempo 6
	tempo_number = even
	base_note C#3
	current_base_note = $25
	note E_4, 4
	rest, 8
	note E_4, 4
	tempo 7
	tempo_number = odd
	note E_4, 16
	triplet_set
	note F#4, 16
	triplet_set
	note E_4, 16
	triplet_set
	note F#4, 16
	modulation $01
	tempo 8
	tempo_number = even
	note G#4, 64
	channel_end

music_stage_clear_pulse2:
	tempo 4
	tempo_number = even
	duty_cycle 3
	volume $a
	modulation $00
	base_note C#3
	current_base_note = $25
	volume_envelope $a0, $20
	rest, 4
	triplet_set
	note E_5, 8
	triplet_set
	note B_4, 8
	triplet_set
	note G#4, 8
	triplet_set
	note E_4, 8
	triplet_set
	note B_3, 8
	triplet_set
	note G#3, 8
	triplet_set
	note E_3, 8
	triplet_set
	note G#3, 8
	triplet_set
	note B_3, 8
	triplet_set
	note E_4, 8
	triplet_set
	note G#4, 8
	triplet_set
	note B_4, 8
	triplet_set
	note E_5, 8
	triplet_set
	note B_4, 8
	triplet_set
	note G#4, 8
	triplet_set
	note E_4, 8
	triplet_set
	note B_3, 8
	triplet_set
	note G#3, 8
	triplet_set
	note E_3, 8
	triplet_set
	note G#3, 8
	triplet_set
	note B_3, 8
	triplet_set
	note E_4, 8
	triplet_set
	note G#4, 8
	triplet_set
	note B_4, 4
	tempo 6
	tempo_number = even
	note C_5, 4
	rest, 8
	note C_5, 4
	tempo 7
	tempo_number = odd
	note C_5, 16
	triplet_set
	note D_5, 16
	triplet_set
	note C_5, 16
	triplet_set
	note D_5, 16
	modulation $01
	tempo 8
	tempo_number = even
	note E_5, 64
	channel_end

music_stage_clear_triangle:
	tempo 4
	tempo_number = even
	modulation $00
	base_note C#2
	current_base_note = $19
	triangle_linear $81
	note E_3, 64
	note D_3, 64
	tempo 6
	tempo_number = even
	number_of_note_connect 1
	note C_3, 16
	tempo 7
	tempo_number = odd
	note C_3, 16
	triplet_set
	note D_3, 16
	triplet_set
	note D_3, 16
	triplet_set
	note D_3, 16
	modulation $01
	tempo 8
	tempo_number = even
	note E_3, 64
	channel_end

music_stage_clear_noise:
	tempo 4
	tempo_number = even
	volume $a
	volume_envelope $82, $20

music_stage_clear_noise_loop1:
	triplet_set
	noise_note 10, 8
	triplet_set
	rest, 16
	triplet_set
	noise_note 10, 8
	triplet_set
	noise_note 10, 8
	triplet_set
	noise_note 10, 8
	noise_note 10, 8
	noise_note 10, 8
	noise_note 10, 8
	noise_note 10, 8
	loop 1, music_stage_clear_noise_loop1
	tempo 6
	tempo_number = even
	triplet_set
	noise_note 10, 8
	triplet_set
	noise_note 10, 8
	triplet_set
	noise_note 10, 8
	tempo 7
	tempo_number = odd
	triplet_set
	noise_note 10, 8
	triplet_set
	noise_note 10, 8
	triplet_set
	noise_note 10, 8
	triplet_set
	noise_note 10, 16
	triplet_set
	noise_note 10, 16
	triplet_set
	noise_note 10, 16

music_stage_clear_noise_loop2:
	tempo 8
	tempo_number = even
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	noise_note 10, 2
	loop 1, music_stage_clear_noise_loop2
	channel_end

music_stage_clear_modulation:
;modulation_$00
	pitch_bend 0, 7, 0
	volume_modulation $80, $00

;modulation_$01
	pitch_bend 2, 1, 2
	volume_modulation $80, $00