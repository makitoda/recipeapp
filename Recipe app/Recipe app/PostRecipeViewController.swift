//
//  PostRecipeViewController.swift
//  Recipe app
//
//  Created by Maki & Mai on 2017-03-27.
//  Copyright © 2017 Maki & Mai. All rights reserved.
//

import Foundation

class PostRecipeViewController: UIViewController {
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        if self.revealViewController() != nil {
            
            // Open sidebar from menuButton
            menuButton.target = self.revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            
            // Open sidebar by swiping screen
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
            // Close sidebar by clicking main screen
            self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        }
    }
}
