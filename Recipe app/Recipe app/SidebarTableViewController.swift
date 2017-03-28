//
//  SidebarTableViewController.swift
//  Recipe app
//
//  Created by Maki & Mai on 2017-03-27.
//  Copyright © 2017 Maki & Mai. All rights reserved.
//

import Foundation

class SidebarTableViewController: UITableViewController {
    
    var navArray = [String]()
    
    override func viewDidLoad() {
        navArray = ["User name", "Post new recipe", "Favorite", "History"]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return navArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SidebarTableViewControllerCell", for: indexPath)
        
        cell.textLabel?.text = navArray[indexPath.row]
        
        return cell
    }
}
