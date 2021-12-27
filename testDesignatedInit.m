#import <stdio.h>
#import <objc/NSObject.h>

@interface Point : NSObject
{
	int x, y;
}
-(id)init;
-(id)initWithPoint:(int)x int:(int)y;	//Designated Initializer
-(int)getX;
-(int)getY;
@end

@implementation Point
-(id)init{
	[super init];	//super invokes the init method of NSObject class.
	return [self initWithPoint:0 int:0];
}
-(id)initWithPoint:(int)x int:(int)y{
	self->x = x;
	self->y = y;
	return self;
}
-(int)getX{return x;}
-(int)getY{return y;}
@end

int main(){
	id pt1 = [Point new];	//new automatically calls [[Class alloc] init]
	id pt2 = [[Point alloc] initWithPoint:400 int:300];		//You need to explicitly call designated initializer
	printf("pt1.x=%d, pt1.y=%d\n", [pt1 getX], [pt1 getY]);
	printf("pt2.x=%d, pt2.y=%d\n", [pt2 getX], [pt2 getY]);
	
	return 0;
}
