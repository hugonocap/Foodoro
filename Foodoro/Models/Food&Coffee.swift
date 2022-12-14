//
//  Food&Coffee.swift
//  Foodoro
//
//  Created by Hugo on 20.11.22.
//

import Foundation
import SwiftUI

struct FoodAndCoffee {
    let id = UUID()
    let image: String
    let logo: String
    let name: String
    let rating: String
    let fee: String
    let rateCount: Int
    let destination: Int
}

struct FoodAndCoffeeItems {
    static let restaurants = [
        // McDonalds
        FoodAndCoffee(image: "Mcdonalds",
                      logo: "McdonaldsLogo",
                      name: "McDonalds",
                      rating: "3.9",
                      fee: "1.00",
                      rateCount: 2734,
                      destination: 9),
        // KFC
        FoodAndCoffee(image: "Kfc",
                      logo: "KfcLogo",
                      name: "KFC",
                      rating: "3.6",
                      fee: "1.00",
                      rateCount: 1211,
                      destination: 10),
        // Starbucks
        FoodAndCoffee(image: "Starbucks",
                      logo: "StarbucksLogo",
                      name: "Starbucks",
                      rating: "4.4",
                      fee: "1.30",
                      rateCount: 2945,
                      destination: 16),
        // White Castle
        FoodAndCoffee(image: "WhiteCastle",
                      logo: "WhiteCastleLogo",
                      name: "White Castle",
                      rating: "4.0",
                      fee: "1.10",
                      rateCount: 1023,
                      destination: 26)
    ]
}
