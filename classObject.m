#import <stdio.h>
#import <objc/NSObject.h>

@interface Test: NSObject
+(void)Write;
-(id)init;
@end

@implementation Test
+(void)Write{
	printf("I am writing this at am 2:42.\n");
}
-(id)init{
	printf("Initiating an instance\n");
	return [super init];	
}
@end

int main(int argc, char* argv[]){
	Class testClass = [Test class];	//class method "(Class)class()" returns a class object.

	[testClass Write];	//This is same as [Test Write];
	[[testClass new] release];	//This is same as [[Test new] release];
	[testClass release];

	return 0;
}
