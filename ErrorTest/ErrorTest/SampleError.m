//
//  SampleError.m
//  ErrorTest
//
//  Created by jibran khan on 25/01/17.
//  Copyright © 2017 jibran khan. All rights reserved.
//

#import "SampleError.h"

@implementation SampleError

-(NSString *) getEmployeeNameForID : (int) id withError:(NSError**) errorPtr
{
  if(id == 0)
  {
      return @"The employee name is whatever";
  }
    
  else{
      
     //define the custom error here
      
      NSString *domain =  @"com.MyCompany.MyApplication.ErrorDomain";
      NSString *description = @"Unable to complete the process";
      
  
      
      //Here description is value and NSLocalisedDescriptionKey is the key
      
      NSDictionary * userInfo =[[NSDictionary alloc] initWithObjectsAndKeys:description,@"NSLocalisedDescriptionKey", nil];
      
      *errorPtr = [NSError errorWithDomain:domain code:-101
                                  userInfo:userInfo];
      return @"";
      
      
  }




}





@end
