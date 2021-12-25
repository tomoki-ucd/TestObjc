#import "Song.h"
#import "Singer.h"

//main program
int main(void){

	id song;
	id singer;

	song = [[Song alloc] init];
	[song setLyrics:@"la la la ..."];

	singer = [[Singer alloc] init];
	[singer setSong:song];
	[singer sing];	

	return 0;
}
