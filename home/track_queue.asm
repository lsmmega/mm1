_track_queue:
	LDX z:ztrack_queue_pointer
	CPX #$10
	BEQ @track_queue_e10
	STA atrack_queue, X
	INC z:ztrack_queue_pointer

@track_queue_e10:
	RTS
