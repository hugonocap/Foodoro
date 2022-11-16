//
//  SearchBar.swift
//  Foodoro
//
//  Created by Hugo on 16.11.22.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @State private var isEditing: Bool = false
    var body: some View {
        HStack {
            TextField("Search For Food", text: $text)
                .padding(15)
                .padding(.horizontal, 30)
                .background(Color("AppGray"))
                .foregroundColor(.gray)
                .cornerRadius(8)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading)
                        
                        if isEditing {
                            Button {
                                self.text = ""
                            } label: {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 8)
                            }

                        }
                    }
                    
                )
                .onTapGesture {
                    isEditing = true
                }
        }
    }
}


