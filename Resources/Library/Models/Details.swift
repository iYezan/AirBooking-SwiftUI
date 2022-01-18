//
//  Details.swift
//  AirBooking-SwiftUI
//
//  Created by iYezan on 17/01/2022.
//

import Foundation

struct Details: Identifiable {
    
    var id = UUID()
    var title: String
    var price: String
    var rating: String
}


var details = [
    "SEYCHELLES" : Details(title: "Phi Phi Islands", price: "£ 450", rating: "4.8"),
    "TURKEY" : Details(title: "TURKEY", price: "£ 310", rating: "4.5"),
    "YEMEN" : Details(title: "Socotra Island", price: "£ 470", rating: "5"),
    "ZANZIBAR" : Details(title: "Zanzibar", price: "£ 520", rating: "5")
]
