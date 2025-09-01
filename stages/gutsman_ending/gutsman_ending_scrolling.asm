;running right room, then scroll direction
;start
	.BYTE $00

;gutsman scroll set
	.BYTE 9 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 1 | scroll_right
	.BYTE 2 | scroll_right
	.BYTE scroll_end

;ending, but informal
	.BYTE $0A

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
