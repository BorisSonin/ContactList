//
//  Person.swift
//  ContactList
//
//  Created by Борис Сонин on 22.11.2022.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String{
        "\(name) \(surname)"
    }
}

extension Person {
    static func getList() -> [Person] {
        var names = DataStore.shared.nameArray
        var surnames = DataStore.shared.surnameArray
        var emails = DataStore.shared.emailArray
        var phones = DataStore.shared.phoneNumberArray
        
        var persons = [Person]()
        
        for _ in 1...names.count {
            var nameValue = ""
            var surnameValue = ""
            var emailValue = ""
            var phoneValue = ""
            
            if let nameIndex = names.indices.randomElement() {
                nameValue = names.remove(at: nameIndex)
            }
            
            if let surnameIndex = surnames.indices.randomElement() {
                surnameValue = surnames.remove(at: surnameIndex)
            }
            
            if let emailIndex = emails.indices.randomElement() {
                emailValue = emails.remove(at: emailIndex)
            }
            
            if let phoneIndex = phones.indices.randomElement() {
                phoneValue = phones.remove(at: phoneIndex)
            }
            
            persons.append(Person(name: nameValue,
                                  surname: surnameValue,
                                  email: emailValue,
                                  phone: phoneValue))
            
        }
        return persons
        
    }
    
}
