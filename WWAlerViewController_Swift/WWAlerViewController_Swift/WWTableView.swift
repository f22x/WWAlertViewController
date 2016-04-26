//
//  WWTableView.swift
//  WWAlerViewController_Swift
//
//  Created by lei on 16/4/13.
//  Copyright © 2016年 XingLei. All rights reserved.
//

import UIKit

class WWTableView: UITableView {

    func dequeueReusableCell<T: Reusable>(indexPath indexPath: NSIndexPath) -> T {
        return self.dequeueReusableCellWithIdentifier(T.reuseIdentifier, forIndexPath: indexPath) as! T
    }
}
