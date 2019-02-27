;-----------------------------------
;Tittle: Addressing Modes
;Autor: Edgar E. Mamani A.
;Date: 27.02.2019
;Object: Modos de direccionamiento
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

_nm move.w  #$12, d0
    lea.l   $1000, a0
    move.w  d0, a0
    lea.l   $1010, a1
    rts

;-----------------------------------

_mp bsr _nm
    _xt

    ;end
