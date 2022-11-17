//
//  CategoriesCarouselView.swift
//  Foodoro
//
//  Created by Hugo on 17.11.22.
//

import SwiftUI

struct CategoriesCarouselView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(0 ..< 5) { _ in
                    CategoriesCardView(title: "Food & Coffee", imageName: "Food&Coffee", backgroundColor: .orange)
                }
            }
            .padding(.horizontal)
        }
    }
}

struct CategoriesCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesCarouselView()
            .preferredColorScheme(.dark)
    }
}
