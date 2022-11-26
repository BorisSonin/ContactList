//
//  ContactsViewController.swift
//  ContactList
//
//  Created by Борис Сонин on 22.11.2022.
//

import UIKit

class ContactsViewController: UITableViewController {

    private var contactList = Person.getList()

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contacts", for: indexPath)
        let contact = contactList[indexPath.row]
        cell.textLabel?.text = contact.fullName
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let detailVC = segue.destination as? DetailViewController else { return }
        detailVC.contact = contactList[indexPath.row]
    }
}
