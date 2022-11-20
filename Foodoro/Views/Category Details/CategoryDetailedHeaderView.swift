//
//  CategoryDetailedHeaderView.swift
//  Foodoro
//
//  Created by Hugo on 20.11.22.
//

import SwiftUI

struct CategoryDetailedHeaderView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        HStack {
            // back button
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                GeneralButton(icon: "chevron.left")
            }

            Spacer()
            // heading
            Text("Food & Coffee")
                .font(.title2)
                .fontWeight(.bold)
            
            Spacer()
            // search
            Button {
                //
            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.title2)
                    .foregroundColor(.white)
            }

        }
        .fontDesign(.rounded)
    }
}

struct CategoryDetailedHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CategoryDetailedHeaderView()
                .preferredColorScheme(.dark)
                .padding(.horizontal)
            
            Spacer()
        }
    }
}
