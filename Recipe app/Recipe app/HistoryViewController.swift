//
//  HistoryViewController.swift
//  Recipe app
//
//  Created by Maki & Mai on 2017-03-27.
//  Copyright © 2017 Maki & Mai. All rights reserved.
//

import Foundation

class HistoryViewController: UIViewController {
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        // Active sidebar
        Sidebar.init().activeSidebar(menuButton, self)
    }
}
