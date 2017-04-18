//
//  SampleError.h
//  ErrorTest
//
//  Created by jibran khan on 25/01/17.
//  Copyright © 2017 jibran khan. All rights reserved.
//


//In this file we create a custom error

#import <Foundation/Foundation.h>

@interface SampleError : NSObject

-(NSString*) getEmployeeNameForID: (int) id withError: (NSError**)errorPtr;


@end
