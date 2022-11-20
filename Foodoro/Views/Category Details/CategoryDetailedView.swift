//
//  CategoryDetailedView.swift
//  Foodoro
//
//  Created by Hugo on 20.11.22.
//

import SwiftUI

struct CategoryDetailedView: View {
    var body: some View {
        VStack {
            CategoryDetailedHeaderView()
            CategoryDetailedListView()
            Spacer()
        }
        .edgesIgnoringSafeArea(.bottom)
        .padding(.horizontal)
        .navigationBarBackButtonHidden(true)
    }
}

struct CategoryDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryDetailedView()
            .preferredColorScheme(.dark)
    }
}
