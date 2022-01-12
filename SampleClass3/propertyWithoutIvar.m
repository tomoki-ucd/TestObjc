#import <Foundation/NSObject.h>

@interface Sample1 : NSObject

@property int member1;
@property (readonly) int member2;
@property (readonly) int member3;	//No ivar

@end

@implementation Sample1{
	int member1;
@public
	int member2;
}
@synthesize member1;
@synthesize member2 = member4;		//property member2 get/set ivar member4
@synthesize member3; 				//No ivar

-(id)init{
	self = [super init];
	if(self == nil){
		return nil;
	}
	member1 = 10;
	member2 = 20;
	member3 = 30;		//The compiler automatically created ivar for property member3.
	member4 = 40;		//The compiler automatically created ivar for property member4.

	return self;
}

@end


int main(int argc, char* argv[]){

	Sample1* obj = [Sample1 new];
	NSLog(@"member1 is %d, member2 is %d, member3 is %d, member4 is %d", obj.member1, obj.member2, obj.member3, obj->member2);
	//The above statment is expanded like "[obj member1], [obj member2], [obj member3], obj->member2". member2 is getter for member4 that is the ivar automatically created by the compiler.

	return 0;
}


