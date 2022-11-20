//
//  CategoryDetailedListView.swift
//  Foodoro
//
//  Created by Hugo on 20.11.22.
//

import SwiftUI

struct CategoryDetailedListView: View {
    var card: [FoodAndCoffee] = FoodAndCoffeeItems.restaurants
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 20) {
                ForEach(card, id: \.id) { component in
                    CategoryDetailedCardView(cardComponent: component)
                }
            }
        }
        
    }
}

struct CategoryDetailedListView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryDetailedListView()
            .preferredColorScheme(.dark)
    }
}
