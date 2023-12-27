//
//  ContactsView.swift
//  ContactListSwUI
//
//  Created by Nikolai Grachev on 27.12.2023.
//

import SwiftUI

struct ContactsView: View {
    
    private let persons = Person.getPersonInfo()
    
    var body: some View {
        NavigationStack {
            List(persons) { person in
                Section {
                    HStack {
                        Image(systemName: "phone.fill")
                            .foregroundStyle(.blue)
                        Text(person.phone)
                    }
                    HStack {
                        Image(systemName: "envelope.fill")
                            .foregroundStyle(.blue)
                        Text(person.email)
                    }
                } header: {
                    Text(person.name + " " + person.surname)
                }
                
            }
            .navigationTitle("Contact List")
        }
        .listStyle(.plain)
    }
}

#Preview {
    ContactsView()
}
