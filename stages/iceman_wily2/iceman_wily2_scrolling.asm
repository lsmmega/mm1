;running right room, then scroll direction
;start
	.BYTE $00

;iceman scroll set
	.BYTE 9 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 5 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 1 | scroll_right
	.BYTE 2 | scroll_right
	.BYTE scroll_end

;wily2 scroll set
	.BYTE 3 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 2 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 2 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
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
