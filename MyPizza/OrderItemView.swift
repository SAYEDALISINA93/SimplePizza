//
//  OrderItemView.swift
//  MyPizza
//
//  Created by Alisina on 11.06.23.
//

import SwiftUI

struct OrderItemView: View {
    @Binding var orderItem: OrderItem
    @State private var quantity = 1
    @State private var doubleIngredient = false
    
    var body: some View {
        VStack{
            Toggle(isOn: $doubleIngredient) {
                Text("Double Ingredients " + (doubleIngredient ? "Yes" : "No"))
                Stepper(value: $quantity, in: 1...10){
                    Text("\(quantity) " + (quantity == 1 ? "Pizza" : "Pizzas"))
                }
            }
        }
    }
}

struct OrderItemView_Previews: PreviewProvider {
    static var previews: some View {
        OrderItemView(orderItem: .constant(testOrderItem))
    }
}
