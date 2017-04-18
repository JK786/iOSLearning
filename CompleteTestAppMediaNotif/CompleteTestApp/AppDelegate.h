//
//  AppDelegate.h
//  CompleteTestApp
//
//  Created by jibran khan on 20/03/17.
//  Copyright © 2017 jibran khan. All rights reserved.
//

#import <UIKit/UIKit.h>

//Import PushIOManager
#import <PushIOManager/PushIOManager.h>

//iOS 10:
#import <UserNotifications/UserNotifications.h>
//Implement UserNotifications delegate to receive the notification callbacks in iOS 10.


@interface AppDelegate : UIResponder <UIApplicationDelegate,UNUserNotificationCenterDelegate>

@property (strong, nonatomic) UIWindow *window;


@end

