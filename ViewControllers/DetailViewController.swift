//
//  DetailViewController.swift
//  ContactList
//
//  Created by Борис Сонин on 23.11.2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullNameLabel.text = contact.fullName
        phoneNumberLabel.text = "Phone: \(contact.phone)"
        emailLabel.text = "Email: \(contact.email)"
    }
}

 


