;`42 42 AD 3D 00  42 42 9D 38 00  42 42 BE 33 00  42 42 EE 2E 00  42 42 9E 29 00
;`42 42 20 1E 00  82 1B 00  42 42 6C 1C 00  42 42 DC 17 00  42 42 FC 12 00
;`42 82 0E 00  42 83 0A 00  42 FC 34 12  60  42 42 AD BE FF  AA
;`FC 34 12  42 FC 34 12
org $008000
arch 65832
gigacom_ext on
start:
lda @data
sta @data,x
ldx @data,y
inc @data
stz @data,x
jsr @sub
jmp @sub
jmp (@data)
jml [@data]
jsr (@data,x)
lea @data
pel @data
jsl ($1234,x)
sub: rts
lda @start
data: db $AA
gigacom_ext off
jsr ($1234,x)
jsl ($1234,x)
