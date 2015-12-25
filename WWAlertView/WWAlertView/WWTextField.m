//
//  WWTextField.m
//  WWAlertView
//
//  Created by XingLei on 15/12/11.
//  Copyright © 2015年 XingLei. All rights reserved.
//

#import "WWTextField.h"
#import "ControlColor.h"

#define lineHeight          3

@implementation WWTextField

#pragma mark -
#pragma mark Init

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (!self) return nil;

    self.textColor = [UIColor grayColor];
    self.font = [UIFont systemFontOfSize:15.0f];
    self.placeholder = @"请输入验证码";
    self.layer.cornerRadius = 4;
    self.layer.borderColor = [ControlColor colorWithHexString:@"#cccccc"].CGColor;
    self.layer.borderWidth = 1.0f;
    self.backgroundColor = [ControlColor colorWithHexString:@"#f5f5f5"];
    self.keyboardType = UIKeyboardTypeNumberPad;
    [self addLineView];
    return self;
}

- (void)addLineView {
    UIGraphicsBeginImageContextWithOptions(self.frame.size, 0, 0);
    [[ControlColor colorWithHexString:@"#cccccc"]setFill];
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(self.frame.size.width * 0.65, lineHeight + 2)];
    [path addLineToPoint:CGPointMake(self.frame.size.width * 0.65, lineHeight + (self.frame.size.height - lineHeight*lineHeight))];
    path.lineWidth = 0.3;
    [path stroke];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    UIImageView *imageView = [[UIImageView alloc]initWithImage:image];
    [self addSubview:imageView];
}

- (CGRect)textRectForBounds:(CGRect)bounds {
    return CGRectInset( bounds , 10 , 0 );
}

- (CGRect)editingRectForBounds:(CGRect)bounds {
    return CGRectInset( bounds , 10 , 0 );
}

- (void)drawPlaceholderInRect:(CGRect)rect
{
    [[UIColor grayColor] setFill];
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
    [[self placeholder] drawInRect:rect withFont:[UIFont systemFontOfSize:15.0f]];
#pragma clang diagnostic pop
}

- (CGRect)placeholderRectForBounds:(CGRect)bounds
{
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
    CGSize size = [self.placeholder sizeWithFont:[UIFont systemFontOfSize:15.0f]];
#pragma clang diagnostic pop
    CGRect placeHolderF = CGRectMake(10, 0, size.width, size.height);
    return placeHolderF;
}

@end
