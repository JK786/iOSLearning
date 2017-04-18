//
//  main.m
//  ErrorTesting
//
//  Created by jibran khan on 25/01/17.
//  Copyright © 2017 jibran khan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

#import "SampleError.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        SampleError *SampleObject = [[SampleError alloc ] init];
        
        NSError *error = nil;

        
        NSString *name;
        
        name = [SampleObject getEmployeeNameWith:1 PopulatingError:&error];
        
        
      
        
        if(error!=nil)
        NSLog(@"The error is:%@",error);
        
        
        else{
              NSLog(@"The name is %@",name);
        }
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
