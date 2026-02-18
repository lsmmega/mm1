.SEGMENT "BANK06"
.INCLUDE "constants/flags.asm"
.INCLUDE "constants/oam.asm"
.INCLUDE "constants/objects.asm"
.INCLUDE "sprites/pointers/oam_sprites_pointers.asm"
.INCLUDE "sprites/pointers/oam_frameset_pointers.asm"
.INCLUDE "sprites/pointers/oamcoord_index_pointers.asm"
.INCLUDE "sprites/oamcoord.asm"
.INCBIN  "6/6_0.bin"
.INCLUDE "sprites/pointers/oam_enemies_sprites_pointers.asm"
.INCLUDE "sprites/pointers/oam_enemies_frameset_pointers.asm"
.INCLUDE "sprites/oam_sprites.asm"
.INCLUDE "sprites/oam_enemies_sprites.asm"
.INCLUDE "sprites/oamcoord_index.asm"
.INCLUDE "sprites/oam_frameset.asm"
.INCLUDE "sprites/oam_enemies_frameset.asm"
.INCLUDE "objects/objects_default_flags.asm"
.INCLUDE "objects/objects_speed_index.asm"
.INCLUDE "objects/objects_move_delay.asm"
.INCLUDE "stages/objects_set_pointers.asm"
.INCLUDE "stages/cutman_wily1/cutman_objects_set.asm"
.INCLUDE "stages/iceman_wily2/iceman_objects_set.asm"
.INCLUDE "stages/bombman_wily3/bombman_objects_set.asm"
.INCLUDE "stages/fireman_wily4/fireman_objects_set.asm"
.INCLUDE "stages/elecman/elecman_objects_set.asm"
.INCLUDE "stages/gutsman_ending/gutsman_objects_set.asm"
.INCLUDE "stages/cutman_wily1/wily1_objects_set.asm"
.INCLUDE "stages/iceman_wily2/wily2_objects_set.asm"
.INCLUDE "stages/bombman_wily3/wily3_objects_set.asm"
.INCLUDE "stages/fireman_wily4/wily4_objects_set.asm"
.INCLUDE "stages/elecman/elecman_unknown_objects_set.asm"
.INCBIN  "6/6_1.bin"
.INCLUDE "screen/ending.asm"
.INCBIN  "6/6_2.bin"

	track_queue track_pause

.INCBIN  "6/6_3.bin"

	track_queue track_select

.INCBIN  "6/6_4.bin"

	track_queue track_stage_select

.INCBIN  "6/6_5.bin"

	track_queue track_select

.INCBIN  "6/6_6.bin"

	track_queue track_press_start
	track_queue track_boss_show

.INCBIN  "6/6_7.bin"

	track_queue track_points

.INCBIN  "6/6_8.bin"
.INCBIN  "6/6_9.bin"

	track_queue track_wily_ufo

.INCBIN  "6/6_10.bin"
.INCLUDE "screen/stage_select.asm"
.INCBIN  "6/6_11.bin"

__open_menu_store:
.INCBIN  "6/6_12.bin"
