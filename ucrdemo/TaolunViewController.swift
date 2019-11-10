//
//  TaolunViewController.swift
//  ucrdemo
//
//  Created by 李贵全 on 11/9/19.
//  Copyright © 2019 ucr. All rights reserved.
//

import UIKit

class TaolunViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableview = UITableView()
    let quarter = ["2018 Fall", "2019 Winter", "2019 Spring", "2019 Summer", "2019 Fall", "2020 Winter", "2020 Spring"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground

        navigationItem.title = "Select a quarter"
        
        tableview.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        tableview.dataSource = self
        tableview.delegate = self
        view.addSubview(tableview)
        tableview.reloadData()
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = quarter[indexPath.row]
        cell.selectionStyle = .none
        if indexPath.row == 6 {
            cell.backgroundColor = .lightGray
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row != 6 {
            let vc = XiangxikechengViewController()
            vc.getcourse = indexPath.row
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }

}
