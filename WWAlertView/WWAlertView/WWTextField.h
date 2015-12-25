//
//  WWTextField.h
//  WWAlertView
//
//  Created by XingLei on 15/12/11.
//  Copyright © 2015年 XingLei. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "WWConstants.h"

WW_ASSUME_NONNULL_BEGIN

typedef NS_OPTIONS(uint8_t, PFTextFieldSeparatorStyle) {
    WWTextFieldSeparatorStyleNone = 0,
    WWTextFieldSeparatorStyleTop = 1 << 0,
    WWTextFieldSeparatorStyleBottom = 1 << 1
};

@interface WWTextField : UITextField

@property (nonatomic, assign) PFTextFieldSeparatorStyle separatorStyle;

@property (WW_NULLABLE_PROPERTY nonatomic, strong) UIColor *separatorColor UI_APPEARANCE_SELECTOR;

@end

WW_ASSUME_NONNULL_END
