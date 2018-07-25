#import<Foundation/Foundation.h>
#import "Fraction.h"
#import "Fraction+MathOps.h"

@interface Fraction (MathOps)
-(Fraction *) add: (Fraction *) f;
-(Fraction *) sub: (Fraction *) f;
-(Fraction *) div: (Fraction *) f;
-(Fraction *) mul: (Fraction *) f;
@end