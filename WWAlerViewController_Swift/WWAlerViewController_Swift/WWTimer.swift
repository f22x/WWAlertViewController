//
//  WWTimer.swift
//  WWAlerViewController_Swift
//
//  Created by XingLei on 15/12/15.
//  Copyright © 2015年 XingLei. All rights reserved.
//

import UIKit
import Foundation

typealias Task = (cancel : Bool) -> Void

public class WWTimer: NSObject {
    
    var timeInterval : NSTimeInterval = 60
    
    override init() {
        super.init()
    }
    
    func startTimer(stop: Bool) {
        var timer = NSTimer()
        timeInterval = 60
        if (stop == false) {
            timer = NSTimer(timeInterval: timeInterval, target: self, selector: #selector(timeOut), userInfo: nil, repeats: true)
            NSRunLoop.currentRunLoop().addTimer(timer, forMode: NSRunLoopCommonModes)
        }
        else {
            timer.invalidate()
            timeInterval = 60
        }
    }
    
    func timeOut(timeBlock: ((NSString) -> ())?) {
        if let block = timeBlock {
            let string = "\(--timeInterval)秒后重发"
            block(string)
        }
    }
    
    func stopTimer() {
        startTimer(true)
    }
    
    func delay(time:NSTimeInterval, task:() -> ()) -> Task? {
        func dispatch_later(block:() -> ()) {
            dispatch_after(
                dispatch_time(
                    DISPATCH_TIME_NOW,
                    Int64(time * Double(NSEC_PER_SEC))),
                dispatch_get_main_queue(), block)
        }
        
        var closure: dispatch_block_t? = task
        var result: Task?
        
        let delayedClosure: Task = {
            cancel in
            if let internalClosure = closure {
                if (cancel == false) {
                    dispatch_async(dispatch_get_main_queue(), internalClosure)
                }
            }
            closure = nil
            result = nil
        }
        
        result = delayedClosure
        
        dispatch_later {
            if let delayedClosure = result {
                delayedClosure(cancel: false)
            }
        }
        
        return result
    }
    
    func cancel(task:Task?) {
        task?(cancel: true)
    }
    
}




