//
//  WWAlertViewController.swift
//
//  Created by XingLei on 15/12/15.
//  Copyright © 2015年 XingLei. All rights reserved.
//

import UIKit

class WWAlertViewController: UIViewController {
    var customTextField: WWTextField?
    var customTextLabel: WWLabel?
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }

    func setUp() {
       let customTextField = WWTextField()
        customTextField.frame = CGRectMake(0, 0, 100, 20)
        view.addSubview(customTextField)
        
        let customLabel = WWLabel()
        customLabel.frame = CGRectMake(0, 20, 100, 20)
        view.addSubview(customLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
