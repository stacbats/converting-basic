// bits and bobs

    * = $c100 "startaddress"	        			     // sysy 49408

       	lda BLACK
       	sta $d021

       	lda #15				// letter O
       	ldx #0				// start at zero
LOOP:	sta 1024,x			// put the contents into 1024
		inx					// increase above by 1 256 times
		bne LOOP			// until the end of the count
LOOP2:	sta 1280,x			// put the contents into 1280
		inx					// increase above by 1 256 times
		bne LOOP2			// until the end of the count
		

		rts					// back to basic

