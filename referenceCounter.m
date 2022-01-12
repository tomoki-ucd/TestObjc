#import <Foundation/NSObject.h>

@interface Sample:NSObject{
	id sample2;
}
-(void)setSample2:(id)obj;
@end


@implementation Sample
-(void)setSample2:(id)obj{
	[obj retain];		//get ownership of obj, which increase reference counter (+1). alloc, malloc and retain increases reference counter.
	if(sample2 != nil){
		[sample2 release];		//release ownership, which decreases reference counter (-1),  of sample2 for temporarily.
	}
	sample2 = obj;		//set obj to sample2.

	NSLog(@"New obj has been set");
}

-(void) dealloc{
	//Do something specific to the class regarding its finishing process.
	NSLog(@"Deallocing object %p", self);

	if(sample2 != nil){
		[sample2 release];
	}
	[super dealloc];
}
@end


int main(int argc, char* argv[]){
	
	id obj1 = [Sample new];
	Sample* obj2 = [Sample new];

	NSLog(@"obj1 is %p", obj1);
	NSLog(@"obj2 is %p", obj2);

//	Sample obj2 = [Sample new];
// The above statement causes "error: interface type cannot be statically allocated", which means that the memory for that object was allocated at compile-time, however, all objects in objc are allocated at runtime and accessed through pointers.
	
	[obj2 setSample2:obj1];

	[obj1 release];
	NSLog(@"[obj1 release] called");
	[obj2 release];
	
	return 0;
}
