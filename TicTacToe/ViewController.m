//
//  ViewController.m
//  TicTacToe
//
//  Created by Cindy Barnsdale on 5/26/16.
//  Copyright © 2016 Salar Kohnechi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

/*
@property (weak, nonatomic) IBOutlet UIButton *buttonOne;
@property (weak, nonatomic) IBOutlet UIButton *buttonTwo;
@property (weak, nonatomic) IBOutlet UIButton *buttonThree;
@property (weak, nonatomic) IBOutlet UIButton *buttonFour;
@property (weak, nonatomic) IBOutlet UIButton *buttonFive;
@property (weak, nonatomic) IBOutlet UIButton *buttonSix;
@property (weak, nonatomic) IBOutlet UIButton *buttonSeven;
@property (weak, nonatomic) IBOutlet UIButton *buttonEight;
@property (weak, nonatomic) IBOutlet UIButton *buttonNine;
*/

/*
This property is the result box that tells us who's turn it is.
*/
@property (weak, nonatomic) IBOutlet UILabel *whichPlayerLabel;

// Outlet Collection is an option when you create an outlet. Then you can drag the remaining buttons into the collection to link all buttons together.
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *buttons;


// isX is a bool property which determines if the box is x or not.
@property BOOL isX;

@end

@implementation ViewController


- (IBAction)onButtonTapped:(UIButton *)sender {
    for (UIButton *button in self.buttons) {
        if (sender == button) {
            [button setTitle:self.whichPlayerLabel.text forState:UIControlStateNormal];
        }
    }
    [self mamboDogfaceBananaPatch];
  
//    buttonOne.titleLabel.text = [NSString stringWithFormat:@"X"];
    

    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.isX = true;
    [self mamboDogfaceBananaPatch];
}

-(void)mamboDogfaceBananaPatch{
    self.isX = !self.isX;
    if (self.isX) {
        self.whichPlayerLabel.text = @"X";
    } else {
        self.whichPlayerLabel.text = @"0";
    }
}







@end
