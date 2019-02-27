;-----------------------------------
;Tittle: Initial Program
;Autor: Edgar E. Mamani A.
;Date: 25.02.2019
;Object: Trap use
;-----------------------------------

    org $1000
    entry _mp

;-----------------------------------

g   equ     $34
x   dc.b    $12
    dcb.b   $0f, $00
    dc.b    g
    dcb.b   $0f, $00

;-----------------------------------

_xt  macro

    trap    #$0f
    dc.w    0
    endm

;-----------------------------------

_nm move.b  #$56, d0
    rts

;-----------------------------------

_mp bsr _nm
    _xt

    ;end

