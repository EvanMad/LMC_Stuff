        INP
        STA VALUE
        LDA ZERO
        STA TRINUM
        STA N
LOOP    LDA TRINUM
        SUB VALUE
        BRP ENDLOOP
        LDA N
        ADD ONE
        STA N
        ADD TRINUM
        STA TRINUM
        BRA LOOP
ENDLOOP LDA VALUE
        SUB TRINUM
        BRZ EQUAL
        LDA ZERO
        OUT
        BRA DONE
EQUAL   LDA N
        OUT
DONE    HLT
VALUE   DAT 000
TRINUM  DAT 000
N       DAT 000
ZERO    DAT 000
ONE     DAT 001