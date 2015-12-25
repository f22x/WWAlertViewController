//
//  TestXXX.m
//  WWAlertView
//
//  Created by XingLei on 15/12/17.
//  Copyright © 2015年 XingLei. All rights reserved.
//

#import "TestXXX.h"
#import <objc/runtime.h>

@implementation TestXXX

- (instancetype)init {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    Class class = objc_allocateClassPair(NSObject.class, "Sark", 0);
    class_addIvar(class, "_gayFriend", sizeof(id), log2(sizeof(id)), @encode(id));
    class_addIvar(class, "_girlFriend", sizeof(id), log2(sizeof(id)), @encode(id));
    class_addIvar(class, "_company", sizeof(id), log2(sizeof(id)), @encode(id));
    objc_registerClassPair(class);
    
    return self;
}

@end
