//
//  StatusBarView.swift
//  MyPizza
//
//  Created by Alisina on 11.06.23.
//

import SwiftUI

struct StatusBarView: View {
    @EnvironmentObject var orders: OrderModel
    @Binding var showOrders: Bool
    var body: some View {
        HStack {
            Text("\(orders.orderItems.count) Orders")
            Spacer()
            Button{
                showOrders.toggle()
            } label: {
                Image(systemName: showOrders ? "cart" : "menucard")
                    .font(.title2)
            }
            Spacer()
            Label{
                Text(orders.orderTotal, format: .currency(code: "USD"))
            }
        icon: {
            Image(systemName: orders.orderItems.isEmpty ? "cart" : "cart.circle.fill")
        }
        
        }
        .foregroundStyle(.secondary)
        .font(.title2)
    }
}

struct StatusBarView_Previews: PreviewProvider {
    static var previews: some View {
        StatusBarView(showOrders: .constant(false)).environmentObject(OrderModel())
    }
}
