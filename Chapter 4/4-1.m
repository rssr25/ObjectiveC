//different data types
#import<Foundation/Foundation.h>

int main(int argc, char * argv[])
{
	@autoreleasepool
	{
		int integerVar = 100;
		float floatingVar = 331.79;
		double doubleVar = 8.44e+11;
		char charVar = 'R';

		NSLog(@"integerVar = %i", integerVar);
		NSLog(@"floatingVar = %f", floatingVar);
		NSLog(@"doubleVar = %e", doubleVar);
		NSLog(@"doubleVar = %g", doubleVar);
		NSLog(@"charVar = %c", charVar);
	}

	return 0;
}

/*
There are some qualifiers that can be used in front of the int data type declaration
these are long, long long, short, unsigned and signed. 
*/

/*
Type id is like a generic object type which means it can store an object
of basically any type. eg. id graphicObject;
Methods can be declared to return values of type id, like so:
 -(id) newObject: (int) type;
*/