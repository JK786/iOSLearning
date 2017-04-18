//
//  SampleProtocol.m
//  DelegateTest
//
//  Created by jibran khan on 12/10/16.
//  Copyright © 2016 jibran khan. All rights reserved.
//

#import "SampleProtocol.h"

@implementation SampleProtocol

-(void) startProcess
{
    
    [NSTimer scheduledTimerWithTimeInterval:3.0 target:self.delegate
                                   selector:@selector(processCompleted) userInfo:nil repeats:NO];
    
}

@end
