//
//  Card.h
//  CardMatchingGame
//
//  Created by jibran khan on 07/09/16.
//  Copyright © 2016 jibran khan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong,nonatomic) NSString * contents;

@property (nonatomic,getter=ischosen) BOOL chosen;
@property (nonatomic,getter=ismatched) BOOL matched;

-(int) match:(NSArray*) otherCards;


@end
