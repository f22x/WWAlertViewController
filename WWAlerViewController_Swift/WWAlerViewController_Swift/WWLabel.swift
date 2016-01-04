//
//  WWLabel.swift
//  WWAlerViewController_Swift
//
//  Created by XingLei on 15/12/15.
//  Copyright © 2015年 XingLei. All rights reserved.
//

import UIKit
import Foundation

let IPHONE_6: Bool = UIScreen.instancesRespondToSelector("currentMode") ? CGSizeEqualToSize(CGSizeMake(750, 1334), (UIScreen.mainScreen().currentMode?.size)!) : false

class WWLabel: UILabel {
    
    var topTitle : NSString?
    var middleTitle : NSString?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    override func drawRect(rect: CGRect) {
        let topString = "为了您的账户安全，我们将发送验证码到您的手机"
        let topStringFont = UIFont(name: "BodoniOrnamentsITCTT", size: 14)
        let topStringColor = UIColor.blackColor()
        let topStringStyle = NSParagraphStyle.defaultParagraphStyle().mutableCopy() as? NSMutableParagraphStyle
        topStringStyle?.alignment =  NSTextAlignment.Center
        
        let topStringAttributes = [
            NSFontAttributeName: topStringFont!,
            NSForegroundColorAttributeName: topStringColor,
            NSParagraphStyleAttributeName: topStringStyle!
            ] as NSDictionary
        
        let topRect: CGRect = topString.boundingRectWithSize(frame.size, options: NSStringDrawingOptions.UsesFontLeading, attributes: topStringAttributes as? [String : AnyObject], context: nil);
        topString.drawInRect(CGRectMake((frame.size.width - topRect.size.width)/2, 10, topRect.size.width, 250), withAttributes:topStringAttributes as? [String : AnyObject])
        
        guard let myMiddleTitle = middleTitle as? String
            else {
                return
        }
        
        let middleString = (myMiddleTitle as NSString).stringByReplacingCharactersInRange(NSMakeRange(3, 4), withString: "****")
        let middleStringAttributes = [
            NSForegroundColorAttributeName: UIColor.blackColor(),
            NSFontAttributeName: UIFont().fontWithSize(23)
            ] as NSDictionary
        let middleStringRect: CGRect = middleString.boundingRectWithSize(frame.size, options: NSStringDrawingOptions.UsesFontLeading, attributes: middleStringAttributes as? [String : AnyObject], context: nil);
        
        if (IPHONE_6) {
            middleString.drawInRect(CGRectMake((frame.size.width - middleStringRect.size.width)/2, topRect.size.height + 15, frame.size.width, 100) , withAttributes:topStringAttributes as? [String : AnyObject])
        }
        else {
            middleString.drawInRect(CGRectMake((frame.size.width - middleStringRect.size.width)/2, topRect.size.height + 5, frame.size.width, 100) , withAttributes:topStringAttributes as? [String : AnyObject])
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
