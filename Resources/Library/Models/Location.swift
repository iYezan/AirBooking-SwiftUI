//
//  Location.swift
//  AirlineBooking-SwiftUI
//
//  Created by iYezan on 10/01/2022.
//

import Foundation

struct Location: Decodable, Identifiable {
    var id = UUID()
    let location: String
}

struct MockData {
    static let sampleLocation = [        
        Location(location: "SEYCHELLES"),
        Location(location: "TURKEY"),
        Location(location: "YEMEN"),
        Location(location: "ZANZIBAR"),
        Location(location: "THAILAND")
    ]
}
