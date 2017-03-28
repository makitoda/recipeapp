//
//  SidebarTableViewController.swift
//  Recipe app
//
//  Created by Maki & Mai on 2017-03-27.
//  Copyright © 2017 Maki & Mai. All rights reserved.
//

import Foundation

class SidebarTableViewController: UITableViewController {
    
    var userIcon: UIImage = UIImage(named: "user")! // TODO: Set dynamic data
    var userName: String = "John Doe"               // TODO: Set dynamic data
    var navArray = [String]()
    
    override func viewDidLoad() {
        
        navArray = ["Post new recipe",
                    "Favorite",
                    "History"]
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2;
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? 1 : navArray.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return indexPath.section == 0 ? 80 : 60
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SidebarTableViewControllerCell_UserInfo", for: indexPath)
            cell.imageView?.image = userIcon
            cell.textLabel?.text = userName
            return cell
            
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SidebarTableViewControllerCell", for: indexPath)
            cell.textLabel?.text = navArray[indexPath.row]
            return cell
        }
    }
}
