//
//  main.m
//  Trial
//
//  Created by jibran khan on 10/01/17.
//  Copyright © 2017 jibran khan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"\n Testing Enumerations \n");
        
        
       
        typedef NS_ENUM(NSInteger, Daysofweek)
        {
          
            Saturday = 1,
            Sunday = 2,
            Monday=3,
            Tuesday=4,
            Wednesday=5,
            Thursday=6,
            Friday=7
            
        };
        
        
        NSLog(@"Days of the week are as follows : \n");
        
        NSLog(@"Saturday : %ld \n", Saturday);
        NSLog(@"Sunday : %ld \n", Sunday );
        NSLog(@"Monday : %ld \n",Monday);
        NSLog(@"Tuesday : %ld \n",Tuesday);
        NSLog(@"Wednesday : %ld \n",Wednesday);
        NSLog(@"Thursday : %ld \n",Thursday);
        NSLog(@"Friday : %ld \n",Friday);
       
    
    
        
        
        if( Saturday )
        {
            NSLog(@"Hello Saturday \n");
            
        }
        
        
        /*Testing block*/
        
        double (^Sumoftwonumbers) (double first, double second);
        
        
        Sumoftwonumbers = ^double(double first,double second){
            
            
            return first + second ;
        };
        
        
        double sumis = Sumoftwonumbers(20,30);
        
        NSLog(@"The sum is %f",sumis);
        
        
        /*Testing user input */
        
        
        int age;
        NSLog(@"What is your age? ");
        
        scanf("%d",&age);
        
        
        
        
         NSOperation * backgroundoperation;
         
         backgroundoperation = [[NSOperation alloc] init];
         
         backgroundoperation.qualityOfService = NSQualityOfServiceBackground;
         
         backgroundoperation.queuePriority=NSOperationQueuePriorityLow;
         
         NSOperationQueue *Ourqueue = [NSOperationQueue mainQueue];
         
         [Ourqueue addOperation:backgroundoperation];
        
        
        
        
        /*Testing completion block for a operation*/
        
        
         NSOperation * trialoperation;
         trialoperation.qualityOfService = NSQualityOfServiceBackground;
         trialoperation.queuePriority = NSOperationQueuePriorityHigh;
         
         trialoperation.completionBlock = ^{
         
         NSLog(@"The operation has been completed \n");
         
         };
         
         
         [Ourqueue addOperation:trialoperation];
         
         
         NSLog(@"Hahaha we end finally");
      
        
        
        
    }
    return 0;
}


