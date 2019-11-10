//
//  LogInViewController.swift
//  ucrdemo
//
//  Created by 李贵全 on 11/9/19.
//  Copyright © 2019 ucr. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var idfield: UITextField!
    @IBOutlet weak var pswdfield: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var loginlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Login my account"
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        loginlabel.text = "Hi, \(UserDefaults.standard.string(forKey: "netid") ?? "You are not Login")"
    }
    
    @IBAction func login(_ sender: Any) {
        idfield.resignFirstResponder()
        pswdfield.resignFirstResponder()
        let defaults = UserDefaults.standard
        defaults.set(idfield.text ?? "", forKey: "netid")
        defaults.set(pswdfield.text ?? "", forKey: "password")
        loginlabel.text = "Hi, \(UserDefaults.standard.string(forKey: "netid") ?? "You are not Login")"

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
