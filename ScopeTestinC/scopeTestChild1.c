#include "scopeTestMain.h"

/*** Global ***/
//static char* scopeChild_g1 = "I am a global variable from child1.\n";
char* scopeChild_g1 = "I am a global variable from child1.\n";
/* You get the follwoing error at compile time with static to the global variable when other files refering to it.
----
Undefined symbols for architecture arm64:
  "_scopeChild_g1", referenced from:
      _main in scopeTestMain.o
ld: symbol(s) not found for architecture arm64
----
Without static, the symbol for global variable is created in Data section as below.
----
    .section    __DATA,__data
    .globl  _scopeChild_g1                  ; @scopeChild_g1
----
But with static, there is no ".global _scopeChild_g1", while then the main file refers to the symbol.
----
    adrp    x8, _scopeChild_g1@GOTPAGE
    ldr x8, [x8, _scopeChild_g1@GOTPAGEOFF]
----
That's why you get the above comiple error.
*/

//static void scopeChildPrint(){
void scopeChildPrint(){
/* You get the follwoing error at compile time with static to the function when other files refering to it.
----
Undefined symbols for architecture arm64:
  "_scopeChildPrint", referenced from:
      _main in scopeTestMain.o
ld: symbol(s) not found for architecture arm64
----
*/
	char* str = "I am a local variable from child1.\n";

	printf("scopeChild 1 is called.\n");

	printf("%s", str);	
	printf("%s", scopeChild_g1);	
}

