#import <stdio.h>
#import <objc/NSObject.h>

@interface Test:NSObject
-(void)Write;	
@end


@implementation Test
-(void)Write{
	printf("I am writing this at 6:42 am Jan 2nd.\n");
}
@end

int main(){
	id obj;
	SEL method;	//SEL is the type of selector that identifies a method.
	IMP func; 	//IMP is the type of functin pointor to every objc method. It is defined as following in header file.
//typedef id(*IMP)(id, SEL, ...); This means function pointor IMP takes id(actually self) as its first argument and SEL(_cmd variable indicating its selector) as its second argument and returns id.
//--> The above was old definition. The current definition is "typedef void(*IMP)(void)"

//You can get IMP, i.e. function pointer to a method, using instanceMethodForSelector (class method) or methodForSelector (instance method). (The method name used to be instanceMethodFor and methodFor).
// +(IMP)instanceMethodForSelector:(SEL)aSEL;
// -(IMP)methodForSelector:(SEL)aSEL;

//You may want to use function pointor rather than message or selector communication for processes that needs speed as function pointor is faster than message communication.

	obj = [Test new];
	method = @selector(Write);
	func = [Test instanceMethodForSelector:method];
	//func = [Test methodFor:methodSelector]; is also same.
	func();

	return 0;
}
