//
//  CategoryWideCardView.swift
//  Foodoro
//
//  Created by Hugo on 19.11.22.
//

import SwiftUI

struct CategoryWideCardView: View {
    var cardComponent: Categories
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ZStack(alignment: .topLeading) {
                RoundedRectangle(cornerRadius: 20)
                    .frame(maxWidth: .infinity)
                    .frame(height: 180)
                    .foregroundColor(cardComponent.backgroundColor)
                
               
                Text(cardComponent.category)
                    .padding(22)
                    .foregroundColor(.white)
                    .font(.title2)
                    .frame(width: 200, height: 100, alignment: .topLeading)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                    .fontWeight(.bold)
            }
        
            
            Image(cardComponent.image)
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 180)
                .offset(x: 50, y: 0)
                .clipped()
            
        }
        .fontDesign(.rounded)
        .cornerRadius(20)
    }
}

//struct CategoryWideCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoryWideCardView()
//            .padding(.horizontal)
//    }
//}
