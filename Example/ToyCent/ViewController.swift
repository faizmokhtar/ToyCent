//
//  ViewController.swift
//  ToyCent
//
//  Created by Faiz Mokhtar on 12/01/2021.
//  Copyright (c) 2021 Faiz Mokhtar. All rights reserved.
//

import UIKit
import ToyCent

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let amount = 20.35
        let amountInCent = Cent(amount: amount)
        print(amountInCent.value)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

