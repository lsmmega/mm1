rom_obj := \
	header.o \
	home.o \
	0.o \
	1.o \
	2.o \
	3.o \
	4.o \
	5.o \
	6.o

cfg := \
	mm1.cfg

header := \
	constants/* \
	header.asm

home := \
	home.asm \
	home/*

0 := \
	0.asm \
	0/* \
	gfx/0/*.bmp

1 := \
	1.asm \
	1/* \
	gfx/1/*.bmp

2 := \
	2.asm \
	2/* \
	gfx/2/*.bmp

3 := \
	3.asm \
	3/* \
	gfx/3/*.bmp

4:= \
	4.asm \
	4/*

5 := \
	5.asm \
	5/*

6 := \
	6.asm \
	6/*

gfx0 := \
	gfx/0/0_1.bmp gfx/0/0_1.chr \
	gfx/0/stages_common.bmp gfx/0/stages_common.chr \
	gfx/0/0_2.bmp gfx/0/0_2.chr

gfx1 := \
	gfx/1/cut.bmp gfx/1/cut.chr \
	gfx/1/ice.bmp gfx/1/ice.chr \
	gfx/1/bomb.bmp gfx/1/bomb.chr \
	gfx/1/fire.bmp gfx/1/fire.chr \
	gfx/1/elec.bmp gfx/1/elec.chr \
	gfx/1/guts.bmp gfx/1/guts.chr

gfx2 := \
	gfx/2/2.bmp gfx/2/2.chr

gfx3 := \
	gfx/3/wily_common.bmp gfx/3/wily_common.chr \
	gfx/3/3.bmp gfx/3/3.chr

.PHONY: all mm1 clean

all: mm1
mm1: mm1.nes

%.nes: $(rom_obj) $(cfg)
	ld65 -C $(cfg) $(rom_obj) -o $@ -m $*.map

header.o: $(header)
	ca65 header.asm

home.o: $(home)
	ca65 home.asm

0.o: $(0)
	bmp2nes $(gfx0)
	ca65 0.asm

1.o: $(1)
	bmp2nes $(gfx1)
	ca65 1.asm

2.o: $(2)
	bmp2nes $(gfx2)
	ca65 2.asm

3.o: $(3)
	bmp2nes $(gfx3)
	ca65 3.asm

4.o: $(4)
	ca65 4.asm

5.o: $(5)
	ca65 5.asm

6.o: $(6)
	ca65 6.asm

clean:
	$(RM) $(rom_obj) \
	gfx/*/*.chr \
	*.nes \
	*.map
