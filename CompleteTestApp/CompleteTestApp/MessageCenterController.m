//
//  MessageCenterController.m
//  CompleteTestApp
//
//  Created by jibran khan on 20/03/17.
//  Copyright © 2017 jibran khan. All rights reserved.
//

#import "MessageCenterController.h"

#import <PushIOManager/PushIOManager.h>
#import <PushIOManager/PIOMCMessage.h>

@implementation MessageCenterController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    [self loadMessages];
    
    
}

-(void)loadMessages
{
    
    
    NSString *messageCenterName = @"Primary";
    
       __weak typeof (self) weakSelf = self;
    
    
    [[PushIOManager sharedInstance] fetchMessagesForMessageCenter:messageCenterName CompletionHandler:^(NSError *error, NSArray *messages) {
        
        
        if (nil == error) {
            {  [weakSelf showMessages:messages];
                
              
                if(messages==nil)
                {
                    NSLog(@"No messages");
                }
            }
        }else{
            NSString *errorMessage = nil;
            switch (error.code) {
                case PIOErrorCodeInvalidURL:
                    errorMessage = @"Message URL is invalid, check the provided message center name and retry.";
                    break;
                case PIOErrorCodeNoNetwork:
                    errorMessage = @"No Netowork available, check the device network and try again.";
                    break;
                case PIOErrorCodeMaximumRetryReached:
                    errorMessage = @"Maximum retrial for message fetch has reached, that's due to because response received was either 500 or 429.";
                    break;
                case PIOErrorCodeEmptyResponse:
                    errorMessage = @"Message list is empty.";
                    break;
                case PIOErrorCodeInvalidPayload:
                    errorMessage = @"Invalid response received.";
                    break;
                    
                default:
                    errorMessage = error.description;
                    break;
            }
            [[[UIAlertView alloc]initWithTitle:@"Message" message:errorMessage delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
            //DDLogError(@"Inbox Error: %@", error.description);
        }
    }];

    
}



-(NSString *)getDateStringValue:(NSDate *)dateValue{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //TODO: From UTC to Current Timezone.
    [dateFormatter setDateFormat:@"dd-MM-yyyy HH:mm:ss"];
    [dateFormatter setTimeZone:[NSTimeZone localTimeZone]];
    NSString *stringDate = [dateFormatter stringFromDate:dateValue];
    return stringDate;
}


-(void)showMessages:messages
{
    int i;
    
    
    for(i=0;i<[messages count];i++)
    {
        PIOMCMessage * singleMessage = messages[i];
        
        NSLog(@"---------------------Message no.%d------------------------\n",i+1);
        
        NSLog(@"Message ID:%@\n MessageSubject:%@\nMessageiconURL:%@\nMessageCenterName:%@\nMessageContent:%@\nMessageExpiryTime:%@MessageSentTime:%@\n",
        singleMessage.messageID,
        singleMessage.subject,
         singleMessage.iconURL,
    singleMessage.messageCenterName,
     singleMessage.message,
         [self getDateStringValue:singleMessage.expiryTimestamp],
         [self getDateStringValue:singleMessage.sentTimestamp]);
        
        
        
    }
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
