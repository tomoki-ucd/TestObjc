#import <stdio.h>
#import <objc/NSObject.h>

@protocol ProtocolA
-(void)MethodA;
@end

@protocol ProtocolB
-(void)MethodB;
@end

@protocol ProtocolC <ProtocolA>
-(void)MethodC;
@end

@interface Test: NSObject<ProtocolB, ProtocolC>
@end

@implementation Test
-(void)MethodA{
	printf("This is Method A.\n");
}	//MethodA is not required by ProtocolB and C themselves, but ProtocolB inherits ProtocolA that has methodA, and so it needs to be difined.
-(void)MethodB{
	printf("This is Method B.\n");
}
-(void)MethodC{
	printf("This is Method B.\n");
}
@end

int main(int argc, char* argv[]){
	id obj = [Test new];
	[obj MethodA];
	[obj MethodB];
	[obj MethodC];

	return 0;
}
