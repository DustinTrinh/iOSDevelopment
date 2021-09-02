//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by Dustin Trinh on 2021-09-01.
//

import SwiftUI

@main
struct TouchDownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
