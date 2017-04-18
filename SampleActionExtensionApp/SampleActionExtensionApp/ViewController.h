//
//  ViewController.h
//  SampleActionExtensionApp
//
//  Created by jibran khan on 12/03/17.
//  Copyright © 2017 jibran khan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@end


@interface ViewController ()

@property (nonatomic, weak) IBOutlet UITextView *textView;


- (IBAction)actionButtonPressed:(id)sender;

@end
