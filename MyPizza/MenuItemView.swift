//
//  MenuItemView.swift
//  MyPizza
//
//  Created by Alisina on 30.05.23.
//

import SwiftUI

struct MenuItemView: View {
    var body: some View {
        VStack{
            HStack {
                Text("Margherita Huli Pizza")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.ultraThickMaterial)
                    .padding(.leading)

                if let image = UIImage(named: "0a_lg"){
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .padding([.top, .bottom], 5)
                    //                    .clipShape(RoundedRectangle(cornerRadius: 10))
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
            VStack(alignment: .leading){

                ScrollView {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo odio et mi iaculis posuere. Nam cursus aliquam enim, non venenatis lectus dapibus et. Nulla consectetur, leo non molestie condimentum, magna lectus auctor erat, et tincidunt mauris eros vitae leo. Ut viverra nunc ac ligula tempor euismod. Proin at risus.")
                        .font(.custom("Geogia", size: 18, relativeTo: .body))
                }
            }
        }
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView()
    }
}
