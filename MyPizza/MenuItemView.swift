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
            if let image = UIImage(named: "0_lg"){
                Image(uiImage: image)
//                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .cornerRadius(10)
            }else{
                Image("surfboard_lg")
            }
            VStack(alignment: .leading){
                Text("Margherita")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("MySurfColor"))
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
