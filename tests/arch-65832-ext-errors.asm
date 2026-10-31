;`errEinvalid_gigacom_ext
;`errEinvalid_opcode_length
;`errEunknown_command
;`errEinvalid_number
org $008000
arch 65832
gigacom_ext maybe
gigacom_ext on
lda.w @x
gigacom_ext off
jsl ($1234,x)
lda @x
x:
