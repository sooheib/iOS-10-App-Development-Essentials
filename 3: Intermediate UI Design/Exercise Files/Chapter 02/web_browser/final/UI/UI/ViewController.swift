//
//  ViewController.swift
//  UI
//
//  Created by Todd Perkins on 9/6/16.
//  Copyright © 2016 Todd Perkins. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController,UITextFieldDelegate {
    var webView:WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        webView = WKWebView()
        view.addSubview(webView)
        
        
        webView.translatesAutoresizingMaskIntoConstraints = false
        let width = NSLayoutConstraint(item: webView, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1.0, constant: 0)
        let height = NSLayoutConstraint(item: webView, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 1.0, constant: -60)
        let top = NSLayoutConstraint(item: webView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 60)
        view.addConstraints([width,height,top])
    }
    @IBAction func goBack(_ sender: AnyObject) {
        webView.goBack()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let url:URL = URL(string: textField.text!)!
        let req:URLRequest = URLRequest(url: url)
        webView.load(req)
        textField.resignFirstResponder()
        return false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

