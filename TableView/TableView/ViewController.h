//
//  ViewController.h
//  TableView
//
//  Created by jibran khan on 16/01/17.
//  Copyright © 2017 jibran khan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>

@property (copy,nonatomic) NSArray * contentArray;


@end

