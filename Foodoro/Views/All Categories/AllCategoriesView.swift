//
//  AllCategoriesView.swift
//  Foodoro
//
//  Created by Hugo on 19.11.22.
//

import SwiftUI

struct AllCategoriesView: View {
    var body: some View {
        VStack {
            AllCategoriesHeaderView()
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct AllCategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        AllCategoriesView()
            .preferredColorScheme(.dark)
    }
}
