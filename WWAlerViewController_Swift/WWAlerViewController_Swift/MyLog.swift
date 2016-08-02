//
//  MyLog.swift
//  WWAlerViewController_Swift
//
//  Created by XingLei on 16/1/5.
//  Copyright © 2016年 XingLei. All rights reserved.
//

import Foundation

func printLog<T>(message: T,
    file: String = #file,
    method: String = #function,
    line: Int = #line
    )
{
    #if DEBUG
        print("\((file as NSString).lastPathComponent)[\(line)], \(method): \(message)")
    #endif
}
