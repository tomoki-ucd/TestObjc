#import <stdio.h>
#import <objc/NSObject.h>

@interface Point : NSObject
{
	int x, y;
}
-(id)init;
-(int)getX;
-(int)getY;
@end

@implementation Point
-(id)init{
	[super init];	//super invokes the init method of NSObject class.

	x = y = 0;
	printf("init method\n");
	return self;
}
-(int)getX{return x;}
-(int)getY{return y;}
@end

int main(){
	id pt = [Point new];	//new automatically calls [[Class alloc] init]
	printf("x=%d, y=%d\n", [pt getX], [pt getY]);
	
	return 0;
}
