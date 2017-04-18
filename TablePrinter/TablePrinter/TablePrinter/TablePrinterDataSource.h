//
//  TablePrinterDataSource.h
//  TablePrinter
//
//  Created by jibran khan on 30/09/16.
//  Copyright © 2016 jibran khan. All rights reserved.
//


#import <Foundation/Foundation.h>


@protocol  TablePrinterDataSource <NSObject>

@required

- (NSString *) stringForRowAtIndex: (int)index;
- (int) rowNumber;

@optional

-(NSString*) TableName;
-(BOOL) PrintLineNumbers;

@end


