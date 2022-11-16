//
//  HeaderView.swift
//  Foodoro
//
//  Created by Hugo on 16.11.22.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            // MARK: Left side
            VStack(alignment: .leading) {
                // MARK: Greeting
                Text("Hello Hugo,")
                    .fontWeight(.bold)
                // MARK: Adress
                HStack(spacing: 5) {
                    Text("3891 Ranchview Dr. Richardson")
                        .fontWeight(.light)
                    Image(systemName: "chevron.down")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
            }
            
            Spacer()
            
            // MARK: Right side
            HStack {
                Image(systemName: "bell.badge.fill")
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color("AppGray"))
                    .clipShape(Circle())
                
                Image("User")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                    
            }
        }
        .fontDesign(.rounded)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            HeaderView()
                .padding(.horizontal)
            Spacer()
        }
        
    }
}
