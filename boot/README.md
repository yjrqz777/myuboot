
```
arm-none-linux-gnueabi-as mystart.s -o mystart.o

arm-none-linux-gnueabi-gcc -c mystart.s

arm-none-linux-gnueabi-gcc -c mylowlevel.s

arm-none-linux-gnueabi-ld -T myboot.lds -o myboot mystart.o mylowlevel.o

arm-none-linux-gnueabi-objdump -S mystart.o

"-S":同时查看

arm-none-linux-gnueabi-objcopy -O binary myboot myboot.bin

hexdump -C myboot.bin

"-C":同时查看二进制和ascii


./mkv210 myboot.bin myboot.16k

hexdump -C myboot.16k

sudo dd iflag=dsync oflag=dsync if=myboot.16k of=/dev/sdd seek=1

```

$@ :所有的目标集合
$< :依赖文件的第一个
$^ :所有的依赖文件集合

模式匹配
%.s 所有的.s文件