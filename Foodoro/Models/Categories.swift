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
                   backgroundColor: .orange),
        // groceries
        Categories(image: "Bread",
                   category: "Groceries",
                   backgroundColor: .purple),
        // chocolate
        Categories(image: "Chocolate",
                   category: "Chocolate & Diary Products",
                   backgroundColor: .green)
    ]
}
