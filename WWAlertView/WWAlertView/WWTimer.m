//
//  WWTimer.m
//  WWAlertView
//
//  Created by XingLei on 15/12/11.
//  Copyright © 2015年 XingLei. All rights reserved.
//

#import "WWTimer.h"

static NSInteger timeInterval = 60;

@interface WWTimer ()
{
    NSObject *object;
}

@property (nonatomic, strong)  NSTimer *timer;

@end

@implementation WWTimer

- (void)startTimer {
    _timer = [NSTimer timerWithTimeInterval:1 target:self selector:@selector(timeOut) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:_timer forMode:NSRunLoopCommonModes];
}

- (void)timeOut {
    NSString *string = [NSString stringWithFormat:@"%lu秒后重发",(unsigned long)timeInterval--];
    self.timeBlock(string);
}

- (void)stopTimer {
    [_timer invalidate];
    timeInterval = 60;
}

@end
