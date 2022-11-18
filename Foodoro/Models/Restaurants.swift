//
//  Restaurants.swift
//  Foodoro
//
//  Created by Hugo on 18.11.22.
//

import Foundation
import SwiftUI

struct Restaurants {
    let id = UUID()
    let name: String
    let rating: String
    let image: String
    let destination: Int
}

struct RestaurantCard {
    static let cards = [
        Restaurants(name: "Starbelly",
                    rating: "4.6",
                    image: "Restaurant1",
                    destination: 26),
        Restaurants(name: "Nopa",
                    rating: "4.0",
                    image: "Restaurant2",
                    destination: 12),
        Restaurants(name: "Tartine Manufactory",
                    rating: "4.3",
                    image: "Restaurant3",
                    destination: 32)
    ]
}
