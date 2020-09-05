// trial2.asm

//	filling the screen with zeros

        * = $c100 "startingadd"     // sysy 49408

        lda #15
        ldx #0
        stx 150
        ldx #4
        stx 151
        ldy #0
LOOP:	sta (150),y
		iny
		bne LOOP
		inc 151
		ldx 151
		cpx #8
		bne LOOP
		rts