#import <objc/NSObject.h>
#import <Foundation/NSObjCRuntime.h>
#import "SampleClass.h"

@implementation sampleClass
-(void) sampleMethod1{
	NSLog(@"sampleMethod1 was called.");
}

-(int)sampleMethod2:(int)arg1 arg2:(NSString*)arg2{
	NSLog(@"sampleMethod2: arg1=%d arg2=%@", arg1, arg2);		//%@ is format for NSString *
	return 0;
}
@end


int main(int argc, char* argv[]){
	id obj = [sampleClass new];
	[obj sampleMethod1];
	[obj sampleMethod2:99 arg2:@"Yappy"];		//string literal must be prefixed with @ like @"hoge"
	[obj release];

	return 0;
}
