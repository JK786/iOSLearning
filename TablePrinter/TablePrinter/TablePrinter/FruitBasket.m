//
//  FruitBasket.m
//  TablePrinter
//
//  Created by jibran khan on 30/09/16.
//  Copyright © 2016 jibran khan. All rights reserved.
//

#import "FruitBasket.h"

@implementation FruitBasket

    - (id) init
    {
        if (self = [super init] )
        {
            fruits =
            [[NSArray alloc] initWithObjects: @"Apple", @"Orange", @"Banana",
             @"Kiwi", @"Pear", nil];
        }
        return self;
    }


-(int) rowNumber
{
    
    return [fruits count];
}

- (NSString*) TableName
 {
 return @"Available Fruits";
 }

- (NSString*) stringForRowAtIndex:(int) index
{
    return (NSString*)[fruits objectAtIndex: index];
}

- (BOOL) printLineNumbers
 {
 return YES;
 }



@end
