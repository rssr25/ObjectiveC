#import<Foundation/Foundation.h>

int main(int argc, char * argv[])
{
	@autoreleasepool
	{
		int n, number, triangularNumber;
		NSLog(@"What triangularNumber do you want?");
		scanf("%i", &number);

		triangularNumber = 0;

		for(n =1; n <= number; n++)
		{
			triangularNumber += n;
		}

		NSLog(@"Triangular number %i is %i\n", number, triangularNumber);
	}
}