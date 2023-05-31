//
//  ContentView.swift
//  MyPizza
//
//  Created by Alisina on 30.05.23.
//

import SwiftUI

struct ContentView: View {
    var orders: [Int] = [1, 2, 3, 4, 5, 6]
    var showOrder: Bool = true
    var body: some View {
        VStack {
            HeaderView()
                .shadow(radius: 5)
            if showOrder{
                OrderView(orders: orders)
                    .cornerRadius(10)
            }else{
                MenuItemView()
                    .padding(5)
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
                MenuView()
            }
            Spacer()
        }
        .padding()
        .background(LinearGradient(colors: [ Color("Surf"), .green, Color("sky")], startPoint: .topLeading, endPoint: .bottom))

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




