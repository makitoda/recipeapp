//
//  ViewController.swift
//  Recipe app
//
//  Created by Maki & Mai on 2017-03-27.
//  Copyright © 2017 Maki & Mai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Active sidebar
        Sidebar.init().activeSidebar(menuButton, self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
