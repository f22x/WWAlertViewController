//
//  MyLog.swift
//  WWAlerViewController_Swift
//
//  Created by XingLei on 16/1/5.
//  Copyright © 2016年 XingLei. All rights reserved.
//

import Foundation

func printLog<T>(message: T,
    file: String = __FILE__,
    method: String = __FUNCTION__,
    line: Int = __LINE__
    )
{
    #if DEBUG
        print("\((file as NSString).lastPathComponent)[\(line)], \(method): \(message)")
    #endif
}
