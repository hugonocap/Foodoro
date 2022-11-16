//
//  HomeView.swift
//  Foodoro
//
//  Created by Hugo on 16.11.22.
//

import SwiftUI

struct HomeView: View {
    @State var text: String
    var body: some View {
        VStack {
            HeaderView()
            SearchBar(text: $text)
            Spacer()
        }
        .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(text: "")
            .preferredColorScheme(.dark)
    }
}
