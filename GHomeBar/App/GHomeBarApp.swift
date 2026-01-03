//
//  GHomeBarApp.swift
//  GHomeBar
//
//  Created by Paolo Rotolo on 02.01.26.
//

import SwiftUI

@main
struct GHomeBarApp: App {
    @StateObject var store = WebViewModel(url: URL(string: "https://home.google.com")!)
    
    var body: some Scene {
        MenuBarExtra("GHomeBar", systemImage: "house.fill") {
            ContentView(store: store)
                .frame(width: 400, height: 600)
        }
        .menuBarExtraStyle(.window)
    }
}
