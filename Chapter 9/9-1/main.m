#import "Complex.h"

int main(int argc, char *argv[])
{
	@autoreleasepool
	{
		Complex *c1 = [[Complex alloc]init];
		Complex *c2 = [[Complex alloc]init];
		Complex *compResult;

		[c1 setReal:18.0 andImaginary:2.5];
		[c2 setReal: 2.0 andImaginary: 4.0];

		compResult = [c1 add: c2];
		[compResult print];
	}
}