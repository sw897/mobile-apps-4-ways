//
//  FTSettingsViewController.m
//  fasttip
//
//  Created by sw on 14-5-19.
//  Copyright (c) 2014年 sw. All rights reserved.
//

#import "FTSettingsViewController.h"

@interface FTSettingsViewController ()

@end

@implementation FTSettingsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    float tipPercentage = [defaults floatForKey:@"tipPercentage"];
    
    if (tipPercentage <= 0) {
        tipPercentage = 15.0;
    }
    
    self.tipPercentageTextField.text = [NSString stringWithFormat:@"%0.2f", tipPercentage];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)didTapDone:(id)sender {
    float tipPercentage;
    tipPercentage = [self.tipPercentageTextField.text floatValue];
    
    if (tipPercentage > 0) {
        
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setFloat:tipPercentage forKey:@"tipPercentage"];
        [defaults synchronize];
        
        [[self navigationController] popViewControllerAnimated:YES];
        
    } else {
        
        [[[UIAlertView alloc] initWithTitle:@"无效的输入"
                                    message:@"百分比必须是一个数字"
                                   delegate:nil
                          cancelButtonTitle:@"确定"
                          otherButtonTitles:nil] show];
        
    }
}
@end
