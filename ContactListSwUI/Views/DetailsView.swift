//
//  DetailsView.swift
//  ContactListSwUI
//
//  Created by Nikolai Grachev on 27.12.2023.
//

import SwiftUI

struct DetailsView: View {
    
    var person: Person
    var fullname: String {
        person.name + " " + person.surname
    }
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                        .resizable()
                    .frame(width: 70, height: 70)
                .padding()
                Spacer()
            }
            HStack {
                Image(systemName: "phone")
                    .foregroundStyle(.blue)
                Text(person.phone)
            }
            HStack {
                Image(systemName: "envelope")
                    .foregroundStyle(.blue)
                Text(person.email)
            }
        }
        .navigationTitle(fullname)
    }
}

#Preview {
    DetailsView(person: Person(name: "ds", surname: "das", phone: "dsad", email: "ds"))
}
