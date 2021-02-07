//
//  MoreInfoViewController.swift
//  LogInApp
//
//  Created by HappyLiya on 07.02.2021.
//

import UIKit

class MoreInfoViewController: UIViewController {
    
    private var user = User.getInformation()
    
    @IBOutlet var hobbyLabel: UILabel!
    @IBOutlet var familyLabel: UILabel!
    @IBOutlet var petsLabel: UILabel!
    @IBOutlet var andSomethingElse: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hobbyLabel.text = user.person.moreInfo.hobby
        familyLabel.text = user.person.moreInfo.family
        petsLabel.text = user.person.moreInfo.pets
        andSomethingElse.text = user.person.moreInfo.aboutMe
    }
    
    
    
    
}
