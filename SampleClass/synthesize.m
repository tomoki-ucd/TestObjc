//Using property means not only you can explicitly show the property of instance variables externally but also you can easily define behaviors of these instance variables.

#import <Foundation/NSObject.h>

// Declaring without using property
#if 0
@interface Sample1:NSObject{
	int member1;	//is to be read-write
	int member2;	//is to be read-only
	int member3;
}
-(id)init;
-(void)setMember1:(int)val;		//setter for member1
-(int)member1;					//getter for member1
-(int)member2;					//getter for member2
-(void)setMember3:(int)val;
-(int)member3;
@end
#endif

// You can declare the above using property declaration like this
#if 1
@interface Sample1:NSObject{
	int member1;
	int member2;
	int member3;
}
@property int member1;			//This is same as declaring setter and getter for member1
@property (readonly) int member2;	//This is same as declaring only getter for member2
@property int externalNameOfMember3;	//You can use a different name for property by using "synthesize" at implementation.
@property int member4;		//If you use "property" and "synthesize", the compiler creates ivar "_member4" for you.
@end
#endif

@implementation Sample1
-(id) init{
	member1 = 1;
	member2 = 2;
	member3 = 3;

	return self;
}
//Implementing without using synthesize
#if 0
-(void) setMember1:(int)val{
	member1 = val;
}
-(int) member1{
	return member1;
}
-(int) member2{
	return member2;
}
-(void)setMember3:(int)val{
	member3 = val;
}
-(int) member3{
	return member3;
}
@end
#endif

//Implementing with synthesize. You need to use "@property" if you want to use "synthesize". 
//The compiler cretes getter "member1" and setter "setMember1" for you.
#if 1
@synthesize member1;
@synthesize member2;
@synthesize externalNameOfMember3 = member3;		//You can use a difference name as externally exposed name.	In this case, the compiler creates getter "externalNameOfMember3" and setter "setExternalNameOfMember3".
@synthesize member4;
@end
#endif


int main(int argc, char* argv[]){
	
	Sample1* obj = [[Sample1 alloc] init];
	NSLog(@"member1 is %d, member2 is %d, member3 is %d", obj.member1, obj.member2, obj.externalNameOfMember3);

	[obj setMember1:10];
	NSLog(@"member1 is %d, member2 is %d, externalNameOfMember3 is %d", obj.member1, obj.member2, obj.externalNameOfMember3);	//"obj.member1" is expanded to "[obj member1]

	NSLog(@"member4 is %d", obj.member4);
	
	return 0;
	
}
