;`errEinvalid_opcode_length
;`errEunknown_command
;`errEunknown_command
;`errEunknown_command
org $008000
arch 65816
xfe
mvn
arch 65832
lda.l #$123456
lda.d $1234
