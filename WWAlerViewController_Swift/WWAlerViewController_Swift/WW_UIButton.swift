//
//  WW_UIButton.swift
//  WWAlerViewController_Swift
//
//  Created by XingLei on 15/12/16.
//  Copyright © 2015年 XingLei. All rights reserved.
//

import UIKit

class WW_UIButton: UIButton {

    var wwTimer =  WWTimer()
    var task: Task?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        enabled = true
        titleLabel?.font = UIFont.systemFontOfSize(12)
        setTitle("获取验证码", forState: UIControlState.Normal)
        titleLabel?.textAlignment = NSTextAlignment.Center
        addTarget(self, action: "getSecurityCode", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func getSecurityCode() {
        enabled = false
        wwTimer.startTimer(false)
        wwTimer.timeOut(){
            (NSString) -> () in
            if NSString == "0秒后重发" {
                self.enabled = true
                self.setTitle("获取验证码", forState: UIControlState.Normal)
                self.wwTimer.stopTimer()
            }
            else {
                self.setTitle(NSString as String, forState: UIControlState.Normal)
            }
        }
    }
    
    func delayed(time: NSTimeInterval) {
       task = wwTimer.delay(time) {
            print(time,"秒输出")
        }
    }
    
    func cancel() {
        wwTimer.cancel(task)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
