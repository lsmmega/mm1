;running right room, then scroll direction
;start
	.BYTE $00

stage_scroll_set:
;cutman scroll set
	.BYTE 3 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 2 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 2 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 1 | scroll_right
	.BYTE 2 | scroll_right
	.BYTE scroll_end

;wily1 scroll set
	.BYTE 6 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 1 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 1 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_right
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
