#import <stdio.h>
#import <objc/NSObject.h>

@protocol InstanceListener
-(void)instanceFree:(id)object;
@end

@interface Test:NSObject
{
	id<InstanceListener> listener;	//The variable listener is of type id compliant with InstanceListener protocol.
}
-(id) init;
-(void) free;
-(void) setInstanceListener:(id<InstanceListener>)l;
-(id<InstanceListener>) getInstanceListener;
@end

@implementation Test
-(id)init{
	[super init];
	listener = NULL;
	return self;
}
-(void)free{
	if(listener)[listener instanceFree:self];		//instanceFree method of InstanceLIstner protocol is defined below
	return [super release];
}
-(void)setInstanceListener:(id <InstanceListener>)l{
	listener = l;
}
-(id<InstanceListener>)getInstanceListener{
	return listener;
}
@end

@interface WriteInstanceFreeMsg:NSObject<InstanceListener>
//Since WriteInstanceFreeMsg class adopts InstanceListener protocol having instanceFree method, no method needs to be declared within its interface.
//We can use protocol like this and this help us to be independent from class implementation.
@end

@implementation WriteInstanceFreeMsg
-(void)instanceFree:(id)object{
	printf("%p: Instance has been freed up\n", object);
}
@end

int main(int argc, char* argv[]){
	id obj1 = [Test new], obj2 = [Test new];
	id<InstanceListener> listener = [WriteInstanceFreeMsg new];
	[obj1 setInstanceListener:listener];
	[obj2 setInstanceListener:listener];
	[obj1 free];		//instanceFree method of listener object will be called back.
	[obj2 free];

	return 0;
}
