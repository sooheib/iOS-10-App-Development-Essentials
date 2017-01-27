//
//  ViewController.swift
//  UI
//
//  Created by Todd Perkins on 9/6/16.
//  Copyright © 2016 Todd Perkins. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    var webView:WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        webView = WKWebView(frame: CGRect(x: 0, y: 20, width: 300, height: 300))
        view.addSubview(webView)
        webView.loadHTMLString("<h1>Title</h1><p>Words</p>", baseURL: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

