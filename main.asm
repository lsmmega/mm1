.INCLUDE "includes/main.asm"

.SEGMENT "MAIN00"
.INCLUDE "engine/reset.asm"
.INCBIN "main/main_00.bin"

.SEGMENT "MAIN01"
.INCBIN "main/main_01.bin"

.SEGMENT "MAIN"
.INCBIN "main/main_02.bin"
.INCLUDE "main/reset.asm"
.INCBIN "main/main_03.bin"