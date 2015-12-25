//
//  WWRect.h
//  WWAlertView
//
//  Created by XingLei on 15/12/11.
//  Copyright © 2015年 XingLei. All rights reserved.
//

#import <CoreGraphics/CoreGraphics.h>
#import <Foundation/Foundation.h>

@interface WWRect : NSObject

extern CGRect WWRectMakeWithOriginSize(CGPoint origin, CGSize size);
extern CGRect WWRectMakeWithOrigin(CGPoint origin);
extern CGRect WWRectMakeWithSize(CGSize size);

extern CGRect WWRectMakeWithSizeCenteredInRect(CGSize size, CGRect rect);
extern CGSize WWSizeMin(CGSize size1, CGSize size2);

@end
