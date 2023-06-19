//
//  MenuView2.swift
//  MyPizza
//
//  Created by Alisina on 19.06.23.
//

import SwiftUI

struct MenuView2: View {
    var menu:[MenuItem]
    @State private var selectedItem:MenuItem? = nil
    var body: some View {
        NavigationSplitView{
            List(menu, selection: $selectedItem){ item in
                NavigationLink(value: item){
                    MenuRowView(item: item)
                }
            }
        } detail: {
            MenuDetailView(item: $selectedItem)
        }
    }
}

struct MenuView2_Previews: PreviewProvider {
    static var previews: some View {
        MenuView2(menu: MenuModel().menu)
    }
}
