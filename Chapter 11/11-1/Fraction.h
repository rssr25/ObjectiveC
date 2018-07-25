#import<Foundation/Foundation.h>

@interface Fraction:NSObject

@property int numerator, denominator;

-(void) setTo: (int) n over:(int) d;
-(void) reduce;
-(double) convertToNum;
-(void) print;

@end