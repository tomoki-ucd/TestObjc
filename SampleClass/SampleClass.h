@interface sampleClass: NSObject
{
}

@property (strong, nonatomic) NSString* member1;	//@property? strong? nonatomic?
@property (strong, nonatomic) NSString* member2;
//property is different from instance variable. Basically, instance variable are hidden from outside of the class unless it is declared as public. Property is supposed to be publice and has getter and setter. This is why property is declared outside of the curly bracket.
//@property (options) describes the access rule for the following variable or object. You can designate access control (Note: Not access level such as public/protected/private such as readonly and readwrite.
//"strong" is one of ownership attribute and it is identical to "retain", which means that the retain property stores the pointor to the object it received and it won't let OS to relase the memory secured for the object.
//"nonatomic" means that it is not guaranteed that the instance is not affected while the other threads are running. "atomic" means the oposite.

-(void) sampleMethod1;
-(int) sampleMethod2:(int)arg1 arg2:(NSString*) arg2;
@end
