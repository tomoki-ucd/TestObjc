#import <stdio.h>
#import <objc/NSObject.h>

@interface Test: NSObject
+(void)Write;
@end

@implementation Test
+(void)Write{
	printf("I am writing this at am 1:45.\n");
}
@end

int main(){
	[Test Write];	//You can use a class method without instance.
					//But there is no static variable. You need to use a global variable instead.
	return 0;
}
