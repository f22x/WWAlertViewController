//
//  WWTextField.swift
//  WWAlerViewController_Swift
//
//  Created by XingLei on 15/12/15.
//  Copyright © 2015年 XingLei. All rights reserved.
//

import UIKit

let lineHeight: CGFloat =  3.0
let lineOrigin: CGFloat = 0.65

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
        bezier.moveToPoint(CGPointMake(frame.size.width * lineOrigin, lineHeight + 2))
        bezier.addLineToPoint(CGPointMake(frame.size.width * lineOrigin, lineHeight + (frame.height - lineHeight*lineHeight)))
        bezier.lineWidth = 0.3
        bezier.stroke()
        let image = UIGraphicsGetImageFromCurrentImageContext()
        let imageView = UIImageView(image: image)
        addSubview(imageView)
    }
    
    override func drawPlaceholderInRect(rect: CGRect) {
        UIColor.grayColor().setFill()
        let topStringFont = UIFont().fontWithSize(15)
        let attributesDictionary = [NSFontAttributeName: topStringFont] as NSDictionary
        placeholder?.drawInRect(rect, withAttributes:attributesDictionary as? [String : AnyObject])
    }
    
    override func placeholderRectForBounds(bounds: CGRect) -> CGRect {
        let attributesDictionary = [NSFontAttributeName: UIFont().fontWithSize(15)]
        let placeHolderSize: CGSize = placeholder!.sizeWithAttributes(attributesDictionary)
        let placeHolderF: CGRect = CGRectMake(10, 1, placeHolderSize.width, placeHolderSize.height)
        
        return placeHolderF
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
