//Program for division in class

#import<Foundation/Foundation.h>

@interface Fraction:NSObject
-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;
-(double) convertToNum;
@end

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

-(int) numerator
{
	return numerator;
}

-(int) denominator
{
	return denominator;
}

-(double) convertToNum
{
	if(denominator != 0)
		return (double) numerator/denominator;
	else
		return NAN;
}

@end

int main(int argc, char * argv[])
{
	@autoreleasepool
	{
		Fraction *aFraction = [[Fraction alloc] init];
		Fraction *bFraction = [[Fraction alloc] init];

		[aFraction setNumerator:1];
		[aFraction setDenominator:3];

		[aFraction print];
		NSLog(@"=");
		NSLog(@"%g", [aFraction convertToNum]);

		[bFraction print];
		NSLog(@"=");
		NSLog(@"%g", [bFraction convertToNum]);
	}

	return 0;
}

//after that there is if-else construct
//determine if a number is even or odd
//compound relational tests : and or OR se connected statements
//nested if statements come after that
//our normal else if construct
//program to implement the sign function
//normal calculator implementation using the classes and if else constructs
//We move on to the switch statements
//Boolean Variables : We use BOOL and values YES and NO in objective c
//then comes the conditional operator: Ternary Operator