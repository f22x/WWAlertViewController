//
//  WWView.m
//  WWAlertView
//
//  Created by XingLei on 15/12/14.
//  Copyright © 2015年 XingLei. All rights reserved.
//

#import "WWView.h"
#import "WWRect.h"

@implementation WWView

- (instancetype)init {
    self = [super init];
    if (!self) {
        return nil;
    }
    return self;
}

+ (UIImageView *)getWWViewFrame:(CGRect)frame {
    //    已需要展示的视图为基准
    CGRect lineRect = WWRectMakeWithSize(CGSizeMake(frame.size.width, frame.size.height));
    UIGraphicsBeginImageContextWithOptions(lineRect.size, NO, 0.0f);
    
    [[UIColor grayColor]setStroke];
    
    
    UIBezierPath *lineBezierPath = [UIBezierPath bezierPath];
    
    [lineBezierPath moveToPoint:CGPointMake(lineRect.origin.x, floorf(lineRect.size.height * 0.73936))];
    [lineBezierPath addLineToPoint:CGPointMake(lineRect.size.width, floorf(lineRect.size.height * 0.73936))];
    
    [lineBezierPath moveToPoint:CGPointMake(floorf(lineRect.size.width/2), floorf(lineRect.size.height * 0.73936))];
    [lineBezierPath addLineToPoint:CGPointMake(floorf(lineRect.size.width/2), lineRect.size.height)];
    
    lineBezierPath.lineWidth = 0.3f;
    [lineBezierPath stroke];
    UIImage *lineImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    UIImageView *lineImageView = [[UIImageView alloc]initWithImage:lineImage];
    lineImageView.userInteractionEnabled = YES;
    return lineImageView;
}

@end
