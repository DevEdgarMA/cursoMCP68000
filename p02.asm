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

_nm movea.w #$1234, a0
    lea.l   $1234, a1
    move.w  #$5678, d0
    movea.w d0, a2
    move.w  a2, d1
    rts

;-----------------------------------

_mp bsr _nm
    _xt

    ;end
