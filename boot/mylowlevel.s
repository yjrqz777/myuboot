.globl led2_on
led2_on:

	@ ldr	r11,	=0xE0200C04
	@ mov r12,    #0x80
	@ str	r12,	[r11]

	ldr	r11, 	=0xE0200C04
    ldr r12,    [r11]
    bic r12,    r12,    #(1<<7)
	str	r12, 	[r11]

	mov pc,	lr
	@ sub r13, r13, #1
	@ cmp r13,#0
	