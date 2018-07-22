//the calculator app using classes and objects
#import<Foundation/Foundation.h>

@interface Calculator:NSObject

//accumulator methods
-(void) setAccumulator:(double)value;
-(void) clear;
-(double) accumulator;

//arithmetic methods
-(void) add:(double) value;
-(void) subtract:(double) value;
-(void) multiply:(double) value;
-(void) divide:(double) value;

@end

@implementation Calculator
{
	double accumulator;
}

-(void) setAccumulator: (double) value
{
	accumulator = value;
}

-(void) clear
{
	accumulator= 0;
}

-(double) accumulator
{
	return accumulator;
}

-(void) add: (double) value
{
	accumulator += value;
}

-(void) subtract: (double) value
{
	accumulator -= value;
}

-(void) multiply: (double) value
{
	accumulator *= value;
}

-(void) divide: (double) value
{
	accumulator /= value;
}

@end

int main(int argc, char * argv[])
{
	@autoreleasepool
	{
		Calculator *myCalc = [[Calculator alloc] init];
		[myCalc setAccumulator:100.0];
		[myCalc add:200.];
		[myCalc subtract:100];
		[myCalc divide:10];
		[myCalc multiply:10];

		NSLog(@"The result is %g", [myCalc accumulator]);
	}

	return 0;
}