//
//  NearestRestaurantsCardView.swift
//  Foodoro
//
//  Created by Hugo on 18.11.22.
//

import SwiftUI

struct NearestRestaurantsCardView: View {
    var body: some View {
        VStack(spacing: 10) {
            ZStack(alignment: .topTrailing) {
                Image("Restaurant1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 260)
                    .cornerRadius(20)
                
                Text("30 Mins Away")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .padding(7)
                    .background(.thickMaterial.opacity(0.6))
                    .clipShape(Capsule())
                    .padding()
                
            }
            HStack {
                Text("Restaurant Name")
                    .lineLimit(1)
                
                Spacer()
                
                HStack(spacing: 2) {
                    Image(systemName: "star")
                        .renderingMode(.original)
                    
                    Text("4.6")
                }
            }
            .font(.callout)
            .fontWeight(.medium)
        }
        .frame(width: 200, height: 300)
        .fontDesign(.rounded)
    }
}

struct NearestRestaurantsCardView_Previews: PreviewProvider {
    static var previews: some View {
        NearestRestaurantsCardView()
            .preferredColorScheme(.dark)
    }
}
