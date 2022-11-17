//
//  DiscountBannerView.swift
//  Foodoro
//
//  Created by Hugo on 17.11.22.
//

import SwiftUI

struct DiscountBannerView: View {
    var body: some View {
        Button {
            
        } label: {
            ZStack {
                Image("Pasta")
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity)
                    .frame(height: 120)
                    .cornerRadius(20)
                    .clipped()
                
                HStack {
                    VStack(alignment: .leading, spacing: 6) {
                        VStack(alignment: .leading) {
                            Text("Get the Best Food")
                            Text("at Afforable Prices")
                        }
                        .fontWeight(.semibold)
                        Text("Grab a 20% Discount")
                            .font(.caption)
                            .opacity(0.8)
                    }
                    .padding()
                    .foregroundColor(.white)
                    
                    Spacer()
                    
                }
                
            }
        }

    }
}

struct DiscountBannerView_Previews: PreviewProvider {
    static var previews: some View {
        DiscountBannerView()
            .padding(.horizontal)
    }
}
