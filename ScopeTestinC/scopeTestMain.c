#include "scopeTestMain.h"

extern char* scopeChild_g1;

/*** Prototype Function Declaration ***/
//extern void scopeChildPrint();
void scopeChildPrint();		//You can also compile without extern


int main(){
	
	printf("Hellow world.\n");

	scopeChildPrint();	

	//Using a global variable in other files.
	printf("Main is refering scopeChild_g1: %s", scopeChild_g1);	//You need to 

	return 0;
}
