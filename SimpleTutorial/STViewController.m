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
    NSString *opp;
    double result;
    int optype;
}
@end

@implementation STViewController
@synthesize resultLabel, opperator;

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

-(IBAction)btnEquals:(id)sender
{
    [self logic: 0];
}

-(IBAction)btnPlus:(id)sender
{
    [self logic: 1];
}

-(IBAction)btnSub:(id)sender
{
    [self logic: 2];
}

-(IBAction)btnTimes:(id)sender
{
    [self logic: 3];
}

-(IBAction)btnDivide:(id)sender
{
    [self logic: 4];
}
-(IBAction)plusMinus:(id)sender
{
    
}

-(IBAction)btnClear:(id)sender
{
    stack = @"0";
    opp = @"";
    
    [resultLabel setText:stack];
    [opperator setText: opp];
    optype = 0;
    result = 0.0;
}

-(void)addnumber:(int)number{
    
    if(stack == NULL){
        stack = @"0";
    }
    
    if(number > -1){
        stack = [NSString stringWithFormat:@"%1$@%2$d", stack, number];
    }else if([stack length] > 0){
        stack = [stack substringToIndex:[stack length] -number];
    }
    if([stack length] <= 0){
        stack = @"";
    }
    [resultLabel setText:stack];
}

-(void)logic:(int)type
{
    if(type == 0)
    {
        if(optype == 1){
            stack = [NSString stringWithFormat:@"%f", [stack doubleValue]+result];
        }else if(optype == 2){
            stack = [NSString stringWithFormat:@"%f", [stack doubleValue]-result];
            
        }else if(optype == 3){
            stack = [NSString stringWithFormat:@"%f", [stack doubleValue]*result];
            
        }else if(optype == 4){
            stack = [NSString stringWithFormat:@"%f", [stack doubleValue]/result];
            
        }
        
        [resultLabel setText:stack];
        
    }else{
        
        if(type == 1){ // addition
            [opperator setText:@" "];
            
        }else if(type == 2){ // subtraction
            [opperator setText:@"-"];
        }else if(type == 3){ // multiply
            [opperator setText:@"*"];
        }else if(type == 4){ // division
            [opperator setText:@"/"];
        }
        optype = type;
        result = [stack doubleValue];
        stack = @"";
        [resultLabel setText:stack];
    }
}


@end
