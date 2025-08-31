.MACRO mapcoord b, c, d
;xcoord = b * 2, ycoord = c, background tile index = d
	.BYTE b << 4 | c, d
.ENDMACRO
