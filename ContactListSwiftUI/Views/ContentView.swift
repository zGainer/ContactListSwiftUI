//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Eugene on 24.01.23.
//

import SwiftUI

struct ContentView: View {
    
    let persons = Person.getPersons()
    
    var body: some View {
        TabView {
            ContactListView(persons: persons)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            
            DetailListView(persons: persons)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
