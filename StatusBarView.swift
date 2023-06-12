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
    @Binding var presentGrid: Bool
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

            if !showOrders {
                Button{
                    presentGrid.toggle()
                } label: {
                    Image(systemName: presentGrid ? "square.grid.3x2" : "list.bullet")
                        .font(.title2)
                }
            .padding(.leading, 10)
            }
            Spacer()
            Label{
                Text(orders.orderTotal, format: .currency(code: "USD"))
            }
        icon: {
            Image(systemName: orders.orderItems.isEmpty ? "cart" : "cart.circle.fill")
        }
        
        }
        .foregroundStyle(.white)
        .font(.title2)
    }
}

struct StatusBarView_Previews: PreviewProvider {
    static var previews: some View {
        StatusBarView(showOrders: .constant(false), presentGrid: .constant(true)).environmentObject(OrderModel())
            .background(.black)
    }
}
