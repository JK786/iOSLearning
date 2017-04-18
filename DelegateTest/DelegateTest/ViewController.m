//
//  ViewController.m
//  DelegateTest
//
//  Created by jibran khan on 12/10/16.
//  Copyright © 2016 jibran khan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    SampleProtocol * delegatingObject =  [[SampleProtocol alloc] init];
    
    
    NSLog(@"DSSD");
    
    delegatingObject.delegate = self ;
    
    
    
    [self.ProcessLabel setText:@"Processing.."];
    
    
    [delegatingObject startProcess];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) processCompleted
{
   
    [self.ProcessLabel setText:@"Process Completed"];
}

@end
