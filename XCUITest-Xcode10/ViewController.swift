//
//  ViewController.swift
//  XCUITest-Xcode10
//
//  Created by Shashikant Jagtap on 23/09/2018.
//  Copyright © 2018 Shashikant Jagtap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var message: UILabel!
    @IBAction func tapEnter(_ sender: Any) {
        message.text = "Welcome to XCUITest"
        message.isHidden = false
    }
    override func viewDidLoad() {
        message.isHidden = true
        super.viewDidLoad()
        
    }


}

