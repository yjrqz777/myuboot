#!/bin/bash

rm -rf *.o
rm -rf *.bin
rm -rf *.16k
rm -rf myboot

sleep 1


arm-none-linux-gnueabi-gcc -c mystart.s

arm-none-linux-gnueabi-gcc -c mylowlevel.s

arm-none-linux-gnueabi-ld -T myboot.lds -o myboot mystart.o mylowlevel.o

arm-none-linux-gnueabi-objcopy -O binary myboot myboot.bin

./mkv210 myboot.bin myboot.16k


