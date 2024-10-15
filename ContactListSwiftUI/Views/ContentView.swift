//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Максим Назаров on 14.10.2024.
//

import SwiftUI

struct ContentView: View {
    
    private let contacts = Contact.getContacts()
    
    var body: some View {
        TabView {
            ContactsView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            
            NumbersView(contacts: contacts)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

#Preview {
    ContentView()
}
