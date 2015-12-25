//
//  WWLabel.h
//  WWAlertView
//
//  Created by XingLei on 15/12/11.
//  Copyright © 2015年 XingLei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WWConstants.h"

@interface WWLabel : UILabel

WW_ASSUME_NONNULL_BEGIN

@property (WW_NULLABLE_PROPERTY nonatomic, copy)  NSString *topTitle;
@property (WW_NULLABLE_PROPERTY nonatomic, copy)  NSString *middleTitle;

@end

WW_ASSUME_NONNULL_END