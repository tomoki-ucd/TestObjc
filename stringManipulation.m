#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>	//to use NSString
#import <stdio.h>

//comment

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

	
	//initWithFormat:(NSString*)format inits the receiver with the provided format.
	NSString* txt3 = [[NSString alloc] initWithFormat:@"Number = %d", 20];
	NSLog(@"%@", txt3);		//%@ is format identifier for NSString.

	//isEqualToString:(NSString*) checks if the argument string is equal to that of the receiver.
	
	txt = @"Snoopy";
	BOOL isEqual = [txt isEqualToString:@"Snoopy"];
	if(isEqual){
	//caseInsensitiveCompare:(NSString*) checkes if two strings match regardless capital and noncapital letter and returns the followings.
		NSComparisonResult result = [txt caseInsensitiveCompare:@"Onoopy"];
		switch(result){
		case NSOrderedSame:
			NSLog(@"Same order.");
			break;
		case NSOrderedAscending:
			NSLog(@"%@ is smaller than the argument, meaning ascending order.", txt);
			break;
		case NSOrderedDescending:
			NSLog(@"%@ is bigger than the argument, meaning descending order.", txt);
			break;
		}
	}

	//hasPrefix:(NSString*) returns bool value by checking if the receiver includes the argument string at the beginning.
	//hasSuffix:(NSString*) returns bool value by checking if the receiver includes the argument stringa at the ending.
	txt = @"Learning objc is fun!";
	BOOL hasPrefix = [txt hasPrefix:@"Learning"];
	if(hasPrefix){
		BOOL hasSuffix = [txt hasSuffix:@"fun!"];
		if(hasSuffix){
			NSLog(@"It has both prefix and suffix.");
		}
	}

	//stringByAppendingString(NSString*) creates a string by appending the argument.
	//stringByAddingFormat(NSString*) creates a string by appending the 2nd argument in the format designated by the 1st argument.
	txt = @"I am ";
	txt = [txt stringByAppendingString:@"at the "];
	txt = [txt stringByAppendingFormat:@"%d", 100];
	NSLog(@"%@", txt);

	//substringToIndex:(NSUInteger) returns string up to the argument index.
	//substringToFrom:(NSUInteger) returns string from the argument index.
	//substringWithRange:(NSUInteger) returns string in the argument range.
	txt = @"123456789.";
	NSString* subTxt = [txt substringToIndex:4];
	NSString* subTxt2 = [txt substringFromIndex:6];
	NSRange range = NSMakeRange(3, 5);		//The second argument is the number of characters counted from the 1st argument, not from the beginning.
	NSString* subTxt3 = [txt substringWithRange:range];
	NSLog(@"To4=%@, From6=%@, Range3to5=%@", subTxt, subTxt2, subTxt3);
	


	return 0;
}


