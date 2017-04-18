//
//  main.m
//  POCUserNotificationCenter
//
//  Created by jibran khan on 02/02/17.
//  Copyright © 2017 jibran khan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Sender.h"
#import "Receiver1.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        
        Sender * sender = [[ Sender alloc] init ];
        
        Receiver1 * receiver1 = [[Receiver1 alloc]init];
        
        [receiver1 StartListening];
        
        [sender SendNotifications];
        
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
