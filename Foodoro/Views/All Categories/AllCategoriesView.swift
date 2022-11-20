//
//  AllCategoriesView.swift
//  Foodoro
//
//  Created by Hugo on 19.11.22.
//

import SwiftUI

struct AllCategoriesView: View {
    var card: [Categories] = AllCategories.categoryCard
    var body: some View {
            VStack {
                    AllCategoriesHeaderView()
                    ScrollView(showsIndicators: false) {
                        Grid(verticalSpacing: 20) {
                            // first row
                            GridRow {
                                NavigationLink {
                                    CategoryDetailedView()
                                } label: {
                                    CategoriesCardView(cardComponent: card[0])
                                        .gridColumnAlignment(.trailing)
                                }
                                
                                CategoriesCardView(cardComponent: card[1])
                                    .gridColumnAlignment(.leading)
                            }
                            // second row
                            GridRow {
                                CategoryWideCardView(cardComponent: card[3])
                                    .gridColumnAlignment(.leading)
                            }
                            .gridCellColumns(2)
                            // third row
                            GridRow {
                                CategoriesCardView(cardComponent: card[4])
                                    .gridColumnAlignment(.trailing)
                                CategoriesCardView(cardComponent: card[5])
                                    .gridColumnAlignment(.leading)
                            }
                            // fourth row
                            GridRow {
                                CategoryWideCardView(cardComponent: card[2])
                                    .gridColumnAlignment(.leading)
                            }
                            .gridCellColumns(2)
                        }
                    }
                    
                    Spacer()
                }
                .edgesIgnoringSafeArea(.bottom)
                .padding(.horizontal)
                .navigationBarBackButtonHidden(true)
        }
}

struct AllCategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        AllCategoriesView()
            .preferredColorScheme(.dark)
    }
}
