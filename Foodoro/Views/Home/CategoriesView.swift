//
//  CategoriesView.swift
//  Foodoro
//
//  Created by Hugo on 17.11.22.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        VStack {
            CarouselComponent(title: "Categories")
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
            .preferredColorScheme(.dark)
    }
}
