//
//  FTViewController.m
//  fasttip
//
//  Created by sw on 14-5-15.
//  Copyright (c) 2014年 sw. All rights reserved.
//

#import "FTViewController.h"

@interface FTViewController ()
{
    float _tipPercentage;
}

- (IBAction)didTapCalculate:(id)sender;

@end

@implementation FTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    // 保存默认的小费百分比
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    float tipPercentage = [defaults floatForKey:@"tipPercentage"];
    if (tipPercentage > 0) {
        _tipPercentage = tipPercentage;
    } else {
        _tipPercentage = 15.0;
    }
    self.tipAmountLabel.text = [NSString stringWithFormat:@"%0.2f%%", _tipPercentage];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)didTapCalculate:(id)sender {
    float checkAmount, tipAmount, totalAmount;
    
    if (self.checkAmountTextField.text.length > 0) {
        
        checkAmount = [self.checkAmountTextField.text floatValue];
        tipAmount = checkAmount * (_tipPercentage / 100);
        totalAmount = checkAmount + tipAmount;
        
        self.tipAmountLabel.text = [NSString stringWithFormat:@"%0.2f元", tipAmount];
        self.totalAmountLabel.text = [NSString stringWithFormat:@"%0.2f元", totalAmount];
        
    }
    
    [self.checkAmountTextField resignFirstResponder];
}
@end
