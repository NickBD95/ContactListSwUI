//
//  ContentView.swift
//  ContactListSwUI
//
//  Created by Nikolai Grachev on 27.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            PersonsListView()
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Persons List")
                }
            ContactsView()
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Contacts")
                }
        }
    }
}

#Preview {
    ContentView()
}
