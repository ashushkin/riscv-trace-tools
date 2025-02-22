CC = riscv64-unknown-elf-gcc

SRC = $(wildcard *.S *.c *.cc *.cpp)

CC_FLAGS ?= -g  -mcmodel=medany -ffreestanding -O0 -Wl,--gc-sections -Ibsp/encoding.h 
LINKER_FLAGS ?= -static -nostartfiles -lm  -lgcc -T bsp/link.ld

build: %.elf
	@mkdir boutputs

%.elf : $(SRC) 
	$(CC) $(CC_FLAGS) -o $@ $(SRC) $(LINKER_FLAGS)

clean : 
	rm -rf boutputs