#import <Foundation/NSObject.h>
#import <stdio.h>
#import "Song.h"

//Declaration of Singer class
@interface Singer : NSObject{
	Song *song;
}
- (void)setSong:(Song *)argSong;
- (void)sing;
@end
