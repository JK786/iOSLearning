//
//  main.m
//  CamelCase
//
//  Created by jibran khan on 03/10/16.
//  Copyright © 2016 jibran khan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "NSString+CamelCase.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        NSString * StringToBeCamelized = @"Hey my name is jibran ";
       
        NSString * output = [StringToBeCamelized camelCaseString];
        
        NSLog(@"%@",output);
        
    }
}
