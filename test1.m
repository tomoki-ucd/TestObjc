#import <stdio.h>
#import <objc/NSObject.h>

@interface SuperClass : NSObject
-(void)methodA;
@end

@interface SubClass: SuperClass
-(void)methodB;
@end

@implementation SuperClass
-(void)methodA{
	printf("SuperClass.methodA\n");
}
@end

@implementation SubClass
-(void)methodB{
	printf("SubClass.methodB\n");
}
@end

int main(){
	id obj = [SubClass alloc];
	[obj methodA];
	[obj methodB];
	return 0;
}

