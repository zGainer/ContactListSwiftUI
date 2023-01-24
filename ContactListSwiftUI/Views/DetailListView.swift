//
//  DetailListView.swift
//  ContactListSwiftUI
//
//  Created by Eugene on 24.01.23.
//

import SwiftUI

struct DetailListView: View {
    
    let persons: [Person]
    
    var body: some View {
        
        NavigationView {
            List(persons) { person in
                Section(person.fullName) {
                    PersonInfoView(person: person)
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct DetailListView_Previews: PreviewProvider {
    static var previews: some View {
        DetailListView(persons: Person.getPersons())
    }
}
