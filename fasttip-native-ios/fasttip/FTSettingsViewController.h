//
//  FTSettingsViewController.h
//  fasttip
//
//  Created by sw on 14-5-19.
//  Copyright (c) 2014年 sw. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FTSettingsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;
- (IBAction)didTapDone:(id)sender;


@end
