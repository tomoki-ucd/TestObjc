#import <stdio.h>
#import "SampleClass.h"

int main(void){
	id obj = [[SampleClass alloc] init];
	[obj release];

	NSLog(@"Hello");

	return 0;
}
