//
//  main.m
//  BlockTest
//
//  Created by jibran khan on 09/01/17.
//  Copyright © 2017 jibran khan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <Foundation/Foundation.h>

int main(int argc, char * argv[]) {
    @autoreleasepool {
      
        
        
        double (^testingBlock) (double first,double second);
        
        testingBlock = ^double(double first,double second)
        {
            return first + second ;
            
        };
        
        double sum = testingBlock(10,20);
        
        NSLog(@"The sum is %2f",sum);
        
    }
}
