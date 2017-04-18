//
//  SingleObject.h
//  SingletonPattern
//
//  Created by jibran khan on 07/10/16.
//  Copyright © 2016 jibran khan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingleObject : NSObject

@property  SingleObject * sObject;

+  (SingleObject *) getInstance;

- (void) showMessage;


@end
