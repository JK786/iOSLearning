//
//  main.m
//  TablePrinter
//
//  Created by jibran khan on 30/09/16.
//  Copyright © 2016 jibran khan. All rights reserved.
//

#import "TablePrinterDataSource.h"
#import "TablePrinter.h"
#import  "FruitBasket.h"

#import <Foundation/Foundation.h>


int main(int argc, const char *argv[])
{
    
    //NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    FruitBasket* myFruitBasket =[[FruitBasket alloc] init];
    
    TablePrinter * myTablePrinter = [[TablePrinter alloc] init];
    
    [myTablePrinter setDataSource: myFruitBasket];
    
    [myTablePrinter printTable];
    

    
   // [pool drain];
    
    return 0;
    
}
