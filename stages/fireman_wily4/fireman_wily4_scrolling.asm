;running right room, then scroll direction
;start
	.BYTE $00

;fireman scroll set
	.BYTE 2 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 2 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 2 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 3 | scroll_right
	.BYTE 2 | scroll_right
	.BYTE scroll_end

;wily4 scroll set
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 6 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 1 | scroll_right
	.BYTE scroll_end

;end
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
