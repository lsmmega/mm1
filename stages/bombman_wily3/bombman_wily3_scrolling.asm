;running right room, then scroll direction
;start
	.BYTE $00

;bombman scroll set
	.BYTE 6 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 5 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 4 | scroll_right
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE scroll_end

;wily3 scroll set
	.BYTE 0  | scroll_down
	.BYTE 0  | scroll_down
	.BYTE 0  | scroll_down
	.BYTE 0  | scroll_down
	.BYTE 18 | scroll_right
	.BYTE scroll_end

;unknown scroll set
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
