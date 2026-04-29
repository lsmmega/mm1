_objects_screen_moving:
	SEC
	LDA z:zobject_in_process_xcoord
	SBC #$80
	STA z:zscreen_xcoord
	LDA z:zobject_in_process_screen
	SBC #$00
	CMP z:zscreen_end_of_left
	BMI @leftmost
	BCS @check_rightmost

@leftmost:
	LDA z:zscreen_end_of_left
	STA z:zscreen
	JMP @continue

@check_rightmost:
	STA z:zscreen
	CMP z:zscreen_end_of_right
	BNE @not_rightmost

@continue:
	LDA #$00
	STA z:zscreen_xcoord
	BEQ _objects_screen_moving_done

@not_rightmost:
	SEC
	LDA aobject_xcoord
	SBC z:zobject_in_process_xcoord
	STA z:z0C
	LDA aobject_screen
	SBC z:zobject_in_process_screen
	BPL @not_scrolling_right
	SEC
	LDA #$00
	SBC z:z0C
	BEQ _objects_screen_moving_done
	STA z:z0C
	JSR _objects_scrolling_right
	JMP _objects_screen_moving_done

@not_scrolling_right:
	LDA z:z0C
	BEQ _objects_screen_moving_done
	JSR _objects_scrolling_left

_objects_screen_moving_done:
	LDX z:zobject_ram_index
	LDA z:zobject_in_process_screen
	STA aobject_screen, X
	LDA z:zobject_in_process_xcoord
	STA aobject_xcoord, X
	LDA z:zobject_in_process_xcoord_speed
	STA aobject_xcoord_fraction, X
	RTS
