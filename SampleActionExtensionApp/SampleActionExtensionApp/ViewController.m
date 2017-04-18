//
//  ViewController.m
//  SampleActionExtensionApp
//
//  Created by jibran khan on 12/03/17.
//  Copyright © 2017 jibran khan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionButtonPressed:(id)sender {
    UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:@[self.textView.text]
                                                                             applicationActivities:nil];
    [self presentViewController:activityVC animated:YES completion:nil];
}



@end
