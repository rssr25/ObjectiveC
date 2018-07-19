//Program to work with fractions - class version

#import<Foundation/Foundation.h>

//@interface section: describes the class and its methods

@interface Fraction:NSObject

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;

@end

//@implementation section: describes the data and contains the actual code that implements the methods declared in the interface section

@implementation Fraction
{
	int numerator;
	int denominator;
}

-(void) print
{
	NSLog(@"%i/%i", numerator, denominator);
}

-(void) setNumerator: (int) n
{
	numerator = n;
}

-(void) setDenominator: (int) d
{
	denominator = d;
}

@end

//program section

int main(int argc, const char *argv[])
{
	@autoreleasepool
	{
		Fraction *myFraction = [[Fraction alloc] init];

		//creating the instance
		//myFraction = [Fraction alloc];
		//myFraction = [myFraction init];

		//set to 1/3
		[myFraction setNumerator: 1];
		[myFraction setDenominator: 3];

		//display using print function
		NSLog(@"The value of myFraction is: ");
		[myFraction print];
	}

	return 0;
}