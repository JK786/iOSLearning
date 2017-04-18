//
//  SampleProtocol.h
//  DelegateTest
//
//  Created by jibran khan on 12/10/16.
//  Copyright © 2016 jibran khan. All rights reserved.
//




//This is the delegating object 

#import <Foundation/Foundation.h>

@protocol SampleDelegateProtocol <NSObject>

@required

-(void) processCompleted;

@end


@interface SampleProtocol : NSObject

@property id <SampleDelegateProtocol> delegate;

-(void) startProcess;



@end
