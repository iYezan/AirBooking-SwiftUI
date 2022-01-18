//
//  ModalSheetView.swift
//  AirBooking-SwiftUI
//
//  Created by iYezan on 12/01/2022.
//

import SwiftUI

struct DetialView: View {
    
    @Binding var place: String
    @Binding var show: Bool
    
    var body: some View {
        VStack {
            Button(action: {
                withAnimation(.spring()) {
                    show.toggle()
                }
            }) {
                
                HStack {
                    Spacer()
                    Image(systemName: "xmark")
                        .font(Font.title.weight(.bold))
                        .foregroundColor(.white)
                }  .padding()
            }
            Spacer()
            
            Text(place)
                .fontWeight(.bold)
                .minimumScaleFactor(0.5)
                .foregroundColor(.white)
                .font(.system(size: 60))
            
            Spacer()
            
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Text(details[place]?.title ?? "")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.system(size: 25))
                    
                    Spacer()
                    
                    Text(details[place]?.price ?? "")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .font(.system(size: 20))
                }
                
                Text("\(details[place]?.rating ?? "")/4.5")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                
                Button(action: {
                    
                }) {
                    HStack {
                        Spacer()
                        Text("BOOK NOW")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Spacer()
                    }
                }
                .padding()
                .background(Color("primary"))
                .buttonStyle(PlainButtonStyle())
                .clipShape(RoundedRectangle(cornerRadius: 40))
            }
            .padding(.horizontal, 30)
        }
        .background(
            Image(place)
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all))
    }
    
}

struct DetialView_Previews: PreviewProvider {
    static var previews: some View {
        DetialView(place: .constant(""), show: .constant(true))
    }
}
