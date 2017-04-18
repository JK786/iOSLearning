//
//  PIOMediaAttachmentServiceExtension.h
//  PIOMediaAttachmentExtension
//
//  Copyright © 2017 Oracle Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UserNotifications/UserNotifications.h>

//MARK: Notification ServiceExtension constants
FOUNDATION_EXPORT NSString * const PIOMediaAttachmentURL;
FOUNDATION_EXPORT NSString * const PIOMediaAttachmentType;

@interface PIOMediaAttachmentServiceExtension : UNNotificationServiceExtension

-(void)enableLogging;
-(void)disableLogging;
-(BOOL)isLoggingEnabled;

@end
