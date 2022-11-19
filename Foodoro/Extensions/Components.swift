//
//  Components.swift
//  Foodoro
//
//  Created by Hugo on 17.11.22.
//

import Foundation
import SwiftUI

// MARK: Carousel component
struct CarouselComponent: View {
    var title: String
    var body: some View {
        HStack {
            // MARK: Component name
            Text(title)
                .foregroundColor(.white)
                .font(.title2)
                .fontWeight(.bold)
            
            Spacer()
            
            // MARK: See all button
                Text("See All")
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .opacity(0.8)
        
        }
        .fontDesign(.rounded)
    }
}

struct GeneralButton: View {
    var icon: String
    var body: some View {
        Image(systemName: icon)
            .foregroundColor(.white)
            .padding(10)
            .background(Color("AppGray"))
            .clipShape(Circle())
    }
}


// MARK: Preview
struct Components_Previews: PreviewProvider {
    static var previews: some View {
        CarouselComponent(title: "Categories")
            .preferredColorScheme(.dark)
            .padding(.horizontal)
    }
}
