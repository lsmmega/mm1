rom_obj := \
	audio.o  \
	gfx.o    \
	header.o \
	home.o   \
	main.o   \
	stages.o

mm1_obj := $(rom_obj:.o=.o)

.phony: all mm1 clean

all: mm1

mm1: mm1.nes

mm1.nes: $(mm1_obj) \
	mm1.cfg

%.o: %.asm
	ca65 -o $@ $<

%.nes: $(rom_obj)
	ld65 -C mm1.cfg $(rom_obj) -o $@ -m mm1.map

clean:
	$(RM) $(rom_obj) \
	mm1.map \
	mm1.nes