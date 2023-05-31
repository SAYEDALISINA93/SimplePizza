//
//  OrderView.swift
//  MyPizza
//
//  Created by Alisina on 30.05.23.
//

import SwiftUI

struct OrderView: View {
    var orders:[Int]
    var body: some View {
        VStack {
            HStack(alignment: .firstTextBaseline) {
                Text("Order Pizza")
                    .font(.title)
                Spacer()
                Label{
                    Text(59.99, format: .currency(code: "USD"))
                }
            icon: {
                Image(systemName: orders.isEmpty ? "cart" : "cart.circle.fill")
            }
            }
            .padding()
            .background(.ultraThinMaterial)
            
            ScrollView{
                ForEach(orders, id: \.self){ order in
                    OrderRowView(order: order)
                        .padding(.bottom, 5)
                        .padding([.leading, .trailing], 7)
                }
            }
        }
        .padding()
        .background(Color("Surf"))
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView(orders: [1, 2, 3, 4, 5, 6])
    }
}
