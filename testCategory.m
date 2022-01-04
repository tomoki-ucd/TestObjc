// "Category" in objc is feature that enables users to develop a single class in multiple files, meaning multiple developers can develop a single class at the same time.
// You can use Category to add new method to an existing class.
// You can add class and instance method using Category, but not instance variable.

#import <stdio.h>
#import <objc/NSObject.h>

@interface Test:NSObject
-(void)WriteA;
@end

@interface Test (Fate)		//Category declaration.
-(void)WriteB;
@end

@implementation Test
-(void)WriteA{
	printf("I am writing this at Coffee mansion\n");
}
@end

@implementation Test (Fate)
-(void)WriteB{
	printf("This is category\n");
}
@end

int main(int argc, char* argv[]){
	id obj = [Test new];
	[obj WriteA];
	[obj WriteB];
	[obj release];

	return 0;
}
