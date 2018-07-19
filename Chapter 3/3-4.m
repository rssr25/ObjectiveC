//encapsulation allows a nice layer of insulation between the programmer and the
//class developer

//let us take an example of encapsulation and how can we access
//the instance variables potentially outside of the class

//setters and getters are collectively called accessors

#import<Foundation/Foundation.h>

//interface section
@interface Fraction:NSObject

-(void) print;
//setters
-(void) setNumerator:(int) n;
-(void) setDenominator:(int) d;
//getters
-(int) num;
-(int) den;

@end

//implementation section
@implementation Fraction
{
	int numerator;
	int denominator;
}

-(void) print
{
	NSLog(@"%i/%i", numerator, denominator);
}

-(void) setDenominator: (int) d
{
	denominator = d;
}

-(void) setNumerator: (int) n
{
	numerator = n;
}

-(int) num
{
	return numerator;
}

-(int) den
{
	return denominator;
}

@end

//program section
int main(int argc, char * argv[])
{
	@autoreleasepool
	{
		Fraction *myFraction = [[Fraction alloc] init];
		//can also write Fraction *myFraction = [Fraction new];

		//set to 1/3
		[myFraction setNumerator: 1];
		[myFraction setDenominator: 3];

		//display the fraction using two new methods
		NSLog(@"The value of myFraction is: %i/%i", [myFraction num], [myFraction den]);
	}

	return 0;
}