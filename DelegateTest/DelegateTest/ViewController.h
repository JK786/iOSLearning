//
//  ViewController.h
//  DelegateTest
//
//  Created by jibran khan on 12/10/16.
//  Copyright © 2016 jibran khan. All rights reserved.
//



//This is the delegate 
#import <UIKit/UIKit.h>
#import "SampleProtocol.h"

@interface ViewController : UIViewController <SampleDelegateProtocol>
;


@property (weak, nonatomic) IBOutlet UILabel *ProcessLabel;


@end

