//
//  DataStorage.swift
//  ContactListSwiftUI
//
//  Created by Максим Назаров on 14.10.2024.
//

import Foundation

final class DataStore {
    
    static let shared = DataStore()
    
    let names  = [
        "Alex",
        "Max",
        "Sergey",
        "Vladimir",
        "Vladislav"
    ]
    let surnames = [
        "Murphy",
        "Jankin",
        "Williams",
        "Black",
        "Bulter"
    ]
    let phones = [
        "99999",
        "888888",
        "77777",
        "66666",
        "55555"
    ]
    var emails = [
        "ads@das.ru",
        "dfd@dasf.com",
        "fsdf@dadf.ru",
        "agdf@fdfg.com",
        "fsmof@sfdg.com"
    ]
    
    private init() {}
}
