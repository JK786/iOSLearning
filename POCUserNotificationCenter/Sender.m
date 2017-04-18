//
//  Sender.m
//  POCUserNotificationCenter
//
//  Created by jibran khan on 02/02/17.
//  Copyright © 2017 jibran khan. All rights reserved.
//

#import "Sender.h"

@implementation Sender

-(void)SendNotifications
{
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"notice"
                                                        object:[NSString stringWithString:@"You are notified"]];
    
}


@end
