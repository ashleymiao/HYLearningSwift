//
//  ViewController.swift
//  HYLearningSwift
//
//  Created by 994059254@qq.com on 02/02/2021.
//  Copyright (c) 2021 994059254@qq.com. All rights reserved.
//

import UIKit
import HYLearningSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       let pto = HYSProtocol()
       let manager = HYOCManager()
        pto.name = "123"
        pto.hyTest()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

