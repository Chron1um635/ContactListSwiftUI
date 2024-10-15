//
//  ContactsView.swift
//  ContactListSwiftUI
//
//  Created by Максим Назаров on 14.10.2024.
//

import SwiftUI

struct ContactsView: View {
    
    let contacts: [Contact]
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                NavigationLink(destination: DetailsView(contact: contact)
                ) {
                    Text(contact.fullname)
                        .font(.title3)
                }
            }
            .navigationTitle("Contact List")
            .listStyle(.plain)
        }
    }
}

#Preview {
    ContactsView(contacts: Contact.getContacts())
}
