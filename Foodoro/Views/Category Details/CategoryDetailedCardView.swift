//
//  CategoryDetailedCardView.swift
//  Foodoro
//
//  Created by Hugo on 20.11.22.
//

import SwiftUI

struct CategoryDetailedCardView: View {
    var body: some View {
        ZStack {
            ZStack(alignment: .top) {
                Color("AppGray")
                    .frame(width: .infinity, height: 240)
                    .cornerRadius(20)

                Image("Mcdonalds")
                    .resizable()
                    .scaledToFill()
                    .frame(width: .infinity, height: 120)
                    .clipped()
                    
                HStack {
                    Text("30 mins away")
                        .font(.caption)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .padding(7)
                        .background(.thickMaterial.opacity(0.6))
                        .clipShape(Capsule())
                    
                    Spacer()
                    
                    Image(systemName: "heart")
                }
                .padding()
            }
            
            ZStack(alignment: .center) {
                Image("Mcdonalds")
                    .resizable()
                    .frame(width: 84, height: 84)
                    .cornerRadius(.infinity)
                    .overlay {
                        Circle()
                            .stroke(Color("AppGray"), lineWidth: 7)
                    }
            }
            
        }
        .cornerRadius(20)
    }
    
    struct CategoryDetailedCardView_Previews: PreviewProvider {
        static var previews: some View {
            CategoryDetailedCardView()
                .padding(.horizontal)
        }
    }
}

struct CircleShape: View {
    var body: some View {
        Circle()
            .strokeBorder(.black)
    }
}
