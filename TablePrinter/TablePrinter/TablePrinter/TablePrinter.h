//
//  TablePrinter.h
//  TablePrinter
//
//  Created by jibran khan on 30/09/16.
//  Copyright © 2016 jibran khan. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TablePrinterDataSource;

@interface TablePrinter : NSObject

@property id <TablePrinterDataSource> dataSource;

-(void) printTable;

@end
