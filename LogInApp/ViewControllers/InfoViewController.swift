//
//  InfoViewController.swift
//  LogInApp
//
//  Created by HappyLiya on 07.02.2021.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var fromLabel: UILabel!
    
    private var user = User.getInformation()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        ageLabel.text = String (user.person.age)
        fromLabel.text = user.person.from
        
    }
    
}
