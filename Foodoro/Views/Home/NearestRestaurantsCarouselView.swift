//
//  NearestRestaurantsCarouselView.swift
//  Foodoro
//
//  Created by Hugo on 18.11.22.
//

import SwiftUI

struct NearestRestaurantsCarouselView: View {
    var card: [Restaurants] = RestaurantCard.cards
    var body: some View {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 25) {
                    ForEach(card, id: \.id) { component in
                        NearestRestaurantsCardView(cardComponent: component)
                    }
                }
                .padding(.leading)
            }
    }
}

struct NearestRestaurantsCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        NearestRestaurantsCarouselView()
            .preferredColorScheme(.dark)
    }
}
