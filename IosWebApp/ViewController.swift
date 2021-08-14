//
//  ViewController.swift
//  iosWebApp
//
//  Created by Itay on 01/08/2018.
//  Copyright © 2018 Itay Carpis. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let longPress:UILongPressGestureRecognizer = UILongPressGestureRecognizer(target: nil, action: nil)
        longPress.minimumPressDuration = 0.1
        webView.addGestureRecognizer(longPress)
        
        let url = URL(string: "https://google.com")
        let urlRequest = URLRequest(url: url!)
        webView.load(urlRequest)
        webView.allowsLinkPreview = false
        webView.allowsBackForwardNavigationGestures = false
    }
}
