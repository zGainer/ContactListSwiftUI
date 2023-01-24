//
//  ContactListView.swift
//  ContactListSwiftUI
//
//  Created by Eugene on 24.01.23.
//

import SwiftUI

struct ContactListView: View {
    
    let persons: [Person]
    
    var body: some View {
        
        NavigationView {
            List(persons) { person in
                NavigationLink(person.fullName,
                               destination: DetailView(person: person))
            }
            .navigationTitle("Contact List")
            .listStyle(.plain)
            .font(.title3)
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(persons: Person.getPersons())
    }
}
