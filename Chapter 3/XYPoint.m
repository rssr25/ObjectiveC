//Exercise 7 in Chapter 3

#import<Foundation/Foundation.h>

//interface section
@interface XYPoint:NSObject

-(void) setX: (int)x;
-(void) setY: (int)y;
-(int) getX;
-(int) getY;

@end

//implementation section
@implementation XYPoint
{
	int X;
	int Y;
}

-(void) setX: (int)x
{
	X = x;
}

-(void) setY: (int)y
{
	Y = y;
}

-(int) getX
{
	return X;
}

-(int) getY
{
	return Y;
}

@end

//program section
int main(int argc, char *argv[])
{
	@autoreleasepool
	{
		XYPoint *myPoint = [[XYPoint alloc] init];

		[myPoint setX:2];
		[myPoint setY:3];

		NSLog(@"The point is (%i, %i)", [myPoint getX], [myPoint getY]);
	}
	
	return 0;

}
