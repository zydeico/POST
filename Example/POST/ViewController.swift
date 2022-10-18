//
//  ViewController.swift
//  POST
//
//  Created by zydeico on 10/17/2022.
//  Copyright (c) 2022 zydeico. All rights reserved.
//

import UIKit
import POST

class ViewController: UIViewController {
    
    let client = POSTClient()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        client.sayHello()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

