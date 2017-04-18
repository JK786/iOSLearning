//
//  Deck.m
//  CardMatchingGame
//
//  Created by jibran khan on 07/09/16.
//  Copyright © 2016 jibran khan. All rights reserved.
//

#import "Deck.h"

#import <foundation/foundation.h>

@implementation Deck


-(NSMutableArray*) cards
{
    
    if(!_cards)
        _cards = [[NSMutableArray alloc]init];
    return _cards;
}

-(void)AddCard:(Card *)CardToBeAdded AtTop:(bool)atTop;
{
  if(atTop)
      [self.cards insertObject:CardToBeAdded atIndex:0];
    
  else
      [self.cards addObject:CardToBeAdded];
      
}

-(void)AddCard:(Card *)CardToBeAdded
{
    [self AddCard:(Card *)CardToBeAdded AtTop:NO];
}

-(Card *)drawRandomCard
{
    
    Card * randomCard=nil;
    
    
    //taking care of the case where the array is empty
    
    if([self.cards count])
        
    {
    unsigned index = arc4random()%[self.cards count];
    
    randomCard = self.cards[index];
    
    [self.cards removeObjectAtIndex:index];
    
    }
     
    return randomCard;
    

    
}
@end
