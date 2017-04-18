//
//  AppDelegate.m
//  CompleteTestApp
//
//  Created by jibran khan on 20/03/17.
//  Copyright © 2017 jibran khan. All rights reserved.
//

#import "AppDelegate.h"




@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //NSLog(@"Launch%@",launchOptions);
    
    
    NSLog(@"Application Launch called");
    
    
#ifdef DEBUG
    [PushIOManager sharedInstance].configType = PIOConfigTypeDebug; //load pushio_config_debug.json
#else
    [PushIOManager sharedInstance].configType = PIOConfigTypeRelease;//load pushio_config.json
#endif
    
    
    
#ifdef DEBUG
    [[PushIOManager sharedInstance] enableLogging:YES];
    [[PushIOManager sharedInstance] setLogLevel:PIOLogLevelInfo]; //PIOLogLevelWarn or PIOLogLevelError
#else
    [[PushIOManager sharedInstance] disableLogging];
#endif
    
    
    
    NSString *apiKey = nil;
    NSString *accountToken = nil;
#ifdef DEBUG
    apiKey = @"ABEkthN_6IdRB4a3BhXQD8LK0"; //Copy the apiKey value from pushio_config_debug.json
    accountToken = @"ABEqJAtL1gHDlPDOHuwiodgYs"; //Copy the accountToken value from pushio_config_debug.json. Assign nil if no value available.
#else
    apiKey = RELEASE_APIKEY; //Copy the apiKey value from pushio_config.json.
    accountToken = RELEASE_ACCOUNT_TOKEN;//Copy the accountToken value from pushio_config.json. Assign nil if no value available.
#endif
    NSError *error = nil;
    [[PushIOManager sharedInstance] configureWithAPIKey:apiKey accountToken:accountToken error:&error];
    if(nil == error)
    {
        NSLog(@"SDK Configured Successfully");
    }
    else
    {
        NSLog(@"Unable to configure SDK, reason: %@", error.description);
    }
    
    
    // This assumes that steps [7.1, 7.2, 7.3, 7.4] above are implemented before the following is called
   
     [[PushIOManager sharedInstance] didFinishLaunchingWithOptions:launchOptions];
    
    
    
    [[PushIOManager sharedInstance] registerForAllRemoteNotificationTypes:^(NSError *error, NSString *deviceToken) {
        if (nil == error) {
            NSError *regTrackError = nil;
            [[PushIOManager sharedInstance] registerApp:&regTrackError completionHandler:^(NSError *regAppError, NSString *response) {
                if (nil == regAppError) {
                    NSLog(@"Application registered successfully!");
                }else{
                    NSLog(@"Unable to register application, reason: %@", regAppError.description);
                }
            }];
            if (nil == regTrackError) {
                NSLog(@"Registration locally stored successfully.");
            }else{
                NSLog(@"Unable to store registration, reason: %@", regTrackError.description);
            }
        }
    }];
    
    return YES;

}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}



- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:
(NSData *)deviceToken
{
    
    
    [[PushIOManager sharedInstance] didRegisterForRemoteNotificationsWithDeviceToken:deviceToken];
    
    NSLog(@"\n HAHAHAHA");
    
}


- (void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error
{
    [[PushIOManager sharedInstance] didFailToRegisterForRemoteNotificationsWithError:error];
}



- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo
{
    
    NSLog(@"\n iOS 10 minus: didReceiveRemoteNotification called");
    
    [[PushIOManager sharedInstance] didReceiveRemoteNotification:userInfo];
}





- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler
{
    
    NSLog(@"iOS10 minus didReceiveRemoteNotification with completion handler called \n ");
    
   
    NSString *alertMessage = @"This notif was received in iOS 10 minus";
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:nil message:alertMessage delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    [alertView show];
    /*
    
    [[PushIOManager sharedInstance] didReceiveRemoteNotification:userInfo fetchCompletionResult:UIBackgroundFetchResultNewData fetchCompletionHandler:completionHandler];
    
    */
    
    NSLog(@"Current Application Badge Count After Remote Notification was processed %ld \n", (long)[UIApplication sharedApplication].applicationIconBadgeNumber);
    
    
    NSLog(@"-----------------------------------------Badge Check Over---------------------------------------\n");
}



//iOS 10


//What exactly is this method used for ? Is this called when a notification is received for iOS 10? 
-(void) userNotificationCenter:(UNUserNotificationCenter *)center
didReceiveNotificationResponse:(UNNotificationResponse *)response
         withCompletionHandler:(void(^)())completionHandler
{
    
    
    NSLog(@"iOS 10+ userNotificationCenter:didReceiveNotificationResponse with completion handler called\n ");
//
//    /*
//    NSDictionary* userInfo = response.notification.request.content.userInfo;
//    if (nil == userInfo || 0 == userInfo.count) {
//        NSLog(@"Userinfo not found in the notification! \n");
//        completionHandler();
//        return;
//    }
//    */
//    
//    
//    NSMutableDictionary *newUserInfo = [NSMutableDictionary dictionaryWithDictionary:userInfo];
//    
    
    [[PushIOManager sharedInstance] userNotificationCenter:center didReceiveNotificationResponse:response withCompletionHandler:completionHandler];
    
    
    NSLog(@"Current Application Badge Count After Remote Notification was processed %ld \n", (long)[UIApplication sharedApplication].applicationIconBadgeNumber);
    
    
    NSLog(@"-----------------------------------------Badge Check Over---------------------------------------\n");
}




-(void) userNotificationCenter:(UNUserNotificationCenter *)center
       willPresentNotification:(UNNotification *)notification
         withCompletionHandler:(void (^)(UNNotificationPresentationOptions options))completionHandler
{
    
    
    
    NSLog(@"iOS 10+ userNotificationCenter:willPresentNotification:with completion handler called\n ");
    
    
    [[PushIOManager sharedInstance] userNotificationCenter:center willPresentNotification:notification withCompletionHandler:completionHandler];
}



@end




