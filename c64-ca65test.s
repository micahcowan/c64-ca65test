;#resource "c64-ca65test.cfg"
;#define CFGFILE c64-ca65test.cfg

.include "c64-ca65-rom-header.inc"

.macpack cbm

Start:
CurIn = * + 1
	lda Message
        beq Done
CurOut = * + 1
        sta $400
        inc CurIn
        inc CurOut
        jmp Start
Done:
	jmp Done

Message:
	scrcode "HELLO, WORLD! HAPPY ADVENTURES!"
        .byte $00