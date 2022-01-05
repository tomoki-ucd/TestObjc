#import <stdio.h>
#import <objc/NSObject.h>
#import <stdlib.h>		//for malloc

//Protocol can inherit parent protocol like class-superClass relationship. Syntax is like this: @protocol ProtocolName <ParentProtocolName, ...>
@protocol ClassNameToString		
-(char*) ToString;		//The tutorial is "-(id) ToString" but doesn't work.
@end

@interface A : NSObject <ClassNameToString>		//Adopt protocol
{
	char *name;
}
-(id) init;
-(void) free;		//The tutorial is "-(id) free" but doesn't work.
@end

@interface B: NSObject <ClassNameToString>
@end

@implementation A
-(id)init{
	[super init];
	name = (char*)malloc(255);
	sprintf(name, "%s . A@%p" , __FILE__, self);	//%p is for showing pointer
	return self;
}

-(void)free{
	free(name);
	return [super release];
}
-(char*) ToString{return (char*) name;}
@end

@implementation B
-(char*) ToString{return (char*) "This is Object of B Class";}
@end

int main(int argc, char* argv[]){
	id objA = [A new];
	id objB = [B new];
	printf("objA = %s\n", [objA ToString]);
	printf("objB = %s\n", [objB ToString]);
	[objA free];
	[objB release];		//"free" message is not available in default unless you define it. On the other hand, "release" message is available.

	return 0;
}
