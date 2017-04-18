//
//  PlayingCard.h
//  CardMatchingGame
//
//  Created by jibran khan on 12/09/16.
//  Copyright © 2016 jibran khan. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Card.h"

@interface PlayingCard : Card

@property (strong,nonatomic) NSString * suit;
@property (nonatomic) NSUInteger rank;


+(NSArray*)ValidSuits;
+(NSUInteger)maxRank;

+(NSArray*)ValidRanks;

@end


