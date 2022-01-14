#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>	//to use NSString
#import <stdio.h>

int main(int argc, char* argv[]){
	
	char* txt_p = "Testing String Manipulation.";

	//-(id)initWithUTF8String:(const char*) creates NSString from null-terminated C string in UTF8.
	NSString* txt = [[NSString alloc] initWithUTF8String:txt_p];
	NSLog(@"initWithUTF8String created NSString from null-terminated C string in UTF8 : %@", txt);		//printf cannot show NSString.

	printf("\n");


	//-(strong const char*) UTF8String returns the pointer of null-terminated C string in UTF8.
	const char* txt_p2 = [txt UTF8String];
	printf("UTF8String returns the pointer of null-terminated C string in UTF8 with NSString object: %s\n", txt_p2);
	
	printf("\n");

	//-(strong const char*) cStringUsingEncoding:(NSStringEncoding)encoding returns the pointer to the C string converted from receiver.
	const char* txt_p3 = [@"Testing String Maipulation." cStringUsingEncoding:NSUTF8StringEncoding];

	//-(id)initWithCString:(const char*)nullTerminatedCString encoding:(NSStringEncoding)encoding creates NSString from null-terminated C string in designated character code.
	NSLog(@"initWithCString:(const char*) encoding:(NSStringEncoding) creates NSString from C string in designated character code.: %@", [[NSString alloc] initWithCString:txt_p3 encoding:NSUTF8StringEncoding]);	

	printf("\n");


	//-(BOOL)canBeConvertedToEncoding:(NSSTrijngEncoding)encoding checks if receiver's string can be encoded in the diesignated character code.
	BOOL canConvert = [txt canBeConvertedToEncoding:NSUTF8StringEncoding];
	printf("canBeConvertedToEncoding:(NSStringEncoding) checks if the receiver's string can be encoded in the designated character code.\n");

	printf("\n");

	//-(NSData*)dataUsingEncoding:(NSStringEncoding)encoding returns NSData storing sequence of bytes encoded in the designated character code. If not possible, returns nil.
	NSData * data;
	if(canConvert == true){
		data = [txt dataUsingEncoding:NSUTF8StringEncoding];
	}
	printf("dataUsingEncoding returns NSData storing string bytes encoded in the designated character code.\n");	
	
	//-(id) initWithData:(NSData*) data encoding:(NSStringEncoding)encoding creates NSString from sequence of byte encoded in the designated character code.
	if(data != nil){
		NSString* txt2 = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
	}
	NSLog(@"initWithData:(NSData*) encoding:(NSStringEncoding) creates NSString from string bytes encoded in the designated character code.\n");

	

	return 0;
}


