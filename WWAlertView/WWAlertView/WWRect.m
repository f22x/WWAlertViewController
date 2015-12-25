//
//  WWRect.m
//  WWAlertView
//
//  Created by XingLei on 15/12/11.
//  Copyright © 2015年 XingLei. All rights reserved.
//

#import "WWRect.h"

@implementation WWRect

CGRect WWRectMakeWithOriginSize(CGPoint origin, CGSize size) {
    return CGRectMake(origin.x, origin.y, size.width, size.height);
}

CGRect WWRectMakeWithOrigin(CGPoint origin) {
    return WWRectMakeWithOriginSize(origin, CGSizeZero);
}

CGRect WWRectMakeWithSize(CGSize size) {
    return WWRectMakeWithOriginSize(CGPointZero, size);
}

CGRect WWRectMakeWithSizeCenteredInRect(CGSize size, CGRect rect) {
    CGPoint center = CGPointMake(CGRectGetMidX(rect), CGRectGetMidY(rect));
    CGPoint origin = CGPointMake(floorf(center.x - size.width / 2.0f),
                                 floorf(center.y - size.height / 2.0f));
    return WWRectMakeWithOriginSize(origin, size);
}

CGSize WWSizeMin(CGSize size1, CGSize size2) {
    CGSize size = CGSizeZero;
    size.width = MIN(size1.width, size2.width);
    size.height = MIN(size1.height, size2.height);
    return size;
}

@end
