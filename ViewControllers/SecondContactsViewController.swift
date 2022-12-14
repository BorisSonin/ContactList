//
//  SecondContactsViewController.swift
//  ContactList
//
//  Created by Борис Сонин on 23.11.2022.
//

import UIKit

class SecondContactsViewController: UITableViewController {
    
    
    private var secondContactList = Person.getList()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      2
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
      secondContactList.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
     secondContactList[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "second contact", for: indexPath)
        
        let person = secondContactList[indexPath.section]
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = person.phone
            cell.imageView?.image = UIImage(systemName: "phone")
        default:
            cell.textLabel?.text = person.email
            cell.imageView?.image = UIImage(systemName: "tray")
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

