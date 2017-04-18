//
//  main.m
//  SingletonPattern
//
//  Created by jibran khan on 07/10/16.
//  Copyright © 2016 jibran khan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "SingleObject.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        
                
                //illegal construct
                //Compile Time Error: The constructor SingleObject() is not visible
                //SingleObject object = new SingleObject();
                
                //Get the only object available
        SingleObject * object = [SingleObject getInstance];
                
                //show the message
                [object showMessage];
       
        
        
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
        
    }
}
