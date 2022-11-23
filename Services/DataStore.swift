//
//  Services.swift
//  ContactList
//
//  Created by Борис Сонин on 22.11.2022.
//

import Foundation

class DataStore {
    var nameArray = [String]()
    var surnameArray = [String]()
    var emailArray = [String]()
    var phoneNumberArray = [String]()
    
    init(nameArray: [String], surnameArray: [String], emailArray: [String], phoneNumberArray: [String]) {
        self.nameArray = nameArray
        self.surnameArray = surnameArray
        self.emailArray = emailArray
        self.phoneNumberArray = phoneNumberArray
    }
    
    static let shared = DataStore(nameArray: ["Иван", "Петр", "Николай", "Александр"],
                                  surnameArray: ["Лаптев", "Сидоров", "Петров", "Иванов"],
                                  emailArray: ["123@gmail.com", "456@gmail.com", "789@gmail.com", "321@mail.ru"],
                                  phoneNumberArray: ["988-33-44", "233-55-42", "023-44-56", "543-12-34"])
}
