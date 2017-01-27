//
//  ViewController.swift
//  Architecture
//
//  Created by Todd Perkins on 9/9/16.
//  Copyright © 2016 Todd Perkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let num = getNumber()
        print("the magic number is \(50 / num)")
    }
    
    func getNumber() -> Int {
        var num1 = 0
        //let num2 = 0
        for _ in 0...10 {
            num1 += 5
        }
        return num1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

