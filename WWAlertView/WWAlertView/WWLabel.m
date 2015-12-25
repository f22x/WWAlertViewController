//
//  WWLabel.m
//  WWAlertView
//
//  Created by XingLei on 15/12/11.
//  Copyright © 2015年 XingLei. All rights reserved.
//

#import "WWLabel.h"
#import "ControlColor.h"
#import "WWConstants.h"

@implementation WWLabel

- (instancetype)init {
    self = [super init];
    if (!self) {
        return nil;
    }
    return self;
}


- (void)drawRect:(CGRect)rect {
    NSString *str = @"为了您的账户安全，我们将发送验证码到您的手机";
    NSMutableDictionary *ornamentAttributes = [NSMutableDictionary dictionary];
    ornamentAttributes[NSFontAttributeName] = [UIFont fontWithName:@"BodoniOrnamentsITCTT"
                                                              size:14];
    NSMutableParagraphStyle *ornamentParagraph = [[NSParagraphStyle defaultParagraphStyle] mutableCopy];
    ornamentParagraph.alignment = NSTextAlignmentCenter;
    ornamentAttributes[NSParagraphStyleAttributeName] = ornamentParagraph;
    ornamentAttributes[NSForegroundColorAttributeName] = [ControlColor colorWithHexString:@"#666666"];
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
    CGSize theStringSize = [str sizeWithFont:[UIFont systemFontOfSize:14]
                               constrainedToSize:self.frame.size
                                   lineBreakMode:self.lineBreakMode];
    
    [str drawInRect:CGRectMake((self.frame.size.width - theStringSize.width)/2, 10, theStringSize.width, 250) withAttributes:ornamentAttributes];
    
    NSString *str1 = nil;
    if (self.middleTitle) {
        str1 = self.middleTitle;
    }
    NSString *resultString = [str1 stringByReplacingCharactersInRange:NSMakeRange(3, 4) withString:@"****"];
    NSDictionary *attrs1 = @{
                            NSForegroundColorAttributeName : [ControlColor colorWithHexString:@"#333333"],
                            NSFontAttributeName : [UIFont systemFontOfSize:23]
                            };
    CGSize stringSize = [resultString sizeWithFont:[UIFont systemFontOfSize:23]
                           constrainedToSize:self.frame.size
                               lineBreakMode:self.lineBreakMode];
#pragma clang diagnostic pop
    if (IPHONE_6_PLUS) {
        [resultString drawInRect:CGRectMake((self.frame.size.width - stringSize.width)/2, theStringSize.height+15, self.frame.size.width, 100) withAttributes:attrs1];
    }
    else {
        [resultString drawInRect:CGRectMake((self.frame.size.width - stringSize.width)/2, theStringSize.height+5, self.frame.size.width, 100) withAttributes:attrs1];
    }
}


@end
