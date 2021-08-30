//
//  FruitiesApp.swift
//  Fruities
//
//  Created by Dustin Trinh on 2021-08-23.
//

import SwiftUI

@main
struct FruitiesApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if(isOnboarding){
                OnboardingView()
            }
            else{
                ContentView()
            }
            
        }
    }
}
