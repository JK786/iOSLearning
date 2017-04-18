//
//  PlayingCard.m
//  CardMatchingGame
//
//  Created by jibran khan on 12/09/16.
//  Copyright © 2016 jibran khan. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard


-(NSString *)contents
{
    
    NSArray *rankStrings = [PlayingCard ValidRanks];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
    
    
}


-(void)setRank:(NSUInteger)rank
{
  if(rank <=[PlayingCard maxRank])
  {
      
      _rank = rank;
      
  }
}

-(void)setSuit:(NSString *)suit
{
    if([[PlayingCard ValidSuits] containsObject:suit])
        self.suit = suit;
    
}


-(NSString *)suit
{
    return self.suit ? self.suit:@"?";
}

+(NSArray *)ValidRanks
{
    return @[@"?",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+(NSUInteger) maxRank
{
    return [[self ValidRanks] count ] -1 ;
    
    
    
}



+(NSArray *)ValidSuits
{
    
    return @[@"♠︎",@"♣︎",@"♥︎",@"♦︎"];
    
}




@end
