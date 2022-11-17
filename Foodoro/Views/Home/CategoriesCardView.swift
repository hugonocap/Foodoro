//
//  CategoriesCardView.swift
//  Foodoro
//
//  Created by Hugo on 17.11.22.
//

import SwiftUI

struct CategoriesCardView: View {
    var title: String
    var imageName: String
    var backgroundColor: Color
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ZStack(alignment: .topLeading) {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 200, height: 220)
                    .foregroundColor(backgroundColor)
                
               
                Text(title)
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(22)
            }
        
            
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 150)
                .offset(x: 50, y: 0)
                .clipped()
            
        }
        .fontDesign(.rounded)
        .cornerRadius(20)
    }
}

struct CategoriesCardView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesCardView(title: "Food & Coffee", imageName: "Food&Coffee", backgroundColor: .orange)
            .preferredColorScheme(.dark)
    }
}
