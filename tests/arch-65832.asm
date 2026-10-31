;`A9 78 56 34 12  A9 34 12  A9 12  A9 56 34 12 00  A2 EF BE AD DE  A0 01 00 00 00
;`C9 00 00 00 10  E0 00 00 01 00  69 01 00 00 00  89 FF FF FF FF
;`54  44  54 7E 7F  44 7F 7E  42 80  42 80  FB
;`A9 34 12  78 56 34 12  A9 34 12
org $008000
arch 65832

lda #$12345678
lda #$1234
lda #$12
lda #$123456
ldx.d #$DEADBEEF
ldy.d #1
cmp #$10000000
cpx.d #$10000
adc.d #1
bit.d #$FFFFFFFF

mvn
mvp
mvn $7E,$7F
mvp $7F,$7E
xfe
XFE
xce

arch gigacom
lda.w #$1234
dd $12345678
arch 65816
lda #$1234
