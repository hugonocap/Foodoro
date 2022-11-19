//
//  AllCategoriesHeaderView.swift
//  Foodoro
//
//  Created by Hugo on 19.11.22.
//

import SwiftUI

struct AllCategoriesHeaderView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
    
            HStack(spacing: 0) {
                    
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    GeneralButton(icon: "chevron.left")
                }

                    
                    Spacer()
                    
                    Text("All Categories")
                        .font(.title2)
                        .fontWeight(.bold)
                        .fontDesign(.rounded)
                        .padding(.trailing, 30)
                       
                        
                    Spacer()
            }
        }
}

struct AllCategoriesHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            AllCategoriesHeaderView()
                .preferredColorScheme(.dark)
                .padding(.horizontal)
            
            Spacer()
        }
           
    }
}
