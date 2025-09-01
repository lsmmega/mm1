.MACRO mapdoorcoord b, c, d
;xcoord = b * 2, ycoord = c, background tile index = d
	.BYTE b << 4 | c, d
.ENDMACRO

.MACRO leftscreencoord b, c
	.DBYT $2000 + b + c << 5
.ENDMACRO

.MACRO hileftscreencoord b, c
	.HIBYTES $2000 + b + c << 5
.ENDMACRO

.MACRO loleftscreencoord b, c
	.LOBYTES $2000 + b + c << 5
.ENDMACRO

.MACRO rightscreencoord b, c
	.DBYT $2400 + b + c << 5
.ENDMACRO
