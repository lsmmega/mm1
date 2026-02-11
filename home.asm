.SEGMENT "HOME"
.INCLUDE "constants/bank.asm"
.INCLUDE "constants/nes.asm"
.INCLUDE "constants/stage.asm"
.INCLUDE "constants/uxrom.asm"
.INCLUDE "home/bank.asm"
.INCLUDE "home/reset.asm"
.INCLUDE "home/nmi_wait.asm"
.INCBIN  "home/home_0.bin"

	track_queue track_wily_defeated

.INCBIN  "home/home_1.bin"

	track_queue track_boss_defeated

.INCBIN  "home/home_2.bin"

	track_queue track_points

.INCBIN  "home/home_3.bin"

	track_queue track_megaman_death

.INCBIN  "home/home_4.bin"

	track_queue track_explosion

.INCBIN  "home/home_5_0.bin"
.INCLUDE "home/bankswitch.asm"
.INCBIN  "home/home_5_1.bin"
.INCLUDE "home/track_queue.asm"
.INCBIN  "home/home_6.bin"

	track_queue track_pickup_ball

.INCBIN  "home/home_7.bin"

	track_queue track_pickup_ball

.INCBIN  "home/home_8.bin"

	track_queue track_enemy_hit

.INCBIN  "home/home_9.bin"

	track_queue track_explosion

.INCBIN  "home/home_10.bin"

	track_queue track_door

.INCBIN  "home/home_11_0.bin"
.INCLUDE "home/sprites.asm"
.INCBIN  "home/home_11_1.bin"
.INCLUDE "home/init_sprites.asm"
.INCBIN  "home/home_11_2.bin"
.INCLUDE "home/nmi_disable.asm"
.INCLUDE "home/nmi.asm"
.INCLUDE "home/joy.asm"
.INCLUDE "home/object_tile.asm"
.INCLUDE "home/palette.asm"
.INCLUDE "home/screen.asm"
.INCBIN  "home/home_11_3.bin"

	track_queue track_cutman_move

.INCBIN  "home/home_12.bin"

	track_queue track_cutman_move

.INCBIN  "home/home_13.bin"

	track_queue track_rolling_cutter

.INCBIN  "home/home_14.bin"

	track_queue track_ice_slasher

.INCBIN  "home/home_15.bin"

	track_queue track_thunder_beam

.INCBIN  "home/home_16.bin"

	track_queue track_earthquake

.INCBIN  "home/home_17.bin"

	track_queue track_refill

.INCBIN  "home/home_18.bin"

	track_queue track_enemy_bullet

.INCBIN  "home/home_19.bin"

	track_queue track_throw_boulder

.INCBIN  "home/home_20.bin"

	track_queue track_game_over

.INCBIN  "home/home_21.bin"
;.INCLUDE "home/nmi.asm"
.INCLUDE "home/vectors.asm"
