//
//  PushRegistrationController.m
//  CompleteTestApp
//
//  Created by jibran khan on 20/03/17.
//  Copyright © 2017 jibran khan. All rights reserved.
//

#import "PushRegistrationController.h"

//Import PushIOManager
#import <PushIOManager/PushIOManager.h>

@implementation PushRegistrationController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)RegisterForPush:(id)sender {
    
    
    NSLog(@"Clicked register for push \n");
    // Requests a device token from Apple
    [[PushIOManager sharedInstance] registerForAllRemoteNotificationTypes:^(NSError *error, NSString *deviceToken)
     {
         if (nil == error)
         {
             NSError *regTrackError = nil;
             NSLog(@"Account Token: %@ and API KEY: %@",[[PushIOManager sharedInstance] getAccountToken], [[PushIOManager sharedInstance] getAPIKey]);
             [[PushIOManager sharedInstance] registerApp:&regTrackError completionHandler:^(NSError *regAppError, NSString *response)
              {
                  if (nil == regAppError)
                  {
                      NSLog(@"Application registered successfully!");
                  }else
                  {
                      NSLog(@"Unable to register application, reason: %@", regAppError.description);
                  }
              }];
             if (nil == regTrackError)
             {
                 NSLog(@"Registration locally stored successfully.");
             }else
             {
                 NSLog(@"Unable to store registration, reason: %@", regTrackError.description);
             }
         }
     }];
    // Override point for customization after application launch.

    
}

- (IBAction)RegisterUserID:(UIButton *)sender {
    
 //Showing an alert with new API in iOS 10
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Register" message:@"Enter the User ID you want to register:" preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil]];
    [alert addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"UID:";
        textField.secureTextEntry = YES;
    
        NSString * UserID = [textField text];
        
       [[PushIOManager sharedInstance]registerUserID:UserID];
    }];
    [self presentViewController:alert animated:YES completion:nil];
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
