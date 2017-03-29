//
//  Sidebar.swift
//  Recipe app
//
//  Created by Maki & Mai on 2017-03-27.
//  Copyright © 2017 Maki & Mai. All rights reserved.
//

import Foundation

class Sidebar {
    
    func activeSidebar(_ menuButton: UIBarButtonItem, _ view: UIViewController) {
        if view.revealViewController() != nil {
            
            // Open sidebar from menuButton
            menuButton.target = view.revealViewController()
            menuButton.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            
            // Clear witdh of overdraw
            view.revealViewController().rightViewRevealOverdraw = 0
            
            // Open sidebar by swiping screen
            view.view.addGestureRecognizer((view.revealViewController().panGestureRecognizer())!)
            
            // Close sidebar by clicking main screen
            view.view.addGestureRecognizer((view.revealViewController().tapGestureRecognizer())!)
        }
    }
}
