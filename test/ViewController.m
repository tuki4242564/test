//
//  ViewController.m
//  test
//
//  Created by 月成　昭浩 on 13/11/14.
//  Copyright (c) 2013年 University of Kitakyu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad{     //初期段階
    [super viewDidLoad];
	StartInput=YES;
    current = 0;
}

-(IBAction)equalButtonPressed:(id)sender
{
    
    if(operation == 0){
        current +=[result.text intValue];
    } else if( operation == 1 ){
        current -= [result.text intValue];
    }else if( operation == 2 ){
        current *= [result.text intValue];
    }else if( operation == 3 ){
        current/=[result.text intValue];
    }
    result.text = [NSString stringWithFormat:@"%f", current];
    StartInput = YES;
    }
 
-(IBAction)opButtonPressed:(id)sender
{
    UIButton *b = (UIButton *)sender;
    current = [result.text intValue];
    operation = b.tag;
    StartInput = YES;
    if(operation == 4){
        current =[result.text intValue];
        current=-current;
        result.text = [NSString stringWithFormat:@"%f", current];
        StartInput = YES;
    }
}

-(IBAction)NumberButton:(id)sender{
    UIButton *b = (UIButton *)sender;
    
    if( StartInput){
        if(b.tag==0) return;
        result.text =[NSString stringWithFormat:@"%d", b.tag];
        StartInput = NO;
    } else {
     result.text = [NSString stringWithFormat:@"%@%d",result.text, b.tag];
    }
}

-(IBAction)clearButton:(id)sender{
    result.text = @"0";
    StartInput = YES;
    current=0;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
@end
