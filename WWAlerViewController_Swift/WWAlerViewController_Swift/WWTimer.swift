//
//  WWTimer.swift
//  WWAlerViewController_Swift
//
//  Created by XingLei on 15/12/15.
//  Copyright © 2015年 XingLei. All rights reserved.
//

import UIKit

public class WWTimer: NSObject {
    
    var timeInterval : NSTimeInterval = 60

    override init() {
        super.init()
    }
    
    func startTimer(stop: Bool) {
        var timer = NSTimer()
        timeInterval = 60
        if (stop == false) {
            timer = NSTimer(timeInterval: timeInterval, target: self, selector: "timeOut", userInfo: nil, repeats: true)
            NSRunLoop.currentRunLoop().addTimer(timer, forMode: NSRunLoopCommonModes)
        }
        else {
            timer.invalidate()
            timeInterval = 60
        }
    }
    
    func timeOut(timeBlock: ((NSString) -> ())?) {
        if let block = timeBlock {
            let string = "\(timeInterval--)秒后重发"
            block(string)
        }
    }
    
    func stopTimer() {
        startTimer(true)
    }
}
