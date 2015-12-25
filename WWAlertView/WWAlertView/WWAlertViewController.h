//
//  WWViewController.h
//  WWAlertView
//
//  Created by XingLei on 15/12/11.
//  Copyright © 2015年 XingLei. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "WWConstants.h"
#import "WWTextField.h"
#import "WWLabel.h"

WW_ASSUME_NONNULL_BEGIN

typedef void (^submitBlock) (NSString *string);

@interface WWAlertViewController : UIViewController

@property (WW_NULLABLE_PROPERTY nonatomic, strong)  WWTextField *customTextField;
@property (WW_NULLABLE_PROPERTY nonatomic, strong)  WWLabel *customTextLabel;
@property (nonatomic, copy)  submitBlock submitBlock;

@end

WW_ASSUME_NONNULL_END
