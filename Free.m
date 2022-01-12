#import <stdio.h>
#import <objc/NSObject.h>

@interface Test: NSObject
-(id)init;
-(void)free;
@end

@implementation Test
-(id)init{
	id obj = [super init];
	printf("init method\n");
	return obj;
}
-(void)free{
	printf("free method\n");
	//return [super free];		//This results in "unrecognized selector sent to instance" message.
	return [super release];		//free() cannot be used for NSObject.
}
@end

int main(){
	id obj = [Test new];
	[obj free];

	return 0;
}
