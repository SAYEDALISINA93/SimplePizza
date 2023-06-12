//
//  ContentView.swift
//  MyPizza
//
//  Created by Alisina on 30.05.23.
//

import SwiftUI

struct ContentView: View {
    var menu: [MenuItem]
    @StateObject var orders: OrderModel = OrderModel()
    @State private var showOrders: Bool = false
    @State private var selectedItem: MenuItem = noMenuItem
    @State private var presentGrid:Bool = true
    var body: some View {
        VStack {
            HeaderView()
                .shadow(radius: 5)
                .environment(\.colorScheme, .light)
            StatusBarView(showOrders: $showOrders, presentGrid: $presentGrid)
            if showOrders{
                OrderView(orders: orders)
                    .cornerRadius(10)
            }else{
                MenuItemView(item: $selectedItem, orders: orders)
                    .padding(5)
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
                if presentGrid {
                    MenuGridView(menu: menu, selectedItem: $selectedItem)
                }else{
                    MenuView(menu: menu, selectedItem: $selectedItem)
                }
            }
            Spacer()
        }
        .padding()
        .background(LinearGradient(colors: [ Color("Surf"), .green, Color("sky")], startPoint: .topLeading, endPoint: .bottom))
        .environmentObject(orders)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(menu: MenuModel().menu)
    }
}




