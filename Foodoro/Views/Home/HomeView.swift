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
        NavigationView {
            ZStack {
                ScrollView(showsIndicators: false) {
                    VStack {
                        VStack(spacing: 30) {
                            HeaderView()
                            SearchBar(text: $text)
                            DiscountBannerView()
                        }
                        .padding()
                        CategoriesView()
                        NearestRestaurantsView()
                        Spacer()
                    }
                }
                
            
            }
            .onTapGesture {
                hideKeyboard()
        }
        }
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(text: "")
            .preferredColorScheme(.dark)
    }
}

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
