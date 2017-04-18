//
//  NSString+CamelCase.m
//  CamelCase
//
//  Created by jibran khan on 03/10/16.
//  Copyright © 2016 jibran khan. All rights reserved.
//

#import "NSString+CamelCase.h"

@implementation NSString(CamelCase)


-(NSString *)camelCaseString


{

NSString *capitalizedString = [self capitalizedString];


NSArray* components = [capitalizedString componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];

NSString* output = @"";

for ( NSString* word in components )
{
    output = [output stringByAppendingString: word];
}


return output;
}



@end
