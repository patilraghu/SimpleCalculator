//
//  STViewController.m
//  SimpleTutorial
//
//  Created by FlyinGeek on 3/4/14.
//  Copyright (c) 2014 OSUMobileAppClub. All rights reserved.
//

#import "STViewController.h"
#import "STSumCaculator.h"

@interface STViewController (){
    NSString *stack;
}
@end

@implementation STViewController
@synthesize resultLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // init
    stack = @"";
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnOne:(id)sender {
    [self addnumber:1];
}

- (IBAction)btnTwo:(id)sender {
    [self addnumber:2];
}

- (IBAction)btnThree:(id)sender {
    [self addnumber:3];
}

- (IBAction)btnFour:(id)sender {
    [self addnumber:4];
}

- (IBAction)btnFive:(id)sender {
    [self addnumber:5];
}

- (IBAction)btnSix:(id)sender {
    [self addnumber:6];
}

- (IBAction)btnSeven:(id)sender {
    [self addnumber:7];
}

- (IBAction)btnEight:(id)sender {
    [self addnumber:8];
}

- (IBAction)btnNine:(id)sender {
    [self addnumber:9];
}

-(IBAction)btnZero:(id)sender{
    [self addnumber:0];
    
}

-(void)addnumber:(int)number{
    stack = [NSString stringWithFormat:@"%1$@%2$d", stack, number];
    
    [resultLabel setText:stack];
}


@end
