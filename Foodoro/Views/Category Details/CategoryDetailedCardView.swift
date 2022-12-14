//
//  CategoryDetailedCardView.swift
//  Foodoro
//
//  Created by Hugo on 20.11.22.
//

import SwiftUI

struct CategoryDetailedCardView: View {
    @State private var isActive: Bool = false
    var cardComponent: FoodAndCoffee
    var body: some View {
        Button {
            //
        } label: {
            ZStack(alignment: .center) {
                ZStack (alignment: .bottom) {
                    ZStack(alignment: .top) {
                        Button {
                            
                        } label: {
                            Color("AppGray")
                                .frame(width: .infinity, height: 240)
                                .cornerRadius(20)
                        }
                        
                        Image(cardComponent.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: .infinity, height: 120)
                            .clipped()
                        
                        HStack {
                            Text("\(cardComponent.destination) mins away")
                                .font(.caption)
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                                .padding(7)
                                .background(.thickMaterial.opacity(0.6))
                                .clipShape(Capsule())
                            
                            Spacer()
                            
                            Button {
                                isActive.toggle()
                            } label: {
                                if isActive {
                                    Image(systemName: "heart.fill")
                                        .font(.title)
                                        .foregroundColor(Color("AppPink"))
                                } else {
                                    Image(systemName: "heart")
                                        .font(.title)
                                        .foregroundColor(.white)
                                }
                            }
                            
                        }
                        .padding()
                    }
                    
                    ZStack(alignment: .bottom) {
                        HStack {
                            VStack(alignment: .leading) {
                                // name
                                Text(cardComponent.name)
                                    .font(.title3)
                                    .fontWeight(.bold)
                                // rating
                                HStack(spacing: 5) {
                                    HStack(spacing: 0) {
                                        Image(systemName: "star.fill")
                                        Text(cardComponent.rating)
                                    }
                                    .foregroundColor(.yellow)
                                    
                                    Text("(\(cardComponent.rateCount))")
                                        .opacity(0.6)
                                }
                                .fontWeight(.semibold)
                            }
                            Spacer()
                            VStack(alignment: .trailing) {
                                // fee price
                                Text("$\(cardComponent.fee)")
                                    .fontWeight(.bold)
                                // delivery fee text
                                Text("Delivery Fee")
                                    .fontWeight(.medium)
                            }
                        }
                        .padding(.horizontal)
                        .foregroundColor(.white)
                    }
                    .padding(.bottom)
                }
                
                ZStack(alignment: .center) {
                    Image(cardComponent.logo)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 84, height: 84)
                        .cornerRadius(.infinity)
                        .overlay {
                            Circle()
                                .stroke(Color("AppGray"), lineWidth: 7)
                        }
                }
                
            }
            .cornerRadius(20)
            .fontDesign(.rounded)
        }
    }
    
}

//struct CategoryDetailedCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoryDetailedCardView()
//            .preferredColorScheme(.dark)
//            .padding(.horizontal)
//    }
//}
