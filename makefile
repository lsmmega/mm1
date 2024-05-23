mm1: asm6

asm6: 
	$(MAKE) -C tools/
	tools/asm6 main.asm mm1.nes