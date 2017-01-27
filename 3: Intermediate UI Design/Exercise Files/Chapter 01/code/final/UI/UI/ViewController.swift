//
//  ViewController.swift
//  UI
//
//  Created by Todd Perkins on 8/31/16.
//  Copyright © 2016 Todd Perkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let label:UILabel = UILabel(frame: CGRect(x: 20, y: 40, width: 300, height: 30))
        label.text = "from code!"
        view.addSubview(label)
        
        let button:UIButton = UIButton(frame: CGRect(x: 20, y: 100, width: 150, height: 40))
        button.setTitle("Code Button", for: .normal)
        button.backgroundColor = UIColor.darkGray
        button.addTarget(self, action: #selector(didClick), for: .touchUpInside)
        view.addSubview(button)
    }
    
    func didClick(btn:UIButton) {
        btn.setTitle("Clicked!", for: .normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

