//program to reverse the digit of a number using do while
#import<Foundation/Foundation.h>

int main(int argc, char * argv[])
{
	@autoreleasepool
	{
		int number, right_digit;

		NSLog(@"Enter your number.");
		scanf("%i", &number);

		do
		{
			right_digit = number%10;
			NSLog(@"%i", right_digit);
			number/=10;
		}
		while(number != 0);
	}

return 0;
}

//further we discuss the break and continue statements