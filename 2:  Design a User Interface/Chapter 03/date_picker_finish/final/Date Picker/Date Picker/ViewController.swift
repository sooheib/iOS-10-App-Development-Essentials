//
//  ViewController.swift
//  Date Picker
//
//  Created by Todd Perkins on 8/26/16.
//  Copyright © 2016 Todd Perkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var picker: UIDatePicker!
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pickerDidChange(picker)
    }
    @IBAction func pickerDidChange(_ sender: AnyObject) {
        let date:Date = picker.date
        let formatter:DateFormatter = DateFormatter()
        formatter.dateFormat = "EEEE"
        let dayOfWeek:String = formatter.string(from: date)
        label.text = "The day is a \(dayOfWeek)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

