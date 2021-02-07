//
//  WelcomeViewController.swift
//  LogInApp
//
//  Created by HappyLiya on 06.02.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(user)"
        
    }
}
