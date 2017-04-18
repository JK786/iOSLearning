//
//  Receiver1.h
//  POCUserNotificationCenter
//
//  Created by jibran khan on 02/02/17.
//  Copyright © 2017 jibran khan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Receiver1 : NSObject

-(void)StartListening;
-(void) method_you_want_to_call:(NSNotification *) sentObject;
-(void)StopListening;

@end
