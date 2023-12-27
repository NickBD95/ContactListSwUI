//
//  PersonListView.swift
//  ContactListSwUI
//
//  Created by Nikolai Grachev on 27.12.2023.
//

import SwiftUI

struct PersonsListView: View {
    
    private let persons = Person.getPersonInfo()
    
    var body: some View {
        NavigationStack {
            List(persons) { person in
                NavigationLink(
                    destination: DetailsView(person: Person(
                        name: person.name,
                        surname: person.surname,
                        phone: person.phone,
                        email: person.email)
                    )) {
                    Text(person.name + " " + person.surname )
                }
            }
            .navigationTitle("Person List")
        }
        .listStyle(.plain)
        
    }
}

#Preview {
    PersonsListView()
}
