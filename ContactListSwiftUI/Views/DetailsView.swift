//
//  DetailsView.swift
//  ContactListSwiftUI
//
//  Created by Максим Назаров on 14.10.2024.
//

import SwiftUI

struct DetailsView: View {
    
    let contact: Contact
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 150, height: 150)
            
            TextView(contactInfo: contact.phone, imageName: "phone")
            
            TextView(contactInfo: contact.email, imageName: "tray")
            
            Spacer()
        }
        .padding()
        .navigationTitle(contact.fullname)
    }
}

#Preview {
    DetailsView(contact: Contact(name: "", surname: "", phone: "", email: ""))
}

struct TextView: View {
    
    let contactInfo: String
    let imageName: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .resizable()
                .foregroundStyle(.blue)
                .frame(width: 25, height: 25)
            Text(contactInfo)
                .font(.title2)
            Spacer()
        }
    }
}
