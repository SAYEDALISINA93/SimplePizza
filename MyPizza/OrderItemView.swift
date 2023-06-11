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
    @State var pizzaCrust: PizzaCrust
    @State private var name:String = ""
    @State private var comments:String = ""
    init(orderItem: Binding<OrderItem>){
        self._orderItem = orderItem
        self.pizzaCrust = orderItem.item.crust.wrappedValue
    }
    
    var body: some View {
        VStack{
            TextField("Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Toggle(isOn: $doubleIngredient) {
                Text("Double Ingredients " + (doubleIngredient ? "Yes" : "No"))
                Stepper(value: $quantity, in: 1...10){
                    Text("\(quantity) " + (quantity == 1 ? "Pizza" : "Pizzas"))
                }
            }
            Picker(selection: $pizzaCrust) {
                ForEach(PizzaCrust.allCases, id: \.self){ crust in
                    Text(crust.rawValue).tag(crust)
                }
            } label: {
                Text("Pizza Crust")
            }
            .pickerStyle(MenuPickerStyle())
            VStack {
                Text("Comments")
                    .foregroundStyle(.secondary)
                TextEditor(text: $comments)
            }
            .clipShape(RoundedRectangle(cornerRadius: 3))
            .shadow(radius: 1)
            Spacer()
            
        }
        .padding()
    }
    
}

struct OrderItemView_Previews: PreviewProvider {
    static var previews: some View {
        OrderItemView(orderItem: .constant(testOrderItem))
    }
}
