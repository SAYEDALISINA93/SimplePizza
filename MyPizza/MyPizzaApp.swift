//
//  MyPizzaApp.swift
//  MyPizza
//
//  Created by Alisina on 30.05.23.
//

import SwiftUI

@main
struct MyPizzaApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(menu: MenuModel().menu)
        }
    }
}
