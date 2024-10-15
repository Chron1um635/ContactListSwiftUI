//
//  NumbersView.swift
//  ContactListSwiftUI
//
//  Created by Максим Назаров on 14.10.2024.
//

import SwiftUI

struct NumbersView: View {
    
    @State private var singleSelection: UUID?
    let contacts: [Contact]

    var body: some View {
        NavigationView {
            List(selection: $singleSelection) {
                ForEach(contacts) { contact in
                    Section(header: Text(contact.fullname).font(.headline)) {
                        TextView(contactInfo: contact.phone, imageName: "phone")
                        TextView(contactInfo: contact.email, imageName: "tray")
                    }
                }
            }
            .navigationTitle("Contact List")
            .listStyle(.plain)
        }
    }
}
                            

#Preview {
    NumbersView(contacts: Contact.getContacts())
}
