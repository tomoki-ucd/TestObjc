#import <stdio.h>
#import <objc/NSObject.h>

@interface A : NSObject
{
	int x;		//default level is protected.
@public			//can be accessed from anywhere.
	int a;
@protected		//can be accessed only from subclass.
	int b;
@private		//can be accessed only within self.
	int c;
}
//-(id)initWithA:int:(int)a int:(int)b int:(int)c int:(int)x;	//This is invalid.
-(id)initWithA:(int)a int:(int)b int:(int)c int:(int)x;
-(void)WriteA;
@end

@interface B : A
-(void)WriteB;
@end

@implementation A
-(id)initWithA:(int)a 
		   int:(int)b 
		   int:(int)c 
		   int:(int)x {
	self->a = a;
	self->b = b;
	self->c = c;
	self->x = x;
	return self;
}
-(void)WriteA{
	printf("[A Write Method, public a=%d, protected b=%d, private c=%d]\n", a, b, c);
}
@end

@implementation B
-(void)WriteB{
	printf("[B Write Medho, public a=%d, protected b=%d, x=%d]\n", a, b, x);
}
@end

int main(){
	B * objb = [[B new] initWithA:1000 int:100 int:10 int:999];
	printf("[main() scope, public a=%d]\n", objb->a);
	[objb WriteB];
	[objb WriteA];
	[objb release];
	return 0;
}

