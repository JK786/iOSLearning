//
//  SingleObject.m
//  SingletonPattern
//
//  Created by jibran khan on 07/10/16.
//  Copyright © 2016 jibran khan. All rights reserved.
//

#import "SingleObject.h"


@implementation SingleObject


//create an object of SingleObject
private static SingleObject instance = new SingleObject();

//make the constructor private so that this class cannot be
//instantiated

private SingleObject(){}

//Get the only object available
+(SingleObject *) getInstance(){
    return instance;
}

-public void showMessage(){
    System.out.println("Hello World!");
}


@end
