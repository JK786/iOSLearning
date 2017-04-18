//
//  PlayingCardDeck.m
//  CardMatchingGame
//
//  Created by jibran khan on 12/09/16.
//  Copyright © 2016 jibran khan. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck


-(instancetype)init
{
    self = [super init];
    
    if(self)
    {
        for(NSString *suit in [PlayingCard ValidSuits])
        {
            for(NSInteger rank=1;rank<=[PlayingCard maxRank];rank++)
            {
                PlayingCard *card = [[PlayingCard alloc]init];
                card.rank = rank;
                card.suit= suit;
                
                
               [self  AddCard:card];
                
            }
        }
    }
    
    
    
        return self;
    
}

@end
