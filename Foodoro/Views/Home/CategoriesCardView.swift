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
                    .frame(width: 200, height: 220)
                    .foregroundColor(cardComponent.backgroundColor)
                
               
                Text(cardComponent.category)
                    .font(.title3)
                    .frame(width: 130)
                    .foregroundColor(.white)
                    .lineLimit(2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding(.leading)
                    .padding(.top, 30)
            }
        
            
            Image(cardComponent.image)
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 130)
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
