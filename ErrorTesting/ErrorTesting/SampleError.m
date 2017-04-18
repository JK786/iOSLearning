//
//  SampleError.m
//  ErrorTesting
//
//  Created by jibran khan on 25/01/17.
//  Copyright © 2017 jibran khan. All rights reserved.
//

#import "SampleError.h"

@implementation SampleError

-(NSString*)getEmployeeNameWith:(int)id PopulatingError:(NSError *__autoreleasing *)Error
{
    
    if(id==0)
    {
        return @"Jibran";
        
        NSLog(@"id=0");
    }
    
    else{
        
        
         NSLog(@"id!=0");
        NSString * domain = @"com.MyCompany.MyApplication.ErrorDomain";
        NSString * description = @"Messed up stuff! Crazy error";
        
        NSDictionary * userdictionary;
        userdictionary = [[ NSDictionary alloc] initWithObjectsAndKeys:description,@"SomeKey", nil];
        
        *Error=[NSError errorWithDomain:domain code:-101 userInfo:userdictionary];
        
        return @"";
    }
}

@end
