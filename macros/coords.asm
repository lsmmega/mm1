.MACRO mapdoorcoord b, c, d
;xcoord = b * 2, ycoord = c, background tile index = d
	.BYTE b << 4 | c, d
.ENDMACRO

.MACRO screencoord b, c
	.DBYT $2000 + b + c << 5
.ENDMACRO

.MACRO hiscreencoord b, c
	.HIBYTES $2000 + b + c << 5
.ENDMACRO

.MACRO loscreencoord b, c
	.LOBYTES $2000 + b + c << 5
.ENDMACRO
