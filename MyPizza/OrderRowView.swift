//
//  OrderRowView.swift
//  MyPizza
//
//  Created by Alisina on 30.05.23.
//

import SwiftUI

struct OrderRowView: View {
    var order: Int
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Your order item: \(order)")
            HStack {
                
                Text("\(1) @ \(Text(19.90, format: .currency(code: "USD")))")
                Spacer()
                Text(19.90, format: .currency(code: "USD"))
                    .fontWeight(.semibold)
            }
            
            
        }
        .padding()
        .background(.regularMaterial)
        .cornerRadius(10)
        .shadow(radius: 10)
        
        
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(order: 1)
    }
}
