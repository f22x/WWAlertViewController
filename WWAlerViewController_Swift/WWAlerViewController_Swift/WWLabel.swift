//
//  WWLabel.swift
//  WWAlerViewController_Swift
//
//  Created by XingLei on 15/12/15.
//  Copyright © 2015年 XingLei. All rights reserved.
//

import UIKit
import Foundation

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
        
//        if let topStringFont = font {
//        let topStringAttributes = NSMutableDictionary()
//        topStringAttributes[NSParagraphStyleAttributeName] = topStringStyle
//        topStringAttributes[NSForegroundColorAttributeName] = topStringColor
//        topStringAttributes[NSFontAttributeName] = topStringFont as UIFont
//        
//        let topRect:CGRect = topString.boundingRectWithSize(frame.size, options: NSStringDrawingOptions.UsesFontLeading, attributes: nil, context: nil);
//        topString.drawInRect(frame, withAttributes:topStringAttributes)
//        }
        
        if let topStringFont = font {
            let topStringAttributes = [
                NSFontAttributeName: topStringFont?,
                NSForegroundColorAttributeName: topStringColor,
                NSParagraphStyleAttributeName: topStringStyle
            ]
        }

    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
