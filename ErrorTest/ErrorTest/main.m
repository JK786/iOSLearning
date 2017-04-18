//
//  main.m
//  ErrorTest
//
//  Created by jibran khan on 25/01/17.
//  Copyright © 2017 jibran khan. All rights reserved.
//

#import <UIKit/UIKit.h>


#import "AppDelegate.h"

#import "SampleError.h"
#import "ViewController.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        
        
        
            SampleError *sampleErrorClass = [[SampleError alloc]init];
            NSError *error = nil;
            NSString *name1 = [sampleErrorClass getEmployeeNameForID:0 withError:&error];
        
        
        //Since error was passed as reference it will get populated in the sample error class and now you can display it
        
            if(error)
            {
                NSLog(@"Error finding Name1: %@",error);
            }
            else
            {
                NSLog(@"Name1: %@",name1);
            }
            
            error = nil;
            
            NSString *name2 = [sampleErrorClass getEmployeeNameForID:2 withError:&error];
            
            if(error)
            {
               
                
            }
            else
            {
                NSLog(@"Name2: %@",name2);
            }
            
        
        
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    
  }
}

