//
//  Reusable.swift
//  WWAlerViewController_Swift
//
//  Created by lei on 16/4/13.
//  Copyright © 2016年 XingLei. All rights reserved.
//

import UIKit

protocol Reusable: class {
    static var reuseIdentifier: String { get }
}

extension Reusable {
    static var reuseIdentifier: String {
        // I like to use the class's name as an identifier
        // so this makes a decent default value.
        return String(Self)
    }
}

