//
//  ViewController.m
//  CardMatchingGame
//
//  Created by jibran khan on 07/09/16.
//  Copyright © 2016 jibran khan. All rights reserved.
//

#import "ViewController.h"
#import "Deck.h"
#import "PlayingCardDeck.h"



@interface ViewController ()

@property (strong,nonatomic) Deck * completeDeck;

@property (weak,nonatomic) IBOutlet UILabel *flipsLabel;

@property(nonatomic) int flipCount;

@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(Deck*)completeDeck
{
    
    if(!_completeDeck)
    
    {
        _completeDeck =  [[PlayingCardDeck alloc] init];
        
      //  _completeDeck = [self createDeck];
    }
    
    
    return _completeDeck;
}

/*
-(Deck*)createDeck

{
    return [[PlayingCardDeck alloc]init];
    
}
 
*/

-(void)setFlipCount:(int)flipCount
{
    _flipCount=flipCount;
    
    self.flipsLabel.text=[NSString stringWithFormat:@"Flips:%d",self.flipCount];
}

- (IBAction)touchCardButton:(UIButton *)sender {
    
if([sender.currentTitle length]) //means we are seeing front of card
{
    
    [sender setBackgroundImage:[UIImage imageNamed:@"cardback"] forState:UIControlStateNormal];
    
    [sender setTitle:@"" forState:UIControlStateNormal];
}
    
else //means we are seeing back of card on which rank and suite is written
{
    
    [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"] forState:UIControlStateNormal];
    
    //drawing a random card from the deck

   Card * randomCard=[self.completeDeck drawRandomCard];
    
    NSLog(@"%@",randomCard.contents);
    
    [sender setTitle:randomCard.contents forState:UIControlStateNormal];
}
    
    
    self.flipCount++;
    
    
}

@end
