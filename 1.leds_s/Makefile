led.bin: start.o 
	arm-none-linux-gnueabi-ld -Ttext 0x0 -o led.elf $^
	arm-none-linux-gnueabi-objcopy -O binary led.elf led.bin
	arm-none-linux-gnueabi-objdump -D led.elf > led_elf.dis
	gcc mkv210_image.c -o mkmini210
	./mkmini210 led.bin 210.bin
	
%.o : %.S
	arm-none-linux-gnueabi-gcc -o $@ $< -c

%.o : %.c
	arm-none-linux-gnueabi-gcc -o $@ $< -c 

clean:
	rm *.o *.elf *.bin *.dis mkmini210 -f
