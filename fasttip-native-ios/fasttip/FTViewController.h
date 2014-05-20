//
//  FTViewController.h
//  fasttip
//
//  Created by sw on 14-5-15.
//  Copyright (c) 2014年 sw. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FTViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *checkAmountTextField;
@property (weak, nonatomic) IBOutlet UIButton *calculateButton;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalAmountLabel;

@end
