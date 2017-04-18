//
//  FruitBasket.h
//  TablePrinter
//
//  Created by jibran khan on 30/09/16.
//  Copyright © 2016 jibran khan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TablePrinterDataSource.h"


@interface FruitBasket : NSObject <TablePrinterDataSource>

{
    NSArray* fruits;
}

@end
