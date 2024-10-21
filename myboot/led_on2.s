
.globl led_on
led_on:
	ldr	r11,	=0xE0200C04
	mov	r12,	#0
	str	r12,	[r11]

	bl delay	

	ldr	r11, 	=0xE0200C04
	mov 	r12,	#0xC0
	str	r12, 	[r11]
	
	bl delay


.globl delay
delay:
	mov r12, #0xF00000
delay_loop:
	cmp r12, #0
	sub r12, r12, #1
	bne delay_loop
	mov pc, lr

