//
//  MenuGridView.swift
//  MyPizza
//
//  Created by Alisina on 11.06.23.
//

import SwiftUI

struct MenuGridView: View {
    var menu: [MenuItem]
    @State var selectedItem:MenuItem = noMenuItem
    let columnLayout = Array(repeating: GridItem(), count: 3)
    var body: some View {
        VStack {
            Text(selectedItem.name)
            ScrollView {
                LazyVGrid(columns: columnLayout) {
                    ForEach(menu) { item in
                        MenuItemTileView(menuItem: item)
                            .onTapGesture {
                                selectedItem = item
                            }
                            .onLongPressGesture() {
                                selectedItem = noMenuItem
                            }
                    }
                }
            }
        }
    }
}

struct MenuGridView_Previews: PreviewProvider {
    static var previews: some View {
        MenuGridView(menu: MenuModel().menu)
    }
}
