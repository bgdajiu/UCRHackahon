//
//  KechengViewController.swift
//  ucrdemo
//
//  Created by 李贵全 on 11/9/19.
//  Copyright © 2019 ucr. All rights reserved.
//

import UIKit

class KechengViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableview = UITableView()
    
    let BCOE = ["Chemical Engineering","Computer Engineering", "Eletrical Engineering", "Computer Science", "Biomedical Engineering", "Mechanical Engineering", "Bioengineering", "Materials Science & Engineering"]
    let CHASS = ["Economics","History & Political Science", "Journalism", "Theatre & Drama Studies", "Creative Writing", "Scociology", "Srt History", "Music", "Fine Arts"]
    let CNAS = ["Applied Mathematics","Statistics", "Physics", "Biochemistry", "Chemistry", "Microbiogy", "Biological Sciences"]
    let GSOE = ["Consultant Education/Training", "Technical Writer", "Online Community Manager", "Editor", "Community Relations Specialist", "Academic Advisor", "Nonprofit Program Coordinator", "Community Outreach Coordinator", "Development Coordinator", "Nonprofit Organization"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Find your courses"
        view.backgroundColor = .systemBackground
        
        tableview.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        tableview.dataSource = self
        tableview.delegate = self
        view.addSubview(tableview)
        tableview.reloadData()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 1 {
            return "Marlan and Rosemary Bourns College of Engineering"
        } else if section == 2 {
            return "College of Humanities, Arts, and Social Sciences"
        } else if section == 3 {
            return "College of Natural and Agricultural Sciences"
        } else {
            return "College of Natural and Agricultural Sciences"
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 1 {
            return 8
        } else if section == 2 {
            return 9
        } else if section == 3 {
            return 7
        } else {
            return 10
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        if indexPath.section == 1 {
            cell.textLabel?.text = BCOE[indexPath.row]
        } else if indexPath.section == 2 {
            cell.textLabel?.text = CHASS[indexPath.row]
        } else if indexPath.section == 3 {
            cell.textLabel?.text = CNAS[indexPath.row]
        } else {
            cell.textLabel?.text = GSOE[indexPath.row]
        }
        return cell
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
