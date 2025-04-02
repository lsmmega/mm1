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

header := \
	header/*

0 := \
	0/*

1 := \
	1/*

2 := \
	2/*

3 := \
	3/*

4:= \
	4/*

5 := \
	5/*

6 := \
	6/*

7 := \
	7/*

.PHONY: all mm1 clean

all: mm1
mm1: mm1.nes

%.nes: $(rom_obj) mm1.cfg
	ld65 -C $*.cfg $(rom_obj) -o $@ -m $*.map

header.o: $(header)
	ca65 $*.asm

0.o: $(0)
	ca65 $*.asm

1.o: $(1)
	ca65 $*.asm

2.o: $(2)
	ca65 $*.asm

3.o: $(3)
	ca65 $*.asm

4.o: $(4)
	ca65 $*.asm

5.o: $(5)
	ca65 $*.asm

6.o: $(6)
	ca65 $*.asm

7.o: $(7)
	ca65 $*.asm

clean:
	$(RM) $(rom_obj) \
	*.nes \
	*.map
