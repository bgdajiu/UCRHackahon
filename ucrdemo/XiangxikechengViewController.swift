//
//  XiangxikechengViewController.swift
//  ucrdemo
//
//  Created by 李贵全 on 11/9/19.
//  Copyright © 2019 ucr. All rights reserved.
//

import UIKit
import WebKit

class XiangxikechengViewController: UIViewController {
    
    var webview = WKWebView()
    var getcourse: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let request = URLRequest(url: URL(string: "https://registrationssb.ucr.edu/StudentRegistrationSsb/ssb/term/termSelection?mode=search")!)
        
        webview.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        webview.load(request)
        view.addSubview(webview)
        
        navigationItem.title = "Find your class"
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
