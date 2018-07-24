//program to calculate 200th triangular number
//Introduction for the for statement

#import<Foundation/Foundation.h>

int main(int argc, char * argv[])
{
	@autoreleasepool
	{
		int n, triangularNumber;
		triangularNumber = 0;

		for(n = 1; n <=200; n++)
		{
			triangularNumber += n;
		}

		NSLog(@"The 200th triangular number is %i", triangularNumber);
	}

	return 0;
}

/*
we also have certain relational operators

==
<=
>=
<
>
!=
 */