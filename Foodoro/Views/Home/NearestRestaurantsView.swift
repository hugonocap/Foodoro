//
//  NearestRestaurantsView.swift
//  Foodoro
//
//  Created by Hugo on 18.11.22.
//

import SwiftUI

struct NearestRestaurantsView: View {
    var body: some View {
        VStack {
            CarouselComponent(title: "Nearest Restaurants")
                .padding(.horizontal)
            
        }
        
    }
}

struct NearestRestaurantsView_Previews: PreviewProvider {
    static var previews: some View {
        NearestRestaurantsView()
            .preferredColorScheme(.dark)
    }
}
