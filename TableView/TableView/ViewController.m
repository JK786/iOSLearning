//
//  ViewController.m
//  TableView
//
//  Created by jibran khan on 16/01/17.
//  Copyright © 2017 jibran khan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _contentArray = @[@"Gilchrist",@"Ponting",@"Clarke",@"Gilesspie",@"Hayden",@"Lee",@"McGill",@"Warne",@"Love",@"Handscomb",@"nevill"];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [self.contentArray count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell;
    
    NSString * Sidentifier = @"Simple identifier";
    
    cell = [tableView dequeueReusableCellWithIdentifier:Sidentifier];
    
    if(cell==nil)
    {
        cell = [[UITableViewCell alloc ]  init ];
        
        cell = [cell initWithStyle:UITableViewCellStyleDefault reuseIdentifier:Sidentifier];
    }
    
    cell.textLabel.text = self.contentArray [indexPath.row];
    
    cell.textLabel.font = [UIFont boldSystemFontOfSize:30];
    
    
    UIImage * image1= [UIImage imageNamed:@"thumbnailimage"];
    cell.imageView.image = image1;
    

    
    return cell;
}



// to indent the text in each row. If 0 means text starts from the extreme left , if non zero the text starts from that many indented blocks away from teh left
- (NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath
{
  if(indexPath.row<=5)
  {
      return 5;
  }
    
  else
  {
      return 10;
   
  }
}



// This allows you to choose which row can be selected and which cant be selected

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
if(indexPath.row==1 )
{
    return nil;
}
    
    else
        return indexPath;
}

// This method is called when the row is actually selected

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSString * message1;
    message1 = self.contentArray[indexPath.row];
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:message1
                                                                   message:@"What a player!"
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) { NSLog(@"WOW");
                                                          }];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}




@end
