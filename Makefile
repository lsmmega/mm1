rom_obj := \
	header.o \
	bank00.o \
	bank01.o \
	bank02.o \
	bank03.o \
	bank04.o \
	bank05.o \
	bank06.o \
	bank07.o

mm1_cfg := mm1.cfg

mm1_obj := $(rom_obj:.o=.o)

all: mm1.nes

mm1.nes: $(mm1_obj) $(mm1_cfg)

%.o: %.asm
	ca65 -o $@ $<

%.nes: $(rom_obj)
	ld65 $(rom_obj) -C mm1.cfg -o $@

clean:
	$(RM) $(rom_obj) \
	      mm1.nes