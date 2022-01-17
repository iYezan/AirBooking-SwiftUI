//
//  ContentView.swift
//  AirlineBooking-SwiftUI
//
//  Created by iYezan on 10/01/2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
    
            ForEach(category) { cate in
                VStack(spacing: 10){
                    HStack {
                        Text(cate.title)
                            .font(.custom("Helvetica Neue", size: cate.size))
                            .fontWeight(.bold)
                        
                        Spacer()
                    }
                    
                    LocationView(row: cate.gridItem, cardHeight: cate.cardHeight)
                }
                .padding(.horizontal, 20)
                .padding(.top, 30)
            }
            VStack(spacing: 10) {
                HStack {
                    Text("Popular")
                        .font(.custom("Helvetica Neue", size: 22))
                        .fontWeight(.bold)
                    
                    Spacer()
                }
                ExploreView()
           
            }
            .padding(.horizontal,20)
            .padding(.top, 30)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
