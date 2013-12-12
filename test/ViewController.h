//
//  ViewController.h
//  test
//
//  Created by 月成　昭浩 on 13/11/14.
//  Copyright (c) 2013年 University of Kitakyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    IBOutlet UIButton *zero;   //0
    IBOutlet UIButton *one;
    IBOutlet UIButton *two;
    IBOutlet UIButton *three;
    IBOutlet UIButton *four;
    IBOutlet UIButton *five;
    IBOutlet UIButton *six;
    IBOutlet UIButton *seven;
    IBOutlet UIButton *eight;
    IBOutlet UIButton *nine;   //9
 
    IBOutlet UIButton *sum;    //+
    IBOutlet UIButton *sub;    //-
    IBOutlet UIButton *div;    //÷
    IBOutlet UIButton *pro;    //×
    IBOutlet UIButton *equ;    //=
    IBOutlet UIButton *code;   //+-
   
        
    IBOutlet UILabel *result; //計算結果
    IBOutlet UILabel *amari; //余り
    BOOL StartInput;
    double current;
    int operation;
    int x;
    int count;
    int y;
    int z;
}
-(IBAction)NumberButton:(id)sender;
-(IBAction)clearButton:(id)sender;
-(IBAction)equalButtonPressed:(id)sender;
-(IBAction)opButtonPressed:(id)sender;
@end


