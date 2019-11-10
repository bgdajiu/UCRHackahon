//
//  ViewController.swift
//  ucrdemo
//
//  Created by 李贵全 on 11/9/19.
//  Copyright © 2019 ucr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var kecheng = UIButton()
    var taolun = UIButton()
    var profile = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setUpUI()
    }

    func setUpUI() {
        let width = (view.bounds.width - 50) / 2
        let height = width

        let id = UserDefaults.standard.string(forKey: "netid")
        if id == "" {
            navigationItem.title = "My UCR"
        }
        if id != "" {
            navigationItem.title = "Hi, \(id ?? "You are not Login")"
        }
        
        let text1 = UILabel(frame: CGRect(x: 0, y: height - 20, width: width, height: 20))
        let text2 = UILabel(frame: CGRect(x: 0, y: height - 20, width: width, height: 20))
        let text3 = UILabel(frame: CGRect(x: 0, y: height - 20, width: width, height: 20))
        
        kecheng.frame = CGRect(x: 20, y: 110, width: width, height: height)
        kecheng.setImage(UIImage(named: "regis.png"), for: .normal)
        kecheng.addTarget(self, action: #selector(clickKecheng), for: .touchUpInside)
        text1.text = "Browse Classes"
        text1.textAlignment = .center
        kecheng.addSubview(text1)
        view.addSubview(kecheng)
        
        taolun.frame = CGRect(x: width + 30, y: 110, width: width, height: height)
        taolun.setImage(UIImage(named: "Home.png"), for: .normal)
        taolun.addTarget(self, action: #selector(clickTaolun), for: .touchUpInside)
        text2.text = "Chat in your Class"
        text2.textAlignment = .center
        taolun.addSubview(text2)
        view.addSubview(taolun)
        
        profile.frame = CGRect(x: 20, y: 110 + kecheng.bounds.height + 10, width: width, height: height)
        profile.setImage(UIImage(named: "Account.png"), for: .normal)
        profile.addTarget(self, action: #selector(clickZiliao), for: .touchUpInside)
        text3.text = "Your Profile"
        text3.textAlignment = .center
        profile.addSubview(text3)
        view.addSubview(profile)
    }
    
    @objc func clickKecheng() {
        let vc = KechengViewController()
        vc.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func clickTaolun() {
        let vc = TaolunViewController()
        vc.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func clickZiliao() {
        let vc = ZiliaoViewController()
        vc.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

