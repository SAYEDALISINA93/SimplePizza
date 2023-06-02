//
//  MenuItemView.swift
//  MyPizza
//
//  Created by Alisina on 30.05.23.
//

import SwiftUI

struct MenuItemView: View {
    @State private var addedItem: Bool = false
    @Binding var item: MenuItem
    @ObservedObject var orders: OrderModel
    var body: some View {
        VStack{
            HStack {
                Text(item.name)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.ultraThickMaterial)
                    .padding(.leading)
                
                if let image = UIImage(named: "\(item.id)_lg"){
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .padding([.top, .bottom], 5)
                        .cornerRadius(15)
                    
                }else{
                    Image("surfboard_lg")
                        .resizable()
                        .scaledToFit()
                        .rotationEffect(.degrees(180))
                }
            }
            .background(.linearGradient(colors: [Color("Surf"), Color("sky").opacity(0.1)], startPoint: .leading, endPoint: .trailing), in: Capsule())
            .shadow(color: .mint, radius: 5, x: 8, y: 8)
            
            VStack(alignment: .center) {
                VStack(alignment: .leading){
                    ScrollView {
                        Text(item.description)
                            .font(.custom("Geogia", size: 18, relativeTo: .body))
                    }
                }
                
                Button{
                    addedItem = !addedItem
                    orders.addOrder(item, quantity: 1)
                }label: {
                    Spacer()
                    HStack(alignment:.center){
                        Text(item.price, format: .currency(code: "USD"))
                            .fontWeight(.semibold)
                            .foregroundStyle(.ultraThickMaterial)
                        
                        Image(systemName: addedItem ? "cart.fill.badge.plus" : "cart.badge.plus")
                            .foregroundStyle(.ultraThickMaterial)
                    }
                    .padding(10)
                    Spacer()
                }
                .disabled(item.id < 0)
                .cornerRadius(10)
                .background(.red.opacity(0.5), in: Capsule())
                .shadow(color: .gray, radius: 10, x: 2, y: 2)
            }
        }
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView(item: .constant(testMenuItem), orders: OrderModel())
    }
}
