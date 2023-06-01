//
//  ContentView.swift
//  MyPizza
//
//  Created by Alisina on 30.05.23.
//

import SwiftUI

struct ContentView: View {
    var menu: [MenuItem]
    @State private var orders: [OrderItem] = testOrders
    @State private var showOrder: Bool = false
    @State private var selectedItem: MenuItem = noMenuItem
    var body: some View {
        VStack {
            HeaderView()
                .shadow(radius: 5)
            HStack {
                Text("\(orders.count) Orders")
                Spacer()
                Button{
                    showOrder.toggle()
                } label: {
                    Image(systemName: showOrder ? "cart" : "menucard")
                        .font(.title2)
                }
            
            }
            .foregroundStyle(.secondary)
            .font(.title2)
            if showOrder{
                OrderView(orders: $orders)
                    .cornerRadius(10)
            }else{
                MenuItemView(item: $selectedItem)
                    .padding(5)
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
                MenuView(menu: menu, selectedItem: $selectedItem)
            }
            Spacer()
        }
        .padding()
        .background(LinearGradient(colors: [ Color("Surf"), .green, Color("sky")], startPoint: .topLeading, endPoint: .bottom))

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(menu: MenuModel().menu)
    }
}




