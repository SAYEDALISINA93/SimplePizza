//
//  OrderView.swift
//  MyPizza
//
//  Created by Alisina on 30.05.23.
//

import SwiftUI

struct OrderView: View {
    @ObservedObject var orders:OrderModel
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                
                ScrollView{
                    ForEach($orders.orderItems){ order in
//                        Text(order.item.name)
                        OrderRowView(order: order)
                            .padding(4)
                            .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 10.0))
                            .shadow(radius: 10)
                            .padding(.bottom, 5)
                            .padding([.leading, .trailing], 7)
                    }
                }
                .padding(.top, 70)
                HStack(alignment: .firstTextBaseline) {
                    Text("Order Pizza")
                        .font(.title)
                    Spacer()
                    Label{
                        Text(orders.orderTotal, format: .currency(code: "USD"))
                    }
                icon: {
                    Image(systemName: orders.orderItems.isEmpty ? "cart" : "cart.circle.fill")
                }
                }
                .padding()
                .background(.ultraThinMaterial)
            }
            .padding()
            Button("Delete Order"){
                if !orders.orderItems.isEmpty{orders.removeLast()}
            }
            .padding(5)
            .background(.regularMaterial, in:Capsule())
            .padding(7)
        }
        .background(Color("Surf"))
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView(orders: OrderModel())
    }
}
