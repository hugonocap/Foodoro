//
//  CategoriesCarouselView.swift
//  Foodoro
//
//  Created by Hugo on 17.11.22.
//

import SwiftUI

struct CategoriesCarouselView: View {
    var card: [Categories] = CategoriesCarousel.categoryCard
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(card, id: \.id) { component in
                    CategoriesCardView(cardComponent: component)
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
