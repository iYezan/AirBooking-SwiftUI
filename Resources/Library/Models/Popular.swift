//
//  Explore.swift
//  AirBooking-SwiftUI
//
//  Created by iYezan on 17/01/2022.
//

import Foundation

struct Popular: Identifiable {
    
    var id = UUID()
    let name: String
    
}

struct ExploreData {
    static var sampleExplore = [
        Popular(name: "UK"),
        Popular(name: "USA"),
        Popular(name: "INDIA"),
        Popular(name: "CANADA")
    ]
}
