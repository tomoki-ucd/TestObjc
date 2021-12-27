#import <stdio.h>
#import <objc/NSObject.h>

@interface SuperClass : NSObject
{
	int x;
}
-(void)SuperClassMethod;
@end

@interface SubClass: SuperClass
-(void)method;
@end

@implementation SuperClass
-(void)method{
	printf("SuplerDlass.method\n");
}
-(void)SuperClassMethod{
	printf("SuperClassMethod\n");
}
@end

@implementation SubClass
-(void)method{
	printf("SubClass.method %d\n", x);
	[super method];
}
@end

int main(){
	[[SubClass alloc] method];
	[[SuperClass alloc] SuperClassMethod];
	return 0;
}

