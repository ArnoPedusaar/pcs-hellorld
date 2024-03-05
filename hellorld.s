	.text

	.global main

minitor_entry = 0xff80aa
kl_txsr = 0xffff74
kl_txdr = 0xffff76

main:
 	lea	%pc@(message), %a0

loop:
 	movew	kl_txsr, %d0
	andiw	#0x0080, %d0
	beq	loop

       	moveb	%a0@+, %d1
      	andiw	#0xff, %d1
	beq	finish

 	movew	%d1, kl_txdr
       	bras	loop

finish:
       	jmpl	minitor_entry

message:
	.asciz	"Hellorld!\r\n"
