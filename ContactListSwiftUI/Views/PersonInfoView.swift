//
//  PersonInfoView.swift
//  ContactListSwiftUI
//
//  Created by Eugene on 24.01.23.
//

import SwiftUI

struct PersonInfoView: View {
    
    let person: Person
    
    var body: some View {
        HStack {
            Image(systemName: "phone")
                .foregroundColor(.blue)
            
            Text(person.phoneNumber)
        }
        
        HStack {
            Image(systemName: "tray")
                .foregroundColor(.blue)
            
            Text(person.email)
        }
    }
}

struct PersonInfo_Previews: PreviewProvider {
    static var previews: some View {
        PersonInfoView(person: Person.getPersons().first!)
    }
}
