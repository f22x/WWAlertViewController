//
//  WWConstants.h
//  WWAlertView
//
//  Created by XingLei on 15/12/11.
//  Copyright © 2015年 XingLei. All rights reserved.
//

#import <Availability.h>
#import <TargetConditionals.h>

#ifndef WWConstants_h
#define WWConstants_h

///--------------------------------------
/// @name Deprecated Macros
///--------------------------------------

#ifndef WW_DEPRECATED
#  ifdef __deprecated_msg
#    define WW_DEPRECATED(_MSG) (deprecated(_MSG))
#  else
#    ifdef __deprecated
#      define WW_DEPRECATED(_MSG) (deprecated)
#    else
#      define WW_DEPRECATED(_MSG)
#    endif
#  endif
#endif

///--------------------------------------
/// @name Nullability Support
///--------------------------------------


#if __has_feature(nullability)
#  define WW_NULLABLE nullable
#  define WW_NULLABLE_S __nullable
#  define WW_NULL_UNSPECIFIED null_unspecified
#  define WW_NULLABLE_PROPERTY nullable,
#else
#  define WW_NULLABLE
#  define WW_NULLABLE_S
#  define WW_NULL_UNSPECIFIED
#  define WW_NULLABLE_PROPERTY
#endif

#if __has_feature(assume_nonnull)
#  ifdef NS_ASSUME_NONNULL_BEGIN
#    define WW_ASSUME_NONNULL_BEGIN NS_ASSUME_NONNULL_BEGIN
#  else
#    define WW_ASSUME_NONNULL_BEGIN _Pragma("clang assume_nonnull begin")
#  endif
#  ifdef NS_ASSUME_NONNULL_END
#    define WW_ASSUME_NONNULL_END NS_ASSUME_NONNULL_END
#  else
#    define WW_ASSUME_NONNULL_END _Pragma("clang assume_nonnull end")
#  endif
#else
#  define WW_ASSUME_NONNULL_BEGIN
#  define WW_ASSUME_NONNULL_END
#endif

///--------------------------------------
//判断iphone4
#define IPHONE_4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) : NO)
//判断iphone5
#define IPHONE_5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)
//判断iphone6
#define IPHONE_6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) : NO)
//判断iphone6+
#define IPHONE_6_PLUS ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) : NO)
//----------------------------------------

#endif /* WWConstants_h */
