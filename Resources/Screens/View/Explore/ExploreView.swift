//
//  ExploreView.swift
//  AirBooking-SwiftUI
//
//  Created by iYezan on 12/01/2022.
//

import SwiftUI

struct ExploreView: View {
    var colum = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        LazyVGrid(columns: colum,spacing: 15) {
            ForEach(ExploreData.sampleExplore) { explore in
                VStack(spacing: 15) {
                    HStack {
                        Spacer()
                        
                        Text(explore.name)
                            .font(.custom("arial", size: 18))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Spacer()
                    }
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 10)
                .frame(height: 116)
                .background(
                    Image(explore.name)
                        .resizable()
                )
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .shadow(color: Color.gray.opacity(0.5), radius: 5, x:0, y: 2)
            }
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
