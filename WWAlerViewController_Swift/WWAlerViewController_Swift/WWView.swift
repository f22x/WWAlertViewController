//
//  WWView.swift
//  WWAlerViewController_Swift
//
//  Created by XingLei on 15/12/15.
//  Copyright © 2015年 XingLei. All rights reserved.
//

import UIKit

class WWView: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    func getWWViewFrame(frame: CGRect) ->UIImageView {
        //    已需要展示的视图为基准
        let lineRect = CGRectMake(0, 0, frame.size.width, frame.size.height)

        UIGraphicsBeginImageContextWithOptions(lineRect.size, false, 0);
        UIColor.grayColor().setStroke()
        
        let lineBezierPath = UIBezierPath()
        lineBezierPath.moveToPoint(CGPointMake(lineRect.origin.x, CGFloat(lineRect.size.height * 0.73936)))
        lineBezierPath.addLineToPoint(CGPointMake(lineRect.size.width, CGFloat(lineRect.size.height * 0.73936)))
        
        lineBezierPath.moveToPoint(CGPointMake(CGFloat(lineRect.size.width/2), CGFloat(lineRect.size.height * 0.73936)))
        lineBezierPath.addLineToPoint(CGPointMake(CGFloat(lineRect.size.width/2), lineRect.size.height))
        
        lineBezierPath.lineWidth = 0.3;
        lineBezierPath.stroke()
        let lineImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        let lineImageView = UIImageView(image: lineImage)
        lineImageView.userInteractionEnabled = true;
        return lineImageView
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}
