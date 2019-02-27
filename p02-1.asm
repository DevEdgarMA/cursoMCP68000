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

_nm move.b  #$12, d0
    move.b  d0, $5678       ;No es buena forfa de realizar la asignacion a direcciones
    move.b  d0, $1000       ;No se recomienda utilizar
    rts

;-----------------------------------

_mp bsr _nm
    _xt

    ;end