#import <stdio.h>
#import <objc/NSObject.h>

@interface A:NSObject
-(void)Write;
@end

@implementation A
-(void)Write{
	printf("I am the born of my sword.\n");
}
@end

int main(){
//	id obj1 = [A new];
//	id obj2 = [NSObject new];	
	A * obja = [A new];		//object shoud be declared with a specific type, not id type.

//	[obj1 Write];
//	[obj2 Write];		//obj2 is declared with id type. id type is like a void ptr and so it can be declared with any object and not checked during compiling but checked at runtime.

	[obja Write];
	[obja release];

	return 0;
}
