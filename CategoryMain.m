// "Category" in objc is feature that enables users to develop a single class in multiple files, meaning multiple developers can develop a single class at the same time.
// You can use Category to add new method to an existing class.
// You can add class and instance method using Category, but not instance variable.

#import <stdio.h>
#import <objc/NSObject.h>
#import "CategoryMain.h"
#import "CategoryChild.h"



@implementation Test
-(void)WriteA{
	printf("I am writing this at Coffee mansion\n");
}
@end


int main(int argc, char* argv[]){
	id obj = [Test new];
	[obj WriteA];
	[obj WriteB];
	[obj release];

	return 0;
}
