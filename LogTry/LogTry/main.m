//
//  main.m
//  LogTry
//
//  Created by jibran khan on 18/01/17.
//  Copyright © 2017 jibran khan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "AppDelegate.h"

#if DEBUG == 0
#define DebugLog(...)
#elif DEBUG == 1
#define DebugLog(...) NSLog(__VA_ARGS__)
#endif

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        
        NSLog(@"hello this is NSLog \n");
        
        //disabling logs
        
        DebugLog(@"dsdsd");
        
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
