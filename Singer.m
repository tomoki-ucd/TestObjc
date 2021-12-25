#import "Singer.h"

//Implementation of Singer class
@implementation Singer: NSObject
-(void)setSong:(Song *)argSong{
	song = argSong;
}
-(void)sing{
	printf("♩ %s ♩ \n", [[song lyrics] UTF8String]);
}
@end
