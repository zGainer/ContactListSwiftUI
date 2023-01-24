//
//  DetailView.swift
//  ContactListSwiftUI
//
//  Created by Eugene on 24.01.23.
//

import SwiftUI

struct DetailView: View {
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                
                Image(systemName: "person.fill")
                    .font(.system(size: 200))

                Spacer()
            }
            .padding([.top, .bottom], 20)
            
            PersonInfoView(person: person)
        }
        .navigationTitle(person.fullName)
        .listStyle(.grouped)
        .font(.title)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(person: Person.getPersons().first!)
    }
}
