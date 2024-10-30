
GCC = arm-none-linux-gnueabi-gcc
LD = arm-none-linux-gnueabi-ld
OBJCOPY = arm-none-linux-gnueabi-objcopy

.PHONY:all

all: myboot


myboot: mystart.o mylowlevel.o myboot.lds
	$(LD) -T myboot.lds -o myboot mystart.o mylowlevel.o
	$(OBJCOPY) -O binary myboot myboot.bin
	./mkv210 myboot.bin myboot.16k


mystart.o: mystart.s
	$(GCC) -c mystart.s
mylowlevel.o: mylowlevel.s
	$(GCC) -c mylowlevel.s

.PHONY:flash
flash:
	sudo dd iflag=dsync oflag=dsync if=myboot.16k of=/dev/sdd seek=1

clean:
	rm -rf *.o
	rm -rf *.bin
	rm -rf *.16k
	rm -rf myboot

