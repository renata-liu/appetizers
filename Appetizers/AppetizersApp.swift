//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Renata Liu on 2025-04-19.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView()
                .environmentObject(order)
        }
    }
}
