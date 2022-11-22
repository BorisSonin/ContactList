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
                                  emailArray: ["123@gmail.com", "sid@gmail.com", "ione@gmail.com", "mary@mail.ru"],
                                  phoneNumberArray: ["988334", "233552", "0234456", "543123"])
}
