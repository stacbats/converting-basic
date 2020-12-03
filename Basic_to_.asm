BasicUpstart2(enter)

     * = $c000 "start sys 49152"

enter:

    ldx #0          //  x=0     Using the X reg in place of Variable X
    txa             //  a=x     Use the Accumulator to replace A and copy X Reg into Accu.
    sta $0400, x    //  poke 1024 + x, a    Put Accu contents into memory location 1024 and the unchanged x reg
    lda #YELLOW     //  A = 1   Load accu with value (Yellow)
    sta $d800, x    //  Poke55296 + X, A    store Red in memory location, using indexed addressing ,x
    inx             //  inx     we now increment the value in x by 1
    bne $c002       //  If X <> 256 then 110    We have gone back to start address (49152 + 2 so we jump to txa)

    rts             //  

// the above program in Basic
//          x = 0
//          a = x
//          poke 1024+x,a:
//          a=1
//          poke55296+x,a
//          x=x+1
//          if x <> 256 then 110
//          end
