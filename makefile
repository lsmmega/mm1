mm1: asm6 testadd

asm6: 
	$(MAKE) -C tools/
	tools/asm6 main.asm test.nes