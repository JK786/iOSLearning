//
//  SampleError.h
//  ErrorTesting
//
//  Created by jibran khan on 25/01/17.
//  Copyright © 2017 jibran khan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SampleError : NSObject

-(NSString *) getEmployeeNameWith :(int) id PopulatingError :(NSError**) Error;

@end
