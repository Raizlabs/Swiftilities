//
//  ViewController.swift
//  Swiftilities
//
//  Created by Nicholas Bonatsakis on 02/05/2016.
//  Copyright (c) 2016 Nicholas Bonatsakis. All rights reserved.
//

import UIKit
import Swiftilities

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Logger
        
        Log.logLevel = .error
        Log.error("Test log")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

