//
//  Deck.h
//  CardMatchingGame
//
//  Created by jibran khan on 07/09/16.
//  Copyright © 2016 jibran khan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

@property (strong,nonatomic) NSMutableArray * cards; //An array of cards

- (void)AddCard :(Card *)CardToBeAdded AtTop:(bool)atTop ; // Boolean which tells wether card to be added or top or bottom.

-(void)AddCard:(Card*)CardToBeAddded; //incase the top argument is forgotten , it takes default action

- (Card *)drawRandomCard;

@end
