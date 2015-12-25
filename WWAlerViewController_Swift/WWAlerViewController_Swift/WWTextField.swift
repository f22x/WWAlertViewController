//
//  WWTextField.swift
//  WWAlerViewController_Swift
//
//  Created by XingLei on 15/12/15.
//  Copyright © 2015年 XingLei. All rights reserved.
//

import UIKit

let  lineHeight : CGFloat =  3.0

class WWTextField: UITextField {
    
    var layerColor = UIColor()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        textColor = UIColor.blackColor()
        font = UIFont.systemFontOfSize(12)
        placeholder = "请输入验证码"
        layer.cornerRadius = 4
        layer.borderColor = layerColor.CGColor
        layer.borderWidth = 1.0
        backgroundColor = UIColor.blackColor()
        keyboardType = UIKeyboardType.NumbersAndPunctuation
    }
    
    func addLineView() {
        UIGraphicsBeginImageContextWithOptions(frame.size, false, 0)
        UIColor.blackColor().setFill()
        let bezier = UIBezierPath()
        bezier.moveToPoint(CGPointMake(frame.size.width * 0.65, lineHeight + 2))
        bezier.addLineToPoint(CGPointMake(frame.size.width * 0.65, lineHeight + (self.frame.size.height - lineHeight*lineHeight)))
        bezier.lineWidth = 0.3
        bezier.stroke()
        let image = UIGraphicsGetImageFromCurrentImageContext()
        let imageView = UIImageView(image: image)
        addSubview(imageView)
    }
    
    override func drawPlaceholderInRect(rect: CGRect) {
        UIColor.grayColor().setFill()
    }
    
    override func placeholderRectForBounds(bounds: CGRect) -> CGRect {
        let placeHolderF = CGRectMake(10, 1, bounds.size.width, bounds.size.height)
        return placeHolderF
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
