#include "testcommon.h"
#include "basic-exn.h"

   /*
    * unsigned addiu: positive + positive -> out-of-range positive
    */
__start:
   EXNSON
   li t0, 0xfffff000
   addiu t2, t0, 0x7fff
   nop
   DUMP(0)
   POWEROFF
