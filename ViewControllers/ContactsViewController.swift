//
//  ContactsViewController.swift
//  ContactList
//
//  Created by Борис Сонин on 22.11.2022.
//

import UIKit

class ContactsViewController: UITableViewController {

    private var contactList = Person.getList()
    override func viewDidLoad() {
        super.viewDidLoad()

     
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
        contactList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contacts", for: indexPath)
        let contact = contactList[indexPath.row]
        cell.textLabel?.text = contact.fullName
        return cell
    }


   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
    }
}
