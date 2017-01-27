//
//  ViewController.swift
//  UI
//
//  Created by Todd Perkins on 9/6/16.
//  Copyright © 2016 Todd Perkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func segmentDidChange(_ sender: UISegmentedControl) {
        let selectedIndex = sender.selectedSegmentIndex
        label.text = sender.titleForSegment(at: selectedIndex)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

