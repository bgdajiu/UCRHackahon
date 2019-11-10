//
//  ZiliaoViewController.swift
//  ucrdemo
//
//  Created by 李贵全 on 11/9/19.
//  Copyright © 2019 ucr. All rights reserved.
//

import UIKit

class ZiliaoViewController: UIViewController {

    @IBOutlet weak var touxiang: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var detail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        touxiang.layer.cornerRadius = touxiang.bounds.width / 2
        name.text = UserDefaults.standard.string(forKey: "netid")
        detail.text = """
        Level: Undergraduate
        Class: Senior
        Status: Active
        Student Type: First Time Transfer
        First Term Attended: Fall 2018
        Degree: Bachelor of Science
        Program: Computer Science
        College: Bourns Engineering
        """
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
