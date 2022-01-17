//
//  LocationView.swift
//  AirlineBooking-SwiftUI
//
//  Created by iYezan on 10/01/2022.
//

import SwiftUI

struct LocationView: View {
    
    var row: [GridItem]
    var cardHeight: CGFloat
    var body: some View {
        
        ZStack {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: row, spacing: 10) {
                    ForEach(MockData.sampleLocation) { mockData in
                        VStack(alignment: .leading, spacing: 15) {
                            Spacer()
                            HStack {
                                Text(mockData.location)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                Spacer()
                            }
                        }
                        
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                        .frame(width: 165, height: self.cardHeight)
                        .background(
                            Image(mockData.location)
                                .resizable()
                                .scaledToFill()
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                        .shadow(color: Color.gray.opacity(0.5), radius: 5, x:0, y:2)
                    }
                }
            }
        }
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView(row: [], cardHeight: 100 )
    }
}
