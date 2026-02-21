.SEGMENT "HOME"
.INCLUDE "constants/bank.asm"
.INCLUDE "constants/nes.asm"
.INCLUDE "constants/stage.asm"
.INCLUDE "constants/uxrom.asm"
.INCLUDE "home/bank.asm"
.INCLUDE "home/reset.asm"
.INCLUDE "home/nmi_wait.asm"
.INCLUDE "home/stage_clear.asm"
.INCLUDE "home/refighting_special_blockset_remove_table.asm"
.INCLUDE "home/clear_points_object.asm"
.INCLUDE "home/clear_points.asm"
.INCLUDE "home/object_clear.asm"
.INCLUDE "home/timer.asm"
.INCLUDE "home/megaman_death.asm"
.INCLUDE "home/explosion_before_table.asm"

_explosion_timer:
.INCBIN  "home/home_4_1_1.bin"
.INCLUDE "home/explosion.asm"
.INCLUDE "home/bankswitch.asm"
.INCLUDE "home/open_menu.asm"
.INCLUDE "home/close_menu.asm"
.INCLUDE "home/object_tiles_prewrite.asm"
.INCBIN  "home/home_5_1.bin"
.INCLUDE "home/short_frozen.asm"
.INCLUDE "home/track_queue.asm"
.INCLUDE "home/init_stage_palette_special_blockset.asm"
.INCLUDE "home/checkpoint_ycoord.asm"
.INCBIN  "home/home_6_0.bin"
.INCLUDE "home/check_object.asm"
.INCLUDE "home/check_object_type.asm"
.INCBIN  "home/home_6_1_0_0.bin"
.INCLUDE "home/scrolling_set.asm"
.INCBIN  "home/home_6_1_0_1.bin"
.INCLUDE "home/init_sprites_index.asm"
.INCBIN  "home/home_6_1_1.bin"
.INCLUDE "home/sprites_tiles_set.asm"
.INCLUDE "home/update_palette.asm"
.INCLUDE "home/tiles_init.asm"
.INCLUDE "home/tiles_address.asm"
.INCBIN  "home/home_6_2.bin"
.INCLUDE "home/items.asm"
.INCLUDE "home/collision.asm"

_boss_death:
.INCBIN  "home/home_9.bin"

	track_queue track_explosion

.INCBIN  "home/home_10.bin"

	track_queue track_door

.INCBIN  "home/home_11_0.bin"
.INCLUDE "home/sprites_timer.asm"
.INCLUDE "home/clear_timer.asm"
.INCLUDE "home/sprites.asm"
.INCLUDE "home/score_addition.asm"
.INCLUDE "home/unfrozen.asm"
.INCLUDE "home/init_sprites.asm"
.INCLUDE "home/weapon_palette.asm"
.INCLUDE "home/nmi_disable.asm"
.INCLUDE "home/nmi.asm"
.INCLUDE "home/joy.asm"
.INCLUDE "home/object_tiles.asm"
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

.INCBIN  "home/home_17_0.bin"
.INCLUDE "home/tiles_update.asm"
.INCBIN  "home/home_17_1.bin"

	track_queue track_refill

.INCBIN  "home/home_18_0.bin"
.INCLUDE "home/object_speed_init.asm"
.INCBIN  "home/home_18_1.bin"
.INCLUDE "home/generate_object.asm"
.INCBIN  "home/home_19_1.bin"

	track_queue track_throw_boulder

.INCBIN  "home/home_20_0.bin"
.INCLUDE "home/create_explosion.asm"
.INCBIN  "home/home_20_1.bin"

	track_queue track_game_over

.INCBIN  "home/home_21.bin"
.INCLUDE "home/object_collision_coord.asm"
.INCLUDE "home/weapon_damage.asm"
.INCLUDE "home/score_table.asm"
.INCBIN  "home/home_22.bin"
.INCLUDE "home/unused/unused_1ff0a.asm"
.INCLUDE "home/vectors.asm"
