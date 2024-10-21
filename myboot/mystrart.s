bl reset
bl reset
bl reset
bl reset
bl reset
bl reset
bl reset
bl reset


reset:
	bl gpio_out
	bl led_on2
	mov r0, r1
	mov r1, r2
	mov r2, r3
	mov r3, r4
	mov r4, r5

1:
    b 1b

    @b 1f
@1: 


gpio_out:
	ldr	r11,	=0xE0200C00
	ldr 	r12,	=0x11000000
	str	r12,	[r11]
	ldr	r11,	=0xE0200C04
	mov	r12,	#0
	str	r12,	[r11]
	mov 	r13, 	#0x1000
	mov 	pc,	lr




