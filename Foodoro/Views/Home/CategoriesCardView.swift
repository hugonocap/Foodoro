//
//  CategoriesCardView.swift
//  Foodoro
//
//  Created by Hugo on 17.11.22.
//

import SwiftUI

struct CategoriesCardView: View {
    var cardComponent: Categories
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ZStack(alignment: .topLeading) {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 180, height: 200)
                    .foregroundColor(cardComponent.backgroundColor)
                
               
                Text(cardComponent.category)
                    .padding(22)
                    .font(.title2)
                    .frame(width: 180, height: 100, alignment: .topLeading)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                    .fontWeight(.bold)
            }
        
            
            Image(cardComponent.image)
                .resizable()
                .scaledToFill()
                .frame(width: 180, height: 130)
                .offset(x: 50, y: 0)
                .clipped()
            
        }
        .fontDesign(.rounded)
        .cornerRadius(20)
    }
}

//struct CategoriesCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoriesCardView(cardComponent: Categories(image: , category: <#T##String#>, backgroundColor: <#T##Color#>))
//            .preferredColorScheme(.dark)
//    }
//}
