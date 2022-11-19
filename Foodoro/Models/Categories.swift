//
//  Categories.swift
//  Foodoro
//
//  Created by Hugo on 18.11.22.
//

import Foundation
import SwiftUI

struct Categories: Identifiable {
    let id = UUID()
    let image: String
    let category: String
    let backgroundColor: Color
}

struct CategoriesCarousel {
    static let categoryCard  = [
        // food and coffee
        Categories(image: "Food&Coffee",
                   category: "Food & Coffee",
                   backgroundColor: Color("AppOrange")),
        // groceries
        Categories(image: "Bread",
                   category: "Groceries",
                   backgroundColor: Color("AppPurple")),
        // chocolate
        Categories(image: "Chocolate",
                   category: "Chocolate & Diary Products",
                   backgroundColor: Color("AppGreen"))
    ]
}

struct AllCategories {
    static let categoryCard = [
        // food and coffee
        Categories(image: "Food&Coffee",
                   category: "Food & Coffee",
                   backgroundColor: Color("AppOrange")),
        // groceries
        Categories(image: "Bread",
                   category: "Groceries",
                   backgroundColor: Color("AppPurple")),
        // chocolate
        Categories(image: "Chocolate",
                   category: "Chocolate & Diary Products",
                   backgroundColor: Color("AppGreen")),
        // supermarket
        Categories(image: "Supermarket",
                   category: "Supermarket",
                   backgroundColor: Color("AppBlue")),
        // pharmacy
        Categories(image: "Pharmacy",
                   category: "Pharmacy",
                   backgroundColor: Color("AppRed")),
        // bakery
        Categories(image: "Bakery",
                   category: "Bakery",
                   backgroundColor: Color("AppPink"))
    ]
}
