# Uboot 学习之旅 22024年10月15日21:44:44

使用
u-boot-2012.10-rc3.tar.bz2  

[https://ftp.denx.de/pub/u-boot/](https://ftp.denx.de/pub/u-boot/)  
[主要参考https://www.bilibili.com/video/BV1s4411t7eT](https://www.bilibili.com/video/BV1s4411t7eT)  
[主要参考https://www.bilibili.com/video/BV1L24y187cK](https://www.bilibili.com/video/BV1L24y187cK)  


去toolchain解压arm-2009q3.tar.bz2 解压到指定目录！！自行修改！！
export PATH=$PATH:/home/yjrqz/x-tools/arm-2009q3/bin
/home/y/myuboot-master/toolchain/arm-2009q3

---
声明环境  
export PATH=$PATH:/home/y/myuboot-master/toolchain/arm-2009q3/bin

---
找不到 arm-none-linux-gnueabi-gcc时执行

安装32位库
sudo apt-get install lib32ncurses5* lib32z1 -y


```
export PATH=$PATH:/home/yjrqz/x-tools/arm-2009q3/bin
make s5p_goni_config
在 include/config.mkz最后加入`CROSS_COMPILE = arm-none-linux-gnueabi-`
最后执行
make -j12
```
# 2024年10月16日20:09:18

arm-none-linux-gnueabi-objdump -S u-  boot | less
```
b reset 跳转回
bl xx 先 b 后lr 保存 下一句指针到lr
运行完后 mov pc, lr   接着运行


```

---

```
sudo dd iflag=dsync oflag=dsync if=uboot.16k of=/dev/sdb seek=1

./mkv210 u-boot.bin uboot.16k


make -j12

cp ./u-boot-2012.10/u-boot.bin ./

./mkv210 u-boot.bin u-boot.16k
```



# WARNING 此命令不能在wsl中执行
# WARNING 此命令不能在wsl中执行
# WARNING 此命令不能在wsl中执行

```
sudo dd iflag=dsync oflag=dsync if=u-boot.16k of=/dev/sdb seek=1
```



```
$ git config --global user.name xxx
$ git config --global user.email xxx 
```

