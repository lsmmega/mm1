music_cut:
	music_pointers
	dw music_cut_pulse1
	dw music_cut_pulse2
	dw music_cut_triangle
	dw music_cut_noise
	dw music_cut_modulation

music_cut_pulse1:
	tempo 6
	tempo_number = even
	duty_cycle 1
	volume $a
	volume_envelope $ff, $40
	base_note E_2
	current_base_note = $1c
	note E_4, 8
	note E_4, 8
	note E_4, 8
	note E_4, 4
	note E_4, 4
	rest, 4
	note E_4, 4
	note E_4, 4
	note E_4, 4
	note E_4, 8
	note E_4, 8
	note E_4, 8
	note E_4, 8
	note E_4, 4
	note E_4, 4
	note E_4, 4
	note E_4, 4
	note E_4, 4
	note E_4, 4
	note E_4, 4
	note E_4, 4
	note F#4, 8
	note G#4, 8

music_cut_pulse1_main_loop:
	volume $9
	duty_cycle 1
	volume_envelope $cf, $40
	base_note E_3
	current_base_note = $28
	note A_4, 2
	note A_5, 2
	rest, 2
	volume $9
	note A_5, 2
	base_note E_2
	current_base_note = $1c
	volume $a
	rest, 16
	rest, 8
	note B_3, 4
	note C_4, 4
	rest, 4
	note D_4, 4
	rest, 4
	note C_4, 4
	rest, 4
	note B_3, 4
	rest, 4
	note C_4, 4
	number_of_note_connect 1
	note E_3, 8
	modulation $01
	dotted_set
	note E_3, 32
	modulation $00
	base_note E_3
	current_base_note = $28
	note A_4, 2
	note A_5, 2
	rest, 2
	volume $9
	note A_5, 2
	base_note E_2
	current_base_note = $1c
	volume $a
	rest, 16
	rest, 8
	note B_3, 4
	note C_4, 4
	rest, 4
	note D_4, 4
	rest, 4
	note C_4, 4
	rest, 4
	note B_3, 4
	rest, 4
	note D_4, 4
	number_of_note_connect 1
	note E_4, 8
	modulation $01
	dotted_set
	note E_4, 32
	modulation $00
	note F_4, 4
	rest, 4
	rest, 8
	rest, 16
	note F_4, 4
	note G_4, 4
	rest, 4
	note F_4, 4
	rest, 4
	note E_4, 4
	rest, 4
	note D_4, 4
	note E_4, 4
	rest, 4
	rest, 8
	rest, 16
	note E_4, 4
	note F_4, 4
	rest, 4
	note E_4, 4
	rest, 4
	note D_4, 4
	rest, 4
	note C_4, 4
	note D#4, 8
	rest, 16
	number_of_note_connect 1
	note B_3, 8
	note B_3, 8
	note B_3, 8
	note C#4, 8
	note D#4, 8
	note E_4, 64
	base_note E_3
	current_base_note = $28
	note A_4, 2
	note A_5, 2
	rest, 2
	volume $9
	note A_5, 2
	volume $a
	base_note E_2
	current_base_note = $1c
	rest, 16
	rest, 8
	note B_3, 4
	note C_4, 4
	rest, 4
	note D_4, 4
	rest, 4
	note C_4, 4
	rest, 4
	note B_3, 4
	rest, 4
	note C_4, 4
	number_of_note_connect 1
	note E_3, 8
	modulation $01
	dotted_set
	note E_3, 32
	modulation $00
	base_note E_3
	current_base_note = $28
	note A_4, 2
	note A_5, 2
	rest, 2
	volume $7
	note A_5, 2
	volume $9
	base_note E_2
	current_base_note = $1c
	rest, 16
	rest, 8
	note B_3, 4
	note C_4, 4
	rest, 4
	note D_4, 4
	rest, 4
	note C_4, 4
	rest, 4
	note B_3, 4
	rest, 4
	note D_4, 4
	number_of_note_connect 1
	note E_4, 8
	modulation $01
	dotted_set
	note E_4, 32
	modulation $00
	note F_4, 4
	rest, 4
	rest, 8
	rest, 16
	note F_4, 4
	note G_4, 4
	rest, 4
	note F_4, 4
	rest, 4
	note E_4, 4
	rest, 4
	note D_4, 4
	note E_4, 4
	rest, 4
	rest, 8
	rest, 16
	note E_4, 4
	note F_4, 4
	rest, 4
	note E_4, 4
	rest, 4
	note D_4, 4
	rest, 4
	note C_4, 4
	note B_3, 8
	rest, 16
	note A_3, 16
	note G#3, 8
	note F#3, 8
	note G#3, 8
	note A_3, 32
	base_note E_2
	current_base_note = $1c
	modulation $01
	triplet_set
	note A_2, 2
	triplet_set
	note B_2, 2
	triplet_set
	note C_3, 2
	triplet_set
	note C#3, 2
	triplet_set
	note D_3, 2
	triplet_set
	note D#3, 2
	triplet_set
	note E_3, 2
	triplet_set
	note F_3, 2
	triplet_set
	note F#3, 2
	triplet_set
	note G_3, 2
	triplet_set
	note G#3, 2
	triplet_set
	note A_3, 2
	triplet_set
	note A#3, 2
	triplet_set
	note B_3, 2
	triplet_set
	note C_4, 2
	triplet_set
	note C#4, 2
	triplet_set
	note D_4, 2
	triplet_set
	note D#4, 2
	triplet_set
	note E_4, 2
	triplet_set
	note F_4, 2
	triplet_set
	note F#4, 2
	triplet_set
	note G_4, 2
	triplet_set
	note G#4, 2
	triplet_set
	note A_4, 2
	modulation $02
	duty_cycle 1
	volume_envelope $ff, $10
	volume $9
	base_note E_3
	current_base_note = $28
	note A_4, 32
	rest, 8
	note B_4, 16
	note A_4, 8
	base_note E_2
	current_base_note = $1c
	note G_4, 64
	note F_4, 32
	rest, 8
	note G_4, 16
	note F_4, 8
	note E_4, 8
	note F_4, 8
	note F#4, 8
	note G_4, 8
	rest, 32
	note A_4, 32
	rest, 8
	base_note E_3
	current_base_note = $28
	note B_4, 16
	note A_4, 8
	note G_4, 8
	note G_4, 8
	note D_5, 8
	dotted_set
	note C_5, 16
	rest, 16
	note A_4, 4
	note A_4, 4
	rest, 4
	note A_4, 4
	note A_4, 4
	note A_4, 4
	note A_4, 4
	rest, 4
	note A_4, 4
	note A_4, 8
	note A_4, 4
	note B_4, 8
	number_of_note_connect 1
	note A_4, 8
	note A_4, 32
	note G#4, 32
	loop 0, music_cut_pulse1_main_loop

music_cut_pulse2:
	tempo 6
	tempo_number = even
	volume $7
	duty_cycle 1
	volume_envelope $ff, $40
	base_note E_2
	current_base_note = $1c
	note G#3, 8
	note G#3, 8
	note G#3, 8
	note G#3, 4
	note G#3, 4
	rest, 4
	note G#3, 4
	note G#3, 4
	note G#3, 4
	note G#3, 8
	note G#3, 8
	note G#3, 8
	note G#3, 8
	note G#3, 4
	note G#3, 4
	note G#3, 4
	note G#3, 4
	note G#3, 4
	note G#3, 4
	note G#3, 4
	note G#3, 4
	note A_3, 8
	note B_3, 8

music_cut_pulse2_main_loop:
	volume $6
	duty_cycle 1
	volume_envelope $cf, $40
	modulation $00

music_cut_pulse2_loop1:
	base_note E_2
	current_base_note = $1c
	note A_3, 4
	note A_3, 4
	note E_3, 4
	note G_3, 4
	rest, 4
	note A_3, 4
	note E_3, 4
	note G_3, 4
	rest, 4
	note A_3, 4
	note E_3, 4
	note G_3, 4
	note A_3, 4
	note A_3, 4
	rest, 4
	note A_3, 4
	loop 3, music_cut_pulse2_loop1
	note D_3, 4
	note D_3, 4
	note A_2, 4
	note C_3, 4
	rest, 4
	note D_3, 4
	note A_2, 4
	note C_3, 4
	rest, 4
	note D_3, 4
	note A_2, 4
	note C_3, 4
	note D_3, 4
	note D_3, 4
	rest, 4
	note D_3, 4
	note A_3, 4
	note A_3, 4
	note E_3, 4
	note G_3, 4
	rest, 4
	note A_3, 4
	note E_3, 4
	note G_3, 4
	rest, 4
	note A_3, 4
	note E_3, 4
	note G_3, 4
	note A_3, 4
	note A_3, 4
	rest, 4
	note A_3, 4
	note B_2, 4
	note B_2, 4
	note F#2, 4
	note A_2, 4
	rest, 4
	note B_2, 4
	note F#2, 4
	note A_2, 4
	rest, 4
	note B_2, 4
	note F#2, 4
	note A_2, 4
	note B_2, 4
	note B_2, 4
	rest, 4
	note B_2, 4
	note E_3, 4
	note E_3, 4
	note B_2, 4
	note D_3, 4
	rest, 4
	note E_3, 4
	note B_2, 4
	note D_3, 4
	rest, 4
	note E_3, 4
	note B_2, 4
	note D_3, 4
	note E_3, 4
	note E_3, 4
	rest, 4
	base_note E_2
	current_base_note = $1c
	note E_3, 4

music_cut_pulse2_loop2:
	base_note E_2
	current_base_note = $1c
	note A_3, 4
	note A_3, 4
	note E_3, 4
	note G_3, 4
	rest, 4
	note A_3, 4
	note E_3, 4
	note G_3, 4
	rest, 4
	note A_3, 4
	note E_3, 4
	note G_3, 4
	note A_3, 4
	note A_3, 4
	rest, 4
	note A_3, 4
	loop 3, music_cut_pulse2_loop2
	note D_3, 4
	note D_3, 4
	note A_2, 4
	note C_3, 4
	rest, 4
	note D_3, 4
	note A_2, 4
	note C_3, 4
	rest, 4
	note D_3, 4
	note A_2, 4
	note C_3, 4
	note D_3, 4
	note D_3, 4
	rest, 4
	note D_3, 4
	note A_3, 4
	note A_3, 4
	note E_3, 4
	note G_3, 4
	rest, 4
	note A_3, 4
	note E_3, 4
	note G_3, 4
	rest, 4
	note A_3, 4
	note E_3, 4
	note G_3, 4
	note A_3, 4
	note A_3, 4
	rest, 4
	note A_3, 4
	note B_2, 4
	note B_2, 4
	note F#2, 4
	note A_2, 4
	rest, 4
	note B_2, 4
	note F#2, 4
	note A_2, 4
	note E_3, 4
	note E_3, 4
	note B_2, 4
	note D_3, 4
	note E_3, 4
	note E_3, 4
	rest, 4
	note E_3, 4
	note A_3, 4
	note A_3, 4
	note E_3, 4
	note G_3, 4
	rest, 4
	note A_3, 4
	note E_3, 4
	note G_3, 4
	rest, 4
	note A_3, 4
	note E_3, 4
	note G_3, 4
	note A_3, 4
	note A_3, 4
	rest, 8
	modulation $02
	duty_cycle 1
	volume $6
	volume_envelope $ff, $10
	base_note E_3
	current_base_note = $28
	rest, 4
	rest, 2
	note A_4, 32
	rest, 8
	note B_4, 16
	note A_4, 8
	base_note E_2
	current_base_note = $1c
	note G_4, 64
	note F_4, 32
	rest, 8
	note G_4, 16
	note F_4, 8
	note E_4, 8
	note F_4, 8
	note F#4, 8
	note G_4, 8
	rest, 32
	note A_4, 32
	rest, 8
	base_note E_3
	current_base_note = $28
	note B_4, 16
	note A_4, 8
	note G_4, 8
	note G_4, 8
	note D_5, 8
	dotted_set
	note C_5, 16
	rest, 16
	note A_4, 4
	note A_4, 4
	rest, 4
	note A_4, 4
	note A_4, 4
	note A_4, 4
	note A_4, 4
	rest, 4
	note A_4, 4
	note A_4, 8
	note A_4, 4
	note B_4, 8
	number_of_note_connect 1
	note A_4, 8
	note A_4, 32
	number_of_note_connect 1
	note G#4, 16
	rest, 8
	note G#4, 2
	base_note E_2
	current_base_note = $1c
	loop 0, music_cut_pulse2_main_loop

music_cut_triangle:
	tempo 6
	tempo_number = even
	modulation $01
	triangle_linear $30
	base_note E_1
	current_base_note = $10

music_cut_triangle_loop1:
	note E_2, 8
	note E_2, 8
	note B_2, 4
	note B_2, 8
	note B_2, 4
	note E_2, 4
	note E_2, 8
	note E_2, 4
	note E_3, 8
	note E_2, 8
	loop 1, music_cut_triangle_loop1

music_cut_triangle_main_loop:
	triangle_linear $50
	base_note E_1
	current_base_note = $10

music_cut_triangle_loop2:
	note A_2, 8
	note A_2, 8
	note E_3, 4
	note E_3, 8
	note E_3, 4
	note A_2, 4
	note A_2, 8
	note A_2, 4
	note E_3, 8
	note E_2, 8
	loop 3, music_cut_triangle_loop2
	note D_2, 8
	note D_2, 8
	note A_2, 4
	note A_2, 8
	note A_2, 4
	note D_2, 4
	note D_2, 8
	note D_2, 4
	note A_2, 8
	note D_2, 8
	note A_2, 8
	note A_2, 8
	note E_3, 4
	note E_3, 8
	note E_3, 4
	note A_2, 4
	note A_2, 8
	note A_2, 4
	note E_3, 8
	note E_2, 8
	note F#2, 8
	note F#2, 8
	note D#3, 4
	note D#3, 8
	note D#3, 4
	note F#2, 4
	note F#2, 8
	note F#2, 4
	note D#3, 8
	note D#2, 8
	note E_2, 8
	note E_2, 8
	note B_2, 4
	note B_2, 8
	note B_2, 4
	note E_2, 4
	note E_2, 8
	note E_2, 4
	note E_3, 8
	note E_2, 8

music_cut_triangle_loop3:
	note A_2, 8
	note A_2, 8
	note E_3, 4
	note E_3, 8
	note E_3, 4
	note A_2, 4
	note A_2, 8
	note A_2, 4
	note E_3, 8
	note E_2, 8
	loop 3, music_cut_triangle_loop3
	note D_2, 8
	note D_2, 8
	note A_2, 4
	note A_2, 8
	note A_2, 4
	note D_2, 4
	note D_2, 8
	note D_2, 4
	note A_2, 8
	note D_2, 8
	note A_2, 8
	note A_2, 8
	note E_3, 4
	note E_3, 8
	note E_3, 4
	note A_2, 4
	note A_2, 8
	note A_2, 4
	note E_3, 8
	note E_2, 8
	note F#2, 8
	note F#2, 8
	note D#3, 4
	note D#3, 8
	note D#3, 4
	note E_2, 4
	note E_2, 8
	note E_2, 4
	note E_3, 8
	note E_2, 8
	note A_2, 8
	note A_2, 8
	note E_3, 4
	note E_3, 8
	note E_3, 4
	note A_2, 4
	note A_2, 8
	note A_2, 4
	note E_3, 8
	note E_2, 8
	note F_2, 8
	note F_2, 8
	note F_3, 4
	note F_3, 8
	note F_3, 4
	note G_2, 4
	note G_2, 8
	note G_2, 4
	note G_3, 8
	note G_3, 8
	note C_2, 8
	note C_2, 8
	note C_3, 4
	note C_3, 8
	note C_3, 4
	note C_2, 4
	note C_2, 8
	note C_2, 4
	note C_3, 8
	note C_3, 8
	note D_2, 8
	note D_2, 8
	note D_3, 4
	note D_3, 8
	note C_3, 4
	note B_2, 4
	note B_2, 8
	note B_2, 4
	note B_2, 8
	note B_2, 8
	note C_2, 8
	note C_2, 8
	note C_3, 4
	note C_3, 8
	note C_3, 4
	note C_2, 4
	note C_2, 8
	note C_2, 4
	note C_3, 8
	note C_3, 8
	note F_2, 8
	note F_2, 8
	note F_3, 4
	note F_3, 8
	note F_3, 4
	note G_2, 4
	note G_2, 8
	note G_2, 4
	note G_3, 8
	note G_3, 8
	note E_2, 8
	note E_2, 8
	note E_3, 4
	note E_3, 8
	note E_3, 4
	note A_2, 4
	note A_2, 8
	note A_2, 4
	note A_3, 8
	note A_3, 8
	note D_2, 8
	note D_2, 8
	note D_3, 4
	note D_3, 8
	note D_3, 4
	note D#2, 4
	note D#2, 8
	note D#2, 4
	note D#3, 8
	note D#3, 8
	note E_2, 8
	note E_2, 8
	note E_3, 4
	note E_3, 8
	note E_3, 4
	note E_2, 4
	note E_2, 8
	note E_2, 4
	note E_3, 8
	note E_3, 8
	loop 0, music_cut_triangle_main_loop

music_cut_noise:
	tempo 6
	tempo_number = even

music_cut_noise_main_loop:
	volume $7
	volume_envelope $83, $30
	noise_note 10, 8
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 8
	noise_note 10, 4
	noise_note 10, 4
	rest, 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 8
	noise_note 10, 8
	noise_note 10, 8
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 8
	noise_note 10, 4
	noise_note 10, 4
	rest, 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 4
	loop 0, music_cut_noise_main_loop

music_cut_modulation:
;modulation_$00
	pitch_bend 0, 7, 0
	volume_modulation $80, $00

;modulation_$01
	pitch_bend 1, 3, 2
	volume_modulation $80, $00

;modulation_$02
	pitch_bend 2, 1, 2
	volume_modulation $80, $00