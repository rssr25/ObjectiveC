#import "Fraction.h"

@interface Fraction (MathOps)
-(Fraction *) add: (Fraction *) f;
-(Fraction *) sub: (Fraction *) f;
-(Fraction *) div: (Fraction *) f;
-(Fraction *) mul: (Fraction *) f;
@end

@implementation Fraction

@synthesize numerator, denominator;

-(void) print
{
	NSLog(@"%i/%i", numerator, denominator);
}

-(double) convertToNum
{
	if(denominator != 0)
		return (double) denominator/numerator;
	else
		return NAN;
}

-(void) setTo: (int) n over: (int) d
{
	numerator = n;
	denominator = d;
}

-(void) reduce
{
	int u = numerator;
	int v = denominator;
	int temp;

	while(v != 0)
	{
		temp = u%v;
		u = v;
		v = temp;
	}

	numerator /= u;
	denominator /= u;
}
@end

@implementation Fraction (MathOps)

-(Fraction *) add: (Fraction *) f
{
	Fraction * result = [[Fraction alloc] init];

	result.numerator = (self.numerator * f.denominator) + (self.denominator * f.numerator);
	result.denominator = self.denominator * f.denominator;
	NSLog(@"done before reducing");
	[result reduce];

	return result;
}

-(Fraction *) sub: (Fraction *) f
{
	Fraction * result = [[Fraction alloc] init];

	result.numerator = (self.numerator * f.denominator) - (self.denominator * f.numerator);
	result.denominator = self.denominator * f.denominator;
	[result reduce];

	return result;
}

-(Fraction *) mul: (Fraction *) f
{
	Fraction * result = [[Fraction alloc] init];

	result.numerator = self.numerator * f.numerator;
	result.denominator = self.denominator * f.denominator;
	[result reduce];

	return result;
}

-(Fraction *) div: (Fraction *) f
{
	Fraction * result = [[Fraction alloc] init];

	result.numerator = self.numerator * f.denominator;
	result.denominator = self.denominator * f.numerator;
	[result reduce];

	return result;
}
@end





//program section 

int main(int argc, char * argv[])
{
	@autoreleasepool
	{
		Fraction *a = [[Fraction alloc] init];
		Fraction *b = [[Fraction alloc] init];
		Fraction *result;

		[a setTo:1 over:3];
		[b setTo:2 over:5];

		NSLog(@"values set");

		result = [a add: b];
		[result print];

		NSLog(@"add set");

		result = [a sub: b];
		[result print];

		NSLog(@"sub set");

		result = [a mul: b];
		[result print];

		NSLog(@"mul set");

		result = [a div: b];
		[result print];

		NSLog(@"div set");


	}

	return 0;
}