//
//  Category.swift
//  AirlineBooking-SwiftUI
//
//  Created by iYezan on 10/01/2022.
//

import SwiftUI

struct Category: Identifiable {
    var id = UUID()
    var title: String
    var size: CGFloat
    var gridItem: [GridItem]
    var cardHeight: CGFloat
}

var category = [

    Category(title: "Exotic Places", size: 30, gridItem: Array(repeating: GridItem(.fixed(230), spacing: 10), count: 1), cardHeight: 210),
]
