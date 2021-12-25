#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>

//Declaration of Song class
@interface Song : NSObject{
	NSString *lyrics;
}
- (NSString *)lyrics;
- (void)setLyrics:(NSString *)argLyrics;
@end
