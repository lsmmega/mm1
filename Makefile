rom_obj := \
	header.o \
	0.o \
	1.o \
	2.o \
	3.o \
	4.o \
	5.o \
	6.o \
	7.o

cfg := \
	mm1.cfg

header := \
	header.asm \
	header/*

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

7 := \
	7.asm \
	7/*

gfx0 := \
	gfx/0/0.bmp gfx/0/0.chr

gfx1 := \
	gfx/1/1.bmp gfx/1/1.chr

gfx2 := \
	gfx/2/2.bmp gfx/2/2.chr

gfx3 := \
	gfx/3/3.bmp gfx/3/3.chr

.PHONY: all mm1 clean

all: mm1
mm1: mm1.nes

%.nes: $(rom_obj) $(cfg)
	ld65 -C $(cfg) $(rom_obj) -o $@ -m $*.map

header.o: $(header)
	ca65 header.asm

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

7.o: $(7)
	ca65 7.asm

clean:
	$(RM) $(rom_obj) \
	gfx/*/*.chr \
	*.nes \
	*.map
