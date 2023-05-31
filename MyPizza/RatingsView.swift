//
//  RatingsView.swift
//  MyPizza
//
//  Created by Alisina on 30.05.23.
//

import SwiftUI

struct RatingsView: View {
    var rating: Int
    var body: some View {
        HStack{
            ForEach (1...6, id: \.self){ item in
                item <= rating ? Image(systemName: "fork.knife.circle.fill") : Image(systemName: "circle")
                
            }
        }
    }
}

struct RatingsView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsView(rating: 5)
    }
}
