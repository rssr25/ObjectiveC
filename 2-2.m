#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){

	@autoreleasepool
	{
		NSLog(@"Programming is fun!");
		NSLog(@"Programming in Objective-C is even more fun!");
	}

	return 0;
}

//basically autoreleasepool will be studied later but it takes care of the
//management of the memory. @ wali string are NSString objects.