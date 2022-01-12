// "Category" in objc is feature that enables users to develop a single class in multiple files, meaning multiple developers can develop a single class at the same time.
// You can use Category to add new method to an existing class.
// You can add class and instance method using Category, but not instance variable.

//#import <stdio.h>
//#import <objc/NSObject.h>
#import "CategoryMain.h"		//Need to include Main class declaration.
#import "CategoryChild.h"

//@interface Test (Fate)		//Category declaration.
//-(void)WriteB;
//@end

@implementation Test (Fate)
-(void)WriteB{
	printf("This is category\n");
}
@end
