//
//  MenuView.swift
//  MyPizza
//
//  Created by Alisina on 30.05.23.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        ScrollView{
            ForEach(1...25, id:\.self){ item in
                MenuRowView(item: item)
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}





