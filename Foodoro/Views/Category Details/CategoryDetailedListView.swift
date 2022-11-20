//
//  CategoryDetailedListView.swift
//  Foodoro
//
//  Created by Hugo on 20.11.22.
//

import SwiftUI

struct CategoryDetailedListView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 20) {
                ForEach(0 ..< 4) { _ in
                    CategoryDetailedCardView()
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
