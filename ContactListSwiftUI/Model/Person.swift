//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Eugene on 24.01.23.
//

import Foundation

struct Person: Identifiable {
    let id: String
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPersons() -> [Person] {
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        var persons: [Person] = []
        
        for index in 0..<names.count {
            persons.append(Person(
                id: UUID().uuidString,
                name: names[index],
                surname: surnames[index],
                phoneNumber: phones[index],
                email: emails[index]
            ))
        }
        
        return persons
    }
}
