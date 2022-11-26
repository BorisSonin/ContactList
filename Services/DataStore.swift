//
//  Services.swift
//  ContactList
//
//  Created by Борис Сонин on 22.11.2022.
//

import Foundation

class DataStore {
    var names = [String]()
    var surnames = [String]()
    var emails = [String]()
    var phoneNumbers = [String]()
    
    init(names: [String], surnames: [String], emails: [String], phoneNumbers: [String]) {
        self.names = names
        self.surnames = surnames
        self.emails = emails
        self.phoneNumbers = phoneNumbers
    }
    
    static let shared = DataStore(names: ["Иван", "Петр", "Николай", "Александр"],
                                  surnames: ["Лаптев", "Сидоров", "Петров", "Иванов"],
                                  emails: ["123@gmail.com", "456@gmail.com", "789@gmail.com", "321@mail.ru"],
                                  phoneNumbers: ["988-33-44", "233-55-42", "023-44-56", "543-12-34"])
    private init() {}
}
