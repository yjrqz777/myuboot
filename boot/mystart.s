b reset
b reset
b reset
b reset
b reset
b reset
b reset
b reset

reset:
    bl gpio_out
    bl led2_on
    mov r0, r1
    mov r1, r2
    mov r2, r3
    mov r3, r4
    mov r4, r5
@loop:
    @b loop
1:  
    b 1b    @1f

gpio_out:
	ldr	r11,	=0xE0200C00
	ldr r12,	=0x11000000
	str	r12,	[r11]

	ldr	r11,	=0xE0200C04
	mov r12,    #0xc0
	str	r12,	[r11]
	
	mov pc,	lr
