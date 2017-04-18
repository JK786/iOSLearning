//
//  Receiver1.m
//  POCUserNotificationCenter
//
//  Created by jibran khan on 02/02/17.
//  Copyright © 2017 jibran khan. All rights reserved.
//

#import "Receiver1.h"

@implementation Receiver1

-(void)StartListening
{
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(method_you_want_to_call:) name:@"notice" object:nil];
    
}


-(void)StopListening
{
    
}


-(void) method_you_want_to_call:(NSNotification *) sentObject{
    
    //since the object sent was NSString
    NSString *string=(NSString *) [sentObject object] ;
    NSLog(@"%@**",string);
    //Do your other stuffs after receiving the notification
    
    NSLog(@"WOW");
}
@end
