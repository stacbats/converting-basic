// ***
    #import "constants.asm"
//  BasicUpstart2(entry)

//  entry:

        * = $c100 "startingadd"     // sysy 49408
            jmp START
     
            lda #$93
            jmp CHROUT
    jsr CLEAR
            ldx #120
            stx AUX
            lda 'c'
    jsr CHROUT
            ldx AUX
            dex
            bne S1
    jsr CHRIN

            rts