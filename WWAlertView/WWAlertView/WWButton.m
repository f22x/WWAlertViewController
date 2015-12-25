//
//  WWButton.m
//  WWAlertView
//
//  Created by XingLei on 15/12/11.
//  Copyright © 2015年 XingLei. All rights reserved.
//

#import "WWButton.h"
#import "WWTimer.h"
#import "ControlColor.h"

@interface WWButton ()
@property (nonatomic, strong)  WWTimer *timer;

@end

@implementation WWButton

- (instancetype)init {
    self = [super init];
    if (!self) {
        return nil;
    }
    self.enabled = true;
    self.titleLabel.font = [UIFont systemFontOfSize:12];
    _timer = [[WWTimer alloc]init];
    [self setTitle:@"获取验证码" forState:UIControlStateNormal];
    [self setTitleColor:[ControlColor colorWithHexString:@"#ef5a50"] forState:UIControlStateNormal];
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    [self addTarget:self action:@selector(getSecurityCode) forControlEvents:UIControlEventTouchUpInside];
    return self;
}

- (void)getSecurityCode {
    self.enabled = false;
    [_timer startTimer];
    __weak typeof(self)weakSelf = self;
    [_timer setTimeBlock:^(NSString *string) {
        if ([string isEqualToString:@"0秒后重发"]) {
            weakSelf.enabled = true;
            [weakSelf setTitle:@"获取验证码" forState:UIControlStateNormal];
            [weakSelf.timer stopTimer];
        }
        else {
            [weakSelf setTitle:string forState:UIControlStateNormal];
        }
    }];
}

@end
