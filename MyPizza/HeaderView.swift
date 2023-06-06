//
//  HeaderView.swift
//  MyPizza
//
//  Created by Alisina on 30.05.23.
//

import SwiftUI

struct HeaderView: View {
    @EnvironmentObject var orders: OrderModel
    @Environment(\.verticalSizeClass) var vSizeClass: UserInterfaceSizeClass?
    var body: some View {
        VStack {
            if (vSizeClass ?? .regular) != .compact{
                ZStack(alignment: .bottomTrailing) {
                    Image("surfBanner")
                        .resizable()
                        .scaledToFit()
                        .ignoresSafeArea()
                    Text("MyPizza Company")
                        .font(.custom("Georgia", size: 30))
                        .foregroundStyle(.regularMaterial)
                        .fontWeight(.semibold)
                }
            }else{
                HStack(alignment: .bottom){
                    Image("surfBanner")
                        .resizable()
                        .scaledToFit()
                    Text("MyPizza Company")
                        .font(.custom("Georgia", size: 30))
                        .foregroundColor(Color("Surf"))
                        .fontWeight(.heavy)
                }
            }
            Label{
                Text(orders.orderTotal, format: .currency(code: "USD"))
            }
        icon: {
            Image(systemName: orders.orderItems.isEmpty ? "cart" : "cart.circle.fill")
        }
        }
        .background(.ultraThinMaterial)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView().environmentObject(OrderModel())
    }
}
