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
        return [Person(name: DataStore.shared.nameArray.randomElement()!, surname: DataStore.shared.surnameArray.randomElement()!, email: DataStore.shared.emailArray.randomElement()!, phone: DataStore.shared.phoneNumberArray.randomElement()!),
                Person(name: DataStore.shared.nameArray.randomElement()!, surname: DataStore.shared.surnameArray.randomElement()!, email: DataStore.shared.emailArray.randomElement()!, phone: DataStore.shared.phoneNumberArray.randomElement()!),
                Person(name: DataStore.shared.nameArray.randomElement()!, surname: DataStore.shared.surnameArray.randomElement()!, email: DataStore.shared.emailArray.randomElement()!, phone: DataStore.shared.phoneNumberArray.randomElement()!),
                Person(name: DataStore.shared.nameArray.randomElement()!, surname: DataStore.shared.surnameArray.randomElement()!, email: DataStore.shared.emailArray.randomElement()!, phone: DataStore.shared.phoneNumberArray.randomElement()!)
        ]
    }
}

