//
//  Card.m
//  CardMatchingGame
//
//  Created by jibran khan on 07/09/16.
//  Copyright © 2016 jibran khan. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int) match:(NSArray *)otherCards
{
    
    int score = 0;
    
    for(Card * card in otherCards)
    {
        if([self.contents isEqualToString:card.contents])
        {
           score=1;
        }
        
        
      
    }
    
      return score;
}

@end
