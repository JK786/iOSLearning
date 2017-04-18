//
//  TablePrinter.m
//  TablePrinter
//
//  Created by jibran khan on 30/09/16.
//  Copyright © 2016 jibran khan. All rights reserved.
//

#import "TablePrinter.h"
#import "TablePrinterDataSource.h"

@implementation TablePrinter

@synthesize dataSource;

-(void) printTable
{
    NSString* separator = @"-------------------------";
    
    NSString* title = @"Table";
    
    
    if([dataSource respondsToSelector:@selector(TableName)])
        {
            [dataSource TableName];
        }
    
    
    printf( "\n%s\n%s\n", [title UTF8String],
           [separator UTF8String] );
    
    if([dataSource respondsToSelector:@selector(rowNumber)])
    {
        int numberOfRows = [dataSource rowNumber];
    
        int  j ;
        
        BOOL printLineNumbers = NO;
        
        if ( [dataSource respondsToSelector: @selector(PrintLineNumbers)] ) {
            
         printLineNumbers = [dataSource PrintLineNumbers];
            
        }
        
        
        for ( j=0; j < numberOfRows; j++ )
        {
            
            NSString* outputString = [dataSource stringForRowAtIndex:j ];
            
            if ( printLineNumbers )
            {
                printf( "%d | %s\n", j+1, [outputString UTF8String] );
            }
            
            else
            {
                printf( "%s\n", [outputString UTF8String] );
            }
        
        }
    }
}
    
    
    
    
@end
