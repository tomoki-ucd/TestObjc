#import <stdio.h>
#import <objc/NSObject.h>

@interface Test : NSObject
-(void)Write;
@end

@implementation Test
-(void)Write{
	printf("I am writing this at 23:46.\n");
}
@end

int main(int argc, char* argv[]){
	id  obj;
	SEL method;		//SEL is the type to store a selector that is to identify a method using the method name created during compile time.. 
	obj = [Test new];
	method = @selector(Write);		//@selector(someMethod); is the way to return SEL value of someMethod.

	[obj performSelector:method];		//[someObject peformSelector:(SEL) withObject:someObject]; is the way to peform the method. It seems that the syntax changed from using "perform" to "performSelector".

	return 0;
}
