//
//  WWTimer.h
//  WWAlertView
//
//  Created by XingLei on 15/12/11.
//  Copyright © 2015年 XingLei. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "WWConstants.h"

WW_ASSUME_NONNULL_BEGIN

typedef void (^timerBlock) (NSString *string);

@interface WWTimer : NSObject

@property (nonatomic, copy)  timerBlock timeBlock;
- (void)startTimer;
- (void)stopTimer;
- (void)timeOut;

@end

WW_ASSUME_NONNULL_END