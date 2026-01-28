rom_obj := \
	header.o \
	main.o

cfg := \
	mm1.cfg

header := \
	header.asm \
	constants/*

home := \
	home.asm \
	ram/* \
	home/*

stages := \
	stages.asm \
	constants/* \
	macros/* \
	stages/cutman_wily1/* \
	unknown/* \
	gfx/sprites/megaman/*.bmp \
	gfx/sprites/bosses/*.bmp \
	gfx/sprites/bosses/fireman/*.bmp \
	gfx/stages/regular/*.bmp \
	gfx/menus/*.bmp \
	gfx/sprites/miscellaneous/*.bmp \
	gfx/font/*.bmp \
	gfx/stage_select/*.bmp \
	gfx/title/*.bmp \
	stages/iceman_wily2/* \
	stages/bombman_wily3/* \
	gfx/sprites/weapons/*.bmp \
	gfx/sprites/bosses/cwu_01p/*.bmp \
	gfx/sprites/unknown/*.bmp \
	gfx/sprites/title/*.bmp \
	gfx/sprites/points/*.bmp \
	gfx/sprites/weapons/super_arm/*.bmp \
	gfx/sprites/enemies/*.bmp \
	gfx/sprites/hazards/elec_beam/*.bmp \
	gfx/sprites/enemies/metall/*.bmp \
	gfx/sprites/enemies/gabyoall/*.bmp \
	gfx/sprites/items/*.bmp \
	gfx/sprites/flood/*.bmp \
	gfx/sprites/hazards/*.bmp \
	gfx/sprites/enemies/screw_driver/*.bmp \
	gfx/sprites/enemies/pickelman/*.bmp \
	gfx/sprites/enemies/watcher/*.bmp \
	gfx/sprites/enemies/sniper_joe/*.bmp \
	gfx/sprites/menus/*.bmp \
	gfx/sprites/dr_wily/*.bmp \
	gfx/sprites/ending/*.bmp \
	gfx/sprites/bar/*.bmp \
	stages/fireman_wily4/* \
	gfx/stages/wily/*.bmp \
	gfx/ending/*.bmp \
	gfx/yellow_devil/*.bmp \
	gfx/wily_machine_1/*.bmp \
	audio.asm \
	stages/elecman/* \
	screen/* \
	audio/* \
	audio/music/* \
	audio/sfx/* \
	audio/unused/* \
	stages/gutsman_ending/* \
	5/*

6 := \
	6.asm \
	constants/* \
	macros/* \
	sprites/pointers/* \
	sprites/* \
	6/* \
	objects/* \
	stages/* \
	stages/cutman_wily1/* \
	stages/iceman_wily2/* \
	stages/bombman_wily3/* \
	stages/fireman_wily4/* \
	stages/elecman/* \
	stages/gutsman_ending/* \
	screen/*

gfx := \
	gfx/sprites/megaman/megaman.bmp gfx/sprites/megaman/megaman.chr \
	gfx/sprites/bosses/cutman.bmp gfx/sprites/bosses/cutman.chr \
	gfx/sprites/bosses/gutsman.bmp gfx/sprites/bosses/gutsman.chr \
	gfx/sprites/bosses/bombman.bmp gfx/sprites/bosses/bombman.chr \
	gfx/sprites/bosses/fireman/fireman_1.bmp gfx/sprites/bosses/fireman/fireman_1.chr \
	gfx/sprites/bosses/iceman.bmp gfx/sprites/bosses/iceman.chr \
	gfx/sprites/bosses/elecman.bmp gfx/sprites/bosses/elecman.chr \
	gfx/stages/regular/common.bmp gfx/stages/regular/common.chr \
	gfx/menus/menus.bmp gfx/menus/menus.chr \
	gfx/sprites/miscellaneous/ready_font.bmp gfx/sprites/miscellaneous/ready_font.chr \
	gfx/menus/equal.bmp gfx/menus/equal.chr \
	gfx/sprites/miscellaneous/clear_points_font.bmp gfx/sprites/miscellaneous/clear_points_font.chr \
	gfx/font/font_1.bmp gfx/font/font_1.chr \
	gfx/stage_select/border.bmp gfx/stage_select/border.chr \
	gfx/title/1987.bmp gfx/title/1987.chr \
	gfx/title/unknown_1.bmp gfx/title/unknown_1.chr \
	gfx/stage_select/gutsman_wily_copyright.bmp gfx/stage_select/gutsman_wily_copyright.chr \
	gfx/font/font_2.bmp gfx/font/font_2.chr \
	gfx/title/megaman_pose.bmp gfx/title/megaman_pose.chr \
	gfx/title/unknown_2.bmp gfx/title/unknown_2.chr \
	gfx/stages/regular/cutman.bmp gfx/stages/regular/cutman.chr \
	gfx/stages/regular/iceman.bmp gfx/stages/regular/iceman.chr \
	gfx/stages/regular/bombman.bmp gfx/stages/regular/bombman.chr \
	gfx/stages/regular/fireman.bmp gfx/stages/regular/fireman.chr \
	gfx/stages/regular/elecman.bmp gfx/stages/regular/elecman.chr \
	gfx/stages/regular/gutsman.bmp gfx/stages/regular/gutsman.chr \
	gfx/sprites/weapons/fire_storm.bmp gfx/sprites/weapons/fire_storm.chr \
	gfx/sprites/weapons/ice_slasher.bmp gfx/sprites/weapons/ice_slasher.chr \
	gfx/sprites/weapons/magnet_beam.bmp gfx/sprites/weapons/magnet_beam.chr \
	gfx/sprites/weapons/rolling_cutter.bmp gfx/sprites/weapons/rolling_cutter.chr \
	gfx/sprites/bosses/cwu_01p/cwu_01p_1.bmp gfx/sprites/bosses/cwu_01p/cwu_01p_1.chr \
	gfx/sprites/weapons/hyper_bomb.bmp gfx/sprites/weapons/hyper_bomb.chr \
	gfx/sprites/bosses/cwu_01p/cwu_01p_2.bmp gfx/sprites/bosses/cwu_01p/cwu_01p_2.chr \
	gfx/sprites/unknown/dr_light.bmp gfx/sprites/unknown/dr_light.chr \
	gfx/sprites/weapons/thunder_beam.bmp gfx/sprites/weapons/thunder_beam.chr \
	gfx/sprites/title/megaman_pose_face.bmp gfx/sprites/title/megaman_pose_face.chr \
	gfx/sprites/unknown/unknown_95c0.bmp gfx/sprites/unknown/unknown_95c0.chr \
	gfx/sprites/bosses/fireman/fireman_2.bmp gfx/sprites/bosses/fireman/fireman_2.chr \
	gfx/sprites/points/font.bmp gfx/sprites/points/font.chr \
	gfx/sprites/points/bar.bmp gfx/sprites/points/bar.chr \
	gfx/sprites/weapons/super_arm/fragment.bmp gfx/sprites/weapons/super_arm/fragment.chr \
	gfx/sprites/enemies/blaster.bmp gfx/sprites/enemies/blaster.chr \
	gfx/sprites/enemies/killer_bomb.bmp gfx/sprites/enemies/killer_bomb.chr \
	gfx/sprites/unknown/bullet.bmp gfx/sprites/unknown/bullet.chr \
	gfx/sprites/hazards/elec_beam/elec_beam_1.bmp gfx/sprites/hazards/elec_beam/elec_beam_1.chr \
	gfx/sprites/hazards/elec_beam/elec_beam_2.bmp gfx/sprites/hazards/elec_beam/elec_beam_2.chr \
	gfx/sprites/hazards/elec_beam/elec_beam_3.bmp gfx/sprites/hazards/elec_beam/elec_beam_3.chr \
	gfx/sprites/enemies/metall/metall_1.bmp gfx/sprites/enemies/metall/metall_1.chr \
	gfx/sprites/bosses/cwu_01p/cwu_01p_3.bmp gfx/sprites/bosses/cwu_01p/cwu_01p_3.chr \
	gfx/sprites/enemies/metall/metall_2.bmp gfx/sprites/enemies/metall/metall_2.chr \
	gfx/sprites/enemies/adhering_suzy.bmp gfx/sprites/enemies/adhering_suzy.chr \
	gfx/sprites/bosses/cwu_01p/cwu_01p_4.bmp gfx/sprites/bosses/cwu_01p/cwu_01p_4.chr \
	gfx/sprites/enemies/bunby_heli.bmp gfx/sprites/enemies/bunby_heli.chr \
	gfx/sprites/enemies/mambu.bmp gfx/sprites/enemies/mambu.chr \
	gfx/sprites/enemies/gabyoall/gabyoall_1.bmp gfx/sprites/enemies/gabyoall/gabyoall_1.chr \
	gfx/sprites/items/yashichi.bmp gfx/sprites/items/yashichi.chr \
	gfx/sprites/enemies/gabyoall/gabyoall_2.bmp gfx/sprites/enemies/gabyoall/gabyoall_2.chr \
	gfx/sprites/flood/flood_1.bmp gfx/sprites/flood/flood_1.chr \
	gfx/sprites/bosses/cwu_01p/cwu_01p_5.bmp gfx/sprites/bosses/cwu_01p/cwu_01p_5.chr \
	gfx/sprites/enemies/pepe.bmp gfx/sprites/enemies/pepe.chr \
	gfx/sprites/bosses/cwu_01p/cwu_01p_6.bmp gfx/sprites/bosses/cwu_01p/cwu_01p_6.chr \
	gfx/sprites/hazards/flame_pillar.bmp gfx/sprites/hazards/flame_pillar.chr \
	gfx/sprites/enemies/screw_driver/screw_driver_1.bmp gfx/sprites/enemies/screw_driver/screw_driver_1.chr \
	gfx/sprites/enemies/kamadoma.bmp gfx/sprites/enemies/kamadoma.chr \
	gfx/sprites/enemies/screw_driver/screw_driver_2.bmp gfx/sprites/enemies/screw_driver/screw_driver_2.chr \
	gfx/sprites/enemies/pickelman/pickelman_1.bmp gfx/sprites/enemies/pickelman/pickelman_1.chr \
	gfx/sprites/hazards/appearing_block_elecman.bmp gfx/sprites/hazards/appearing_block_elecman.chr \
	gfx/sprites/enemies/pickelman/pickelman_2.bmp gfx/sprites/enemies/pickelman/pickelman_2.chr \
	gfx/sprites/enemies/watcher/watcher_1.bmp gfx/sprites/enemies/watcher/watcher_1.chr \
	gfx/sprites/enemies/sniper_joe/sniper_joe_1.bmp gfx/sprites/enemies/sniper_joe/sniper_joe_1.chr \
	gfx/sprites/enemies/watcher/watcher_2.bmp gfx/sprites/enemies/watcher/watcher_2.chr \
	gfx/sprites/items/magnet_beam.bmp gfx/sprites/items/magnet_beam.chr \
	gfx/sprites/enemies/sniper_joe/sniper_joe_2.bmp gfx/sprites/enemies/sniper_joe/sniper_joe_2.chr \
	gfx/sprites/enemies/crazy_razy.bmp gfx/sprites/enemies/crazy_razy.chr \
	gfx/sprites/hazards/track_platform.bmp gfx/sprites/hazards/track_platform.chr \
	gfx/sprites/menus/font.bmp gfx/sprites/menus/font.chr \
	gfx/sprites/menus/bar.bmp gfx/sprites/menus/bar.chr \
	gfx/sprites/menus/1up.bmp gfx/sprites/menus/1up.chr \
	gfx/sprites/unknown/unknown_ad00.bmp gfx/sprites/unknown/unknown_ad00.chr \
	gfx/sprites/enemies/foot_holder.bmp gfx/sprites/enemies/foot_holder.chr \
	gfx/sprites/enemies/bombombomb.bmp gfx/sprites/enemies/bombombomb.chr \
	gfx/sprites/enemies/super_cutter.bmp gfx/sprites/enemies/super_cutter.chr \
	gfx/sprites/enemies/big_eye.bmp gfx/sprites/enemies/big_eye.chr \
	gfx/sprites/hazards/fire_bolt.bmp gfx/sprites/hazards/fire_bolt.chr \
	gfx/sprites/dr_wily/dogeza_1.bmp gfx/sprites/dr_wily/dogeza_1.chr \
	gfx/sprites/flood/flood_2.bmp gfx/sprites/flood/flood_2.chr \
	gfx/sprites/ending/megaman_1.bmp gfx/sprites/ending/megaman_1.chr \
	gfx/sprites/hazards/appearing_block_iceman.bmp gfx/sprites/hazards/appearing_block_iceman.chr \
	gfx/sprites/bosses/cwu_01p/cwu_01p_7.bmp gfx/sprites/bosses/cwu_01p/cwu_01p_7.chr \
	gfx/sprites/enemies/changkey.bmp gfx/sprites/enemies/changkey.chr \
	gfx/sprites/items/1up.bmp gfx/sprites/items/1up.chr \
	gfx/sprites/items/small_weapon_capsule.bmp gfx/sprites/items/small_weapon_capsule.chr \
	gfx/sprites/items/score_ball.bmp gfx/sprites/items/score_ball.chr \
	gfx/sprites/items/heart_part.bmp gfx/sprites/items/heart_part.chr \
	gfx/sprites/unknown/arrow_1.bmp gfx/sprites/unknown/arrow_1.chr \
	gfx/sprites/miscellaneous/death.bmp gfx/sprites/miscellaneous/death.chr \
	gfx/sprites/unknown/arrow_2.bmp gfx/sprites/unknown/arrow_2.chr \
	gfx/sprites/bar/bar.bmp gfx/sprites/bar/bar.chr \
	gfx/sprites/dr_wily/dogeza_2.bmp gfx/sprites/dr_wily/dogeza_2.chr \
	gfx/sprites/dr_wily/dr_wily.bmp gfx/sprites/dr_wily/dr_wily.chr \
	gfx/sprites/ending/dr_light.bmp gfx/sprites/ending/dr_light.chr \
	gfx/sprites/ending/roll_1.bmp gfx/sprites/ending/roll_1.chr \
	gfx/sprites/ending/megaman_2.bmp gfx/sprites/ending/megaman_2.chr \
	gfx/sprites/ending/roll_2.bmp gfx/sprites/ending/roll_2.chr \
	gfx/sprites/hazards/fireball.bmp gfx/sprites/hazards/fireball.chr \
	gfx/stages/wily/wily.bmp gfx/stages/wily/wily.chr \
	gfx/ending/ending.bmp gfx/ending/ending.chr \
	gfx/title/title.bmp gfx/title/title.chr \
	gfx/yellow_devil/yellow_devil.bmp gfx/yellow_devil/yellow_devil.chr \
	gfx/sprites/bosses/yellow_devil.bmp gfx/sprites/bosses/yellow_devil.chr \
	gfx/wily_machine_1/wily_machine_1.bmp gfx/wily_machine_1/wily_machine_1.chr \
	gfx/sprites/bosses/wily_machine_1.bmp gfx/sprites/bosses/wily_machine_1.chr

.PHONY: all mm1 clean

all: mm1
mm1: mm1.nes

%.nes: $(rom_obj) $(cfg)
	ld65 -C $(cfg) $(rom_obj) -o $@ -m $*.map

header.o: $(header)
	ca65 header.asm

main.o: $(home) $(stages) $(6)
	bmp2nes $(gfx)
	ca65 main.asm

clean:
	$(RM) $(rom_obj) \
	*.nes \
	*.map
	find -name "*.chr" -delete
