//
//  CategoriesView.swift
//  Foodoro
//
//  Created by Hugo on 17.11.22.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        VStack(spacing: 30) {
            CarouselComponent(title: "Categories")
                .padding(.horizontal)
            CategoriesCarouselView()
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
            .preferredColorScheme(.dark)
    }
}
