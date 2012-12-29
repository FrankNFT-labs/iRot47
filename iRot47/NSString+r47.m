//
//  NSString+r47.m
//
//  Created by frank poncelet on 21/12/12.
//
//

#import "NSString+r47.h"

@implementation NSString (r47)
-(NSString *) r47String
{
	const char *_string = [self cStringUsingEncoding:NSASCIIStringEncoding];
	int stringLength = [self length];
	char newString[stringLength+1];
	int x;
	for( x=0; x<stringLength; x++ )
	{
		unsigned int aCharacter = _string[x];
        if( 0x20 < aCharacter && aCharacter < 0x7F ) // from ! to ~
			newString[x] = (((aCharacter - 0x21) + 0x2F) % 0x5E) + 0x21;
		else  // Not an r47 character
			newString[x] = aCharacter;
	}
	newString[x] = '\0';
	NSString *rotString = [NSString stringWithCString:newString encoding:NSASCIIStringEncoding];
    DLog(@"%@ = %@",self,rotString);
	return rotString ;
}

@end
